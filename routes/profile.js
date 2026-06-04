const express = require('express');
const router = express.Router();
const profileController = require('../controllers/profileController');

router.get('/', profileController.getProfile);
router.get('/courses', profileController.getMyCourses);
router.post('/update', profileController.postUpdateProfile);
router.post('/change-password', profileController.postChangePassword);

module.exports = router;
