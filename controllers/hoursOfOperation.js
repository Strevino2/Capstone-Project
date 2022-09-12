const mysql = require("mysql");
const pool = require("../sql/connection");
const { handleSQLError } = require("../sql/error");

const getAllHoursOfOperation = (req, res) => {
  console.log("inside get all hoursOfOperation route");
  // SELECT ALL USERS
  let sql = "SELECT * FROM ??";
  sql = mysql.format(sql, ["hoursOfOperation"]);

  pool.query(sql, (err, rows) => {
    if (err) return handleSQLError(res, err);
    return res.json(rows);
  });
};

const getHoursOfOperationById = (req, res) => {
  // SELECT USERS WHERE ID = <REQ PARAMS ID>
  let id = req.params.id;
  try {
    let sql = "SELECT * FROM ?? WHERE ?? = ?";
    sql = mysql.format(sql, ["hoursOfOperation", "id", +id]);

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

const createHoursOfOperation = (req, res) => {
  // INSERT INTO USERS FIRST AND LAST
  const { dining_room, day, startHours, endHours } = req.body;
  let sql = "INSERT INTO ?? VALUES (null, ?, ?, ?, ?)";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, [
    "hoursOfOperation",
    dining_room,
    day,
    startHours,
    endHours,
  ]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.json({ newId: results.insertId });
  });
};

const updateHoursOfOperationById = (req, res) => {
  // UPDATE USERS AND SET FIRST AND LAST NAME WHERE ID = <REQ PARAMS ID>
  const { id } = req.params;
  const { body } = req;
  let sql = "UPDATE ?? SET ? WHERE ?? = ?;";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, ["hoursOfOperation", body, "id", id]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.json({
      affectedRows: results.affectedRows,
      message: results.message,
    });
  });
};

const deleteHoursOfOperationById = (req, res) => {
  // DELETE FROM USERS WHERE FIRST NAME = <REQ PARAMS FIRST_NAME>
  const { id } = req.params;
  let sql = "DELETE FROM ?? WHERE ?? = ?;";
  // WHAT GOES IN THE BRACKETS
  sql = mysql.format(sql, ["hoursOfOperation", "id", id]);

  pool.query(sql, (err, results) => {
    if (err) return handleSQLError(res, err);
    return res.json({ message: `Deleted ${results.affectedRows} user(s)` });
  });
};

module.exports = {
  getAllHoursOfOperation,
  getHoursOfOperationById,
  createHoursOfOperation,
  updateHoursOfOperationById,
  deleteHoursOfOperationById,
};
