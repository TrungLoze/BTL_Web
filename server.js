require('dotenv').config();
const express = require('express');
const path = require('path');
const port = process.env.PORT || 3000;
const app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware
app.use(express.urlencoded({ extended: true, limit: '50mb' }));
app.use(express.json({ limit: '50mb' }));
app.use(express.static(path.join(__dirname, 'public')));

const homeRouter = require('./routes/home');
const articulate360Router = require('./routes/articulate_360');
const googleClassroomRouter = require('./routes/google_classroom');
const kahootRouter = require('./routes/kahoot');
const quizziRouter = require('./routes/quizzi');

app.use('/', homeRouter);
app.use('/articulate_360', articulate360Router);
app.use('/google_classroom', googleClassroomRouter);
app.use('/kahoot', kahootRouter);
app.use('/quizzi', quizziRouter);

app.listen(port, () => {
    console.log(`Working at http://localhost:${port}`);
});
