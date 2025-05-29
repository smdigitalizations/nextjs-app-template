USE lms_db;

-- Insert dummy users
INSERT INTO users (username, email, password_hash, role, full_name) VALUES
('student1', 'student1@example.com', 'hashedpassword1', 'student', 'Student One'),
('instructor1', 'instructor1@example.com', 'hashedpassword2', 'instructor', 'Instructor One'),
('admin1', 'admin1@example.com', 'hashedpassword3', 'admin', 'Admin One');

-- Insert dummy categories
INSERT INTO categories (name, description) VALUES
('Programming', 'Courses related to programming and software development'),
('Design', 'Courses related to graphic and UI/UX design'),
('Business', 'Courses related to business and management');

-- Insert dummy courses
INSERT INTO courses (title, description, instructor_id, status) VALUES
('JavaScript Basics', 'Learn the fundamentals of JavaScript', 2, 'published'),
('React Development', 'Build modern web apps with React', 2, 'published'),
('Business 101', 'Introduction to business principles', 2, 'published');

-- Map courses to categories
INSERT INTO course_categories (course_id, category_id) VALUES
(1, 1),
(2, 1),
(3, 3);

-- Insert dummy course enrollments
INSERT INTO course_enrollments (course_id, student_id, status) VALUES
(1, 1, 'active'),
(2, 1, 'active'),
(3, 1, 'active');

-- Insert dummy assignments
INSERT INTO assignments (title, description, course_id, due_date, points, status) VALUES
('JS Variables and Functions', 'Complete exercises on variables and functions', 1, '2024-06-30 23:59:59', 100, 'published'),
('React Components Project', 'Build a React component library', 2, '2024-07-15 23:59:59', 150, 'published'),
('Business Case Study', 'Analyze a business case study', 3, '2024-07-01 23:59:59', 120, 'published');

-- Insert dummy assignment submissions
INSERT INTO assignment_submissions (assignment_id, student_id, submission_text, status, score, feedback, submitted_at) VALUES
(1, 1, 'My submission text for JS variables', 'submitted', 95, 'Great work!', '2024-06-29 18:00:00'),
(2, 1, 'React components project submission', 'draft', NULL, NULL, NULL);

-- Insert dummy progress tracking
INSERT INTO progress_tracking (student_id, course_id, progress_percentage, last_accessed) VALUES
(1, 1, 75, NOW()),
(1, 2, 40, NOW()),
(1, 3, 20, NOW());
