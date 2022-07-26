const mysql = require("mysql");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const pool = require("../sql/connection");
const { handleSQLError } = require("../sql/error");

require("dotenv").config();

// for bcrypt
const saltRounds = 10;

const signup = (req, res) => {
  const { username, password } = req.body;
  let sql = "INSERT INTO usersCredentials (username, password) VALUES (?, ?)";

  bcrypt.hash(password, saltRounds, function (err, hash) {
    sql = mysql.format(sql, [username, hash]);

    pool.query(sql, (err, result) => {
      if (err) {
        if (err.code === "ER_DUP_ENTRY")
          return res.status(409).send("Username is taken");
        return handleSQLError(res, err);
      }
      return res.send("Sign-up successful");
    });
  });
};

function authenticateToken(req, res, next) {
  const authHeader = req.headers.authorization;
  const token = authHeader && authHeader.split(" ")[1];
  if (!token) return res.sendStatus(401);
  jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
    if (err) return res.sendStatus(401);
    console.log(decoded);
    req.id = decoded.id;
    req.username = decoded.username;
    next();
  });
}

const login = (req, res) => {
  const { username, password } = req.body;

  let sql = "SELECT * FROM usersCredentials WHERE username = ?";
  sql = mysql.format(sql, [username]);

  pool.query(sql, (err, rows) => {
    if (err) return handleSQLError(res, err);
    if (!rows.length) return res.status(404).send({ msg: "Wrong Username" });

    const hash = rows[0].password;
    bcrypt.compare(password, hash).then((result) => {
      if (!result) return res.status(400).send({ msg: "Wrong password" });

      const data = { ...rows[0] };
      data.password = "REDACTED";

      const token = jwt.sign(data, process.env.JWT_SECRET);
      res.json({
        msg: "Login successful",
        token: token,
      });
    });
  });
};

module.exports = {
  signup,
  authenticateToken,
  login,
};
