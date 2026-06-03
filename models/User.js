const { pool } = require('../config/db');

const User = {
    // Tìm người dùng theo Email (dùng khi đăng nhập hoặc kiểm tra trùng lặp khi đăng ký)
    async findByEmail(email) {
        const query = 'SELECT * FROM users WHERE email = ?';
        const [rows] = await pool.execute(query, [email]);
        return rows[0]; // Trả về người dùng đầu tiên tìm thấy (nếu có)
    },

    // Tìm người dùng theo ID (dùng để lưu vào session)
    async findById(id) {
        const query = 'SELECT * FROM users WHERE id = ?';
        const [rows] = await pool.execute(query, [id]);
        return rows[0];
    },

    // Tạo tài khoản mới (dùng khi đăng ký)
    async create(userData) {
        const { full_name, email, password } = userData;
        const query = 'INSERT INTO users (full_name, email, password) VALUES (?, ?, ?)';
        const [result] = await pool.execute(query, [full_name, email, password]);
        return result.insertId; // Trả về ID của người dùng vừa được tạo
    }
};

module.exports = User;
