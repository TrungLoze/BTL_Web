const express = require('express');
const router = express.Router();

router.get('/quizzi', (req, res) => {
    res.render('quizzi');
});

module.exports = router;