require('dotenv').config();
const express = require('express');
const session = require('express-session');
const path = require('path');
const { connectDB } = require('./config/db'); // Import kết nối database
const Course = require('./models/Course');
const port = process.env.PORT;
const app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware
app.use(express.urlencoded({ extended: true, limit: '50mb' }));
app.use(express.json({ limit: '50mb' }));
app.use(express.static(path.join(__dirname, 'public')));

// Cấu hình express-session
app.use(session({
    secret: 'my-secret-key-btl', // Khóa bí mật dùng để mã hóa Session ID
    resave: false, // Không lưu session nếu không có sự thay đổi
    saveUninitialized: false, // Không lưu các session chưa được khởi tạo (giết ít bộ nhớ hơn)
    cookie: { maxAge: 1000 * 60 * 60 * 24 } // Thời gian sống của Cookie/Session: 1 ngày
}));

// Middleware toàn cục để truyền biến user vào mọi view EJS
app.use(async (req, res, next) => {
    res.locals.user = req.session.user || null;
    try {
        res.locals.globalCourses = await Course.getAll();
    } catch (error) {
        res.locals.globalCourses = [];
    }
    next();
});

const homeRouter = require('./routes/home');
const authRouter = require('./routes/auth'); // Import router xác thực
const courseRouter = require('./routes/course');
const userRouter = require('./routes/user');
const profileRouter = require('./routes/profile');
const { isAdmin, isLoggedIn } = require('./middlewares/authMiddleware');


app.use('/auth', authRouter); // Các route /login, /register, /logout
app.use('/courses', courseRouter); // Route động cho các trang khóa học
app.use('/users', isAdmin, userRouter); // Quản lý người dùng
app.use('/profile', isLoggedIn, profileRouter); // Quản lý hồ sơ cá nhân
app.use('/', homeRouter);


// Kết nối Database
connectDB();

app.listen(port, () => {
    console.log(`Working at http://localhost:${port}`);
});
