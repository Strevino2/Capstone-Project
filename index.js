const express = require("express");
require("dotenv").config()
const app = express();
const port = process.env.PORT || 4004;
const usersRoute = require("./routers/users");
const hoursOfOperationRoute = require("./routers/hoursOfOperation");
const menuRoute = require("./routers/menu");
const authRouter = require('./routers/auth');
const cors = require("cors");

app.use(express.json());
app.use(cors());
app.use(usersRoute, hoursOfOperationRoute, menuRoute, authRouter);

app.get("/", (req, res) => {
  res.send("Welcome to my Capstone Project server!");
});

app.listen(port, () => {
  console.log(`Web server is listening on port ${port}!`);
});
