const express = require('express');
const router = express.Router();

router.get('/kahoot', (req, res) => {
    res.render('kahoot');
});

module.exports = router;