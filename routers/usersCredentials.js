const express = require("express");
const usersCredentialsController = require("../controllers/usersCredentials");
const router = express.Router();

router.get(
  "/usersCredentials",
  usersCredentialsController.getAllUsersCredentials
);
router.get(
  "/usersCredentials/:id",
  usersCredentialsController.getUsersCredentialsById
);
router.post(
  "/usersCredentials",
  usersCredentialsController.createUsersCredentials
);
router.put(
  "/usersCredentials/:id",
  usersCredentialsController.updateUsersCredentialsById
);
router.delete(
  "/usersCredentials/:id",
  usersCredentialsController.deleteUsersCredentialsById
);

module.exports = router;
