require('dotenv').config();
const express = require('express');
const path = require('path');
const { connectDB } = require('./config/db');

const app = express();
const port = process.env.PORT || 3000;

// Kết nối cơ sở dữ liệu MySQL
connectDB();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware
app.use(express.urlencoded({ extended: true, limit: '50mb' }));
app.use(express.json({ limit: '50mb' }));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.render('home');
});

app.listen(port, () => {
    console.log(`Working at http://localhost:${port}`);
});
