const express = require("express");
const menuController = require("../controllers/menu");
const router = express.Router();
const { authenticateToken } = require("../controllers/auth");

router.get("/menu", menuController.getAllMenu);
router.get("/menu/:id", menuController.getmenuByID);
router.post('/menu', authenticateToken, menuController.createMenu)
router.put("/menu/:id", authenticateToken, menuController.updateMenuByID);
router.delete("/menu/:id", authenticateToken, menuController.deleteMenuByID);

module.exports = router;
