const Course = require('../models/Course');

const homeController = {
    // Hiển thị trang chủ
    async getHome(req, res) {
        try {
            // Lấy danh sách khóa học từ Model
            const courses = await Course.getAll();

            // Truyền dữ liệu sang View (gồm courses và thông tin user nếu đã đăng nhập)
            res.render('home', { 
                courses: courses,
                user: req.session.user || null 
            });
        } catch (error) {
            console.error(error);
            // Nếu có lỗi truy vấn cơ sở dữ liệu thì vẫn render trang chủ nhưng mảng courses rỗng
            res.render('home', { 
                courses: [],
                user: req.session.user || null 
            });
        }
    }
};

module.exports = homeController;
