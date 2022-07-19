const express = require('express')
const hoursOfOperationController = require('../controllers/hoursOfOperation')
const router = express.Router()

router.get('/hoursOfOperation', hoursOfOperationController.getAllHoursOfOperation)
router.get('/hoursOfOperation/:id', hoursOfOperationController.getHoursOfOperationById)
router.post('/hoursOfOperation', hoursOfOperationController.createHoursOfOperation)
router.put('/hoursOfOperation/:id', hoursOfOperationController.updateHoursOfOperationById)
router.delete('/hoursOfOperation/:id', hoursOfOperationController.deleteHoursOfOperationById)

module.exports = router