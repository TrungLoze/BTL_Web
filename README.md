# HUST BOX-FED: Hệ Thống Quản Lý Học Tập Trực Tuyến (LMS)

![Banner](https://images.unsplash.com/photo-1501504905252-473c47e087f8?q=80&w=1000&auto=format&fit=crop)

Đây là đồ án cuối kỳ dành cho sinh viên chuyên ngành **Công Nghệ Giáo Dục - Đại học Bách Khoa Hà Nội (HUST)**. Dự án xây dựng một hệ thống E-Learning (LMS - Learning Management System) giúp quản lý và theo dõi tiến độ học tập của sinh viên một cách trực quan và hiệu quả.

## 🎯 Mục Tiêu Dự Án (Educational Goals)
- **Cá nhân hóa việc học:** Mỗi học viên có lộ trình và tiến độ học tập riêng biệt.
- **Đo lường kết quả (Learning Analytics):** Quản trị viên và giảng viên có thể theo dõi chính xác tiến độ học tập của từng học viên (bao nhiêu % khóa học đã hoàn thành).
- **Trải nghiệm người dùng (UX/UI):** Giao diện thân thiện, chuẩn sư phạm, tương thích trên nhiều thiết bị giúp tăng cường động lực học tập (Motivation).

## 🚀 Tính Năng Nổi Bật (Key Features)

### 👨‍🎓 Dành cho Học viên (Student Role):
- **Đăng ký & Đăng nhập:** Hệ thống mã hóa mật khẩu an toàn (Bcrypt).
- **Khám phá Khóa học:** Xem danh sách khóa học, xem chi tiết mô tả và giảng viên.
- **Học tập qua Video:** Trình phát video bài giảng mượt mà, hỗ trợ nhúng từ YouTube.
- **Theo dõi Tiến độ (Progress Tracking):** Đánh dấu bài học đã hoàn thành. Hệ thống tự động tính toán % tiến độ khóa học.
- **Trang "Khóa học của tôi":** Dashboard cá nhân liệt kê các khóa đang học, giúp học viên dễ dàng quay lại bài học gần nhất.

### 👨‍🏫 Dành cho Giảng viên / Admin (Admin Role):
- **Quản lý Khóa học (CRUD):** Thêm, sửa, xóa khóa học. Hệ thống hỗ trợ "Xóa mềm" (Soft Delete) giúp lưu trữ vào Thùng rác và có thể khôi phục.
- **Quản lý Bài giảng (Lessons):** Sắp xếp lộ trình bài học theo thứ tự sư phạm.
- **Quản lý Người dùng (User Management):** Phân quyền hệ thống.
- **Learning Analytics:** Xem trực tiếp trên Dashboard số lượng học viên đang tham gia khóa học và chi tiết tiến độ hoàn thành của từng cá nhân.

## 🛠 Công Nghệ Sử Dụng (Tech Stack)
- **Backend:** Node.js, Express.js.
- **Frontend:** EJS (Template Engine), Bootstrap 5, CSS thuần, Vanilla JS.
- **Cơ sở dữ liệu:** MySQL.
- **Bảo mật:** Express Session, Bcrypt (Mã hóa mật khẩu).

## ⚙️ Hướng Dẫn Cài Đặt & Chạy Dự Án

### Yêu cầu hệ thống:
- Đã cài đặt [Node.js](https://nodejs.org/) (Khuyến nghị bản LTS).
- Đã cài đặt hệ quản trị CSDL MySQL (XAMPP, MySQL Workbench,...).

### Các bước chạy:
1. **Clone dự án** về máy tính.
2. Mở Terminal/CMD tại thư mục dự án và chạy lệnh:
   ```bash
   npm install
   ```
3. **Cấu hình Database:**
   - Mở MySQL và tạo một database mới tên là `btl_web`.
   - Chạy file `database.sql` vào MySQL để tạo các bảng (tables) cần thiết.
   - Kiểm tra và đổi cấu hình kết nối DB trong file `config/db.js` (Tên user, password,...).
4. **Khởi động Server:**
   ```bash
   npm start
   ```
5. Mở trình duyệt và truy cập: `http://localhost:3000`

---
*Dự án được thực hiện với mục tiêu áp dụng công nghệ thông tin vào việc giải quyết các bài toán thực tiễn trong lĩnh vực Công Nghệ Giáo Dục.*
