const mysql = require("mysql");
const pool = require("../sql/connection");
const { handleSQLError } = require("../sql/error");

const getAllUsersCredentials = (req, res) => {
  console.log("inside get all usersCredentials route");
  // SELECT ALL USERS
  let sql = "SELECT * FROM ??";
  sql = mysql.format(sql, ["usersCredentials"]);

  pool.query(sql, (err, rows) => {
    if (err) return handleSQLError(res, err);
    return res.json(rows);
  });
};

const getUsersCredentialsById = (req, res) => {
  // SELECT USERS WHERE ID = <REQ PARAMS ID>
  let id = req.params.id;
  try {
    let sql = "SELECT * FROM ?? WHERE ?? = ?";
    sql = mysql.format(sql, ["usersCredentials", "id", +id]);

    pool.query(sql, (err, rows) => {
      if (err) return handleSQLError(res, err);
      if (rows.length === 0) {
        res
          .status(500)
          .send(`Uh oh, we couldn't find a specific item with id ${id}`);
        return;
      }
      return res.json(rows);
    });
  } catch (e) {
    return handleSQLError;
  }
};

const createUsersCredentials = (req, res) => {
  // INSERT INTO USERS FIRST AND LAST
  const { username, password } = req.body;
  let sql = "INSERT INTO ?? VALUES (null, ?, ?)";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, ["usersCredentials", username, password]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.send({ newId: results.insertId });
  });
};

const updateUsersCredentialsById = (req, res) => {
  // UPDATE USERS AND SET FIRST AND LAST NAME WHERE ID = <REQ PARAMS ID>
  const { id } = req.params;
  const { body } = req;
  let sql = "UPDATE ?? SET ? WHERE ?? = ?;";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, ["usersCredentials", body, "id", id]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.send({
      affectedRows: results.affectedRows,
      message: results.message,
    });
  });
};

const deleteUsersCredentialsById = (req, res) => {
  // DELETE FROM USERS WHERE FIRST NAME = <REQ PARAMS FIRST_NAME>
  const { id } = req.params;
  let sql = "DELETE FROM ?? WHERE ?? = ?;";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, ["usersCredentials", "id", id]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.send({ message: `Deleted ${results.affectedRows} user(s)` });
  });
};

module.exports = {
  getAllUsersCredentials,
  getUsersCredentialsById,
  createUsersCredentials,
  updateUsersCredentialsById,
  deleteUsersCredentialsById,
};
