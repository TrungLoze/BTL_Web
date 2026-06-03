const express = require('express');
const router = express.Router();

router.get('/articulate_360', (req, res) => {
    res.render('articulate_360');
});

module.exports = router;