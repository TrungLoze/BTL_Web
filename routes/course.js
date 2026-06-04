const express = require('express');
const router = express.Router();
const courseController = require('../controllers/courseController');
const multer = require('multer');
const lessonRouter = require('./lesson');

// Cấu hình Multer để upload ảnh bìa vào thư mục public/images
const upload = multer({ dest: 'public/images/' });

const { isAdmin, isLoggedIn } = require('../middlewares/authMiddleware');

// Route hoàn thành bài học (Phải đặt trước route kết nối lessonRouter vì lessonRouter yêu cầu quyền admin)
router.post('/:slug/lessons/:lessonId/complete', isLoggedIn, courseController.postCompleteLesson);

// Route kết nối bài học (yêu cầu quyền Admin)
router.use('/:slug/lessons', isAdmin, lessonRouter);

// Route Dashboard Quản lý khóa học (Phải đặt TRƯỚC /:slug)
router.get('/dashboard', isAdmin, courseController.getDashboard);
router.get('/dashboard/rebin', isAdmin, courseController.getRebin);

// Route hiển thị form tạo khóa học (Phải đặt TRƯỚC /:slug)
router.get('/create', isAdmin, courseController.getCreateCourse);
router.post('/create', isAdmin, upload.single('cover_file'), courseController.postCreateCourse);

// Route sửa khóa học (Phải đặt TRƯỚC /:slug)
router.get('/:slug/edit', isAdmin, courseController.getEditCourse);
router.post('/:slug/edit', isAdmin, upload.single('cover_file'), courseController.postEditCourse);

// Route xóa khóa học
router.post('/:slug/delete', isAdmin, courseController.postDeleteCourse);

// Route khôi phục khóa học
router.post('/:slug/restore', isAdmin, courseController.postRestoreCourse);

// Route xóa vĩnh viễn khóa học
router.post('/:slug/force-delete', isAdmin, courseController.postForceDeleteCourse);

// Route hiển thị chi tiết khóa học theo slug
router.get('/:slug', courseController.getCourseDetail);

// Route đăng ký khóa học
router.post('/:slug/enroll', isLoggedIn, courseController.postEnrollCourse);

module.exports = router;
