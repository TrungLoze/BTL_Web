const express = require('express');
const router = express.Router();

router.get('/google_classroom', (req, res) => {
    res.render('google_classroom');
});

module.exports = router;