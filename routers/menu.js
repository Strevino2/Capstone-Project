const express = require('express')
const menuController = require('../controllers/menu')
const router = express.Router()

router.get('/menu', menuController.getAllMenu)
router.get('/menu/:id', menuController.getmenuByID)
router.post('/menu', menuController.createMenu)
router.put('/menu/:id', menuController.updateMenuByID)
router.delete('/menu/:id', menuController.deleteMenuByID)

module.exports = router