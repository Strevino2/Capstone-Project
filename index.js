const express = require("express");
// require("dotenv").config()
const app = express();
const port = process.env.PORT || 4004;
const usersRoute = require("./routers/users");
const hoursOfOperationRoute = require("./routers/hoursOfOperation.js");
const menuRoute = require("./routers/menu");

app.use(express.json());
app.use(usersRoute, hoursOfOperationRoute, menuRoute);

app.get("/", (req, res) => {
  res.send("Welcome to my Capstone Project server!");
});

app.listen(port, () => {
  console.log(`Web server is listening on port ${port}!`);
});
