USE exam_final;


-- Tạo bảng học sinh
CREATE TABLE students (
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE,
gender VARCHAR(10),
address TEXT,
phone_number VARCHAR(10),
student_email VARCHAR(100),
updated_date DATETIME
);

INSERT INTO students (student_id, first_name, last_name, date_of_birth, gender, address, phone_number, student_email, updated_date) VALUES
(1, "PENELOPE", "GUINESS", "1999-03-14", "MALE", "HA NOI", "0913452452", "GUINESS@gmail.com", "2024-10-07 19:00:00"),
(2, "NICK", "WAHLBERG", "1999-12-22", "MALE", "HUNG YEN", "0913455232", "WAHLBERG@gmail.com", "2024-10-07 19:00:00"),
(3, "ED", "CHASE", "1999-09-12", "FEMALE", "THAI BINH", "0987552452", "CHASE@gmail.com", "2024-10-07 19:00:00"),
(4, "JENNIFER", "DAVIS", "2000-01-20", "FEMALE", "BAC NINH", "0912343897", "DAVIS@gmail.com", "2024-10-07 19:00:00"),
(5, "JOHNNY", "LOLLOBRIGIDA", "1998-05-05", "MALE", "HA NOI", "0913675238", "LOLLOBRIGIDA@gmail.com", "2024-10-07 19:00:00"),
(6, "BETTE", "NICHOLSON", "2001-01-14", "MALE", "HAI DUONG", "0981288563", "NICHOLSON@gmail.com", "2024-10-07 19:00:00"),
(7, "GRACE", "MOSTEL", "1997-09-28", "FEMALE", "HAI PHONG", "0973457946", "MOSTEL@gmail.com", "2024-10-07 19:00:00"),
(8, "MATTHEW", "JOHANSSON", "1996-08-01", "MALE", "THANH HOA", "0965223867", "JOHANSSON@gmail.com", "2024-10-07 19:00:00"),
(9, "JOE", "SWANK", "1999-12-05", "FEMALE", "HA NOI", "0914876689", "SWANK@gmail.com", "2024-10-07 19:00:00"),
(10, "CHRISTIAN", "GABLE", "1999-03-15", "FEMALE", "HUNG YEN", "0971239880", "GABLE@gmail.com", "2024-10-07 19:00:00"),
(11, "ZERO", "CAGE", "1990-07-09", "MALE", "BAC NINH", "0997865438", "CAGE@gmail.com", "2024-10-07 19:00:00"),
(12, "KARL", "BERRY", "1992-11-21", "MALE", "VINH PHUC", "0987663416", "BERRY@gmail.com", "2024-10-07 19:00:00"),
(13, "UMA", "WOOD", "1998-08-30", "FEMALE", "HA NOI", "0962345487", "WOOD@gmail.com", "2024-10-07 19:00:00"),
(14, "VIVIEN", "BERGEN", "2003-06-27", "FEMALE", "HA NOI", "0975677989", "BERGEN@gmail.com", "2024-10-07 19:00:00"),
(15, "CUBA", "OLIVIER", "2001-10-10", "MALE", "HAI DUONG", "0923864490", "OLIVIER@gmail.com", "2024-10-07 19:00:00"),
(16, "FRED", "COSTNER", "1996-09-13", "MALE", "NAM DINH", "0975364357", "COSTNER@gmail.com", "2024-10-07 19:00:00"),
(17, "HELEN", "VOIGHT", "1997-12-22", "MALE", "VINH PHUC", "0982425634", "VOIGHT@gmail.com", "2024-10-07 19:00:00"),
(18, "DAN", "TORN", "1998-06-21", "FEMALE", "HA NOI", "0991465378", "TORN@gmail.com", "2024-10-07 19:00:00"),
(19, "BOB", "FAWCETT", "1998-11-24", "FEMALE", "HUNG YEN", "0975436887", "FAWCETT@gmail.com", "2024-10-07 19:00:00"),
(20, "LUCILLE", "TRACY", "1997-09-30", "MALE", "THAI BINH", "0935365477", "TRACY@gmail.com", "2024-10-07 19:00:00");


-- Tạo bảng giảng viên
CREATE TABLE instructors (
instructor_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE,
gender VARCHAR(10),
instructor_email VARCHAR(100),
department_id INT,
updated_date DATETIME,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO instructors (instructor_id, first_name, last_name, date_of_birth, gender, instructor_email, department_id, updated_date) VALUES
(1, "PENELOPE", "GUINESS", "1976-01-13", "Male", "GUINESS@gmail.com", 1, "2024-10-07 19:00:00"),
(2, "NICK", "WAHLBERG", "1977-12-22", "Female", "WAHLBERG@gmail.com", 1, "2024-10-07 19:00:00"),
(3, "JENNIFER", "WAYNE", "1975-09-29", "Female", "WAYNE@gmail.com", 1, "2024-10-07 19:00:00"),
(4, "JOHNNY", "LOLLOBRIGIDA", "1976-11-21", "Male", "LOLLOBRIGIDA@gmail.com", 2, "2024-10-07 19:00:00"),
(5, "BETTE", "DAVIS", "1978-08-12", "Male", "DAVIS@gmail.com", 2, "2024-10-07 19:00:00"),
(6, "GRACE", "MOSTEL", "1974-07-30", "Male", "MOSTEL@gmail.com", 3, "2024-10-07 19:00:00"),
(7, "MATTHEW", "JOHANSSON", "1975-06-08", "Female", "JOHANSSON@gmail.com", 3, "2024-10-07 19:00:00"),
(8, "JOE", "SWANK", "1980-11-04", "Male", "SWANK@gmail.com", 4, "2024-10-07 19:00:00"),
(9, "CHRISTIAN", "GABLE", "1977-03-18", "Male", "GABLE@gmail.com", 4, "2024-10-07 19:00:00"),
(10, "ZERO", "WOOD", "1975-12-22", "Female", "WOOD@gmail.com", 4, "2024-10-07 19:00:00"),
(11, "KARL", "BERGEN", "1974-02-28", "Male", "BERGEN@gmail.com", 5, "2024-10-07 19:00:00"),
(12, "VIVIEN", "OLIVIER", "1976-10-10", "Female", "OLIVIER@gmail.com", 5, "2024-10-07 19:00:00"),
(13, "FRED", "COSTNER", "1981-08-05", "Male", "COSTNER@gmail.com", 6, "2024-10-07 19:00:00"),
(14, "HELEN", "VOIGHT", "1971-03-24", "Male", "VOIGHT@gmail.com", 6, "2024-10-07 19:00:00"),
(15, "DAN", "TORN", "1970-05-27", "Female", "TORN@gmail.com", 6, "2024-10-07 19:00:00");


-- Tạo bảng khoa
CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100),
updated_date DATETIME
);

INSERT INTO departments (department_id, department_name, updated_date) VALUES
(1, "Công nghệ thông tin", "2018-09-07 08:00:00"),
(2, "Địa chất", "2018-09-07 08:00:00"),
(3, "Điện tử - Viễn thông", "2018-09-07 08:00:00"),
(4, "Sinh học & Công nghệ sinh học", "2018-09-07 08:00:00"),
(5, "Vật lý - Vật lý kỹ thuật", "2018-09-07 08:00:00"),
(6, "Môi trường", "2018-09-07 08:00:00");


-- Tạo bảng ngành
CREATE TABLE majors (
major_id INT PRIMARY KEY,
major_name VARCHAR(100),
department_id INT,
updated_date DATETIME,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO majors ( major_id, major_name, department_id, updated_date) VALUES
(1, "Máy tính và công nghệ thông tin", 1, "2018-09-07 08:00:00"),
(2, "Trí tuệ nhân tạo", 1, "2018-09-07 08:00:00"),
(3, "Địa chất học", 2, "2019-09-07 08:00:00"),
(4, "Kỹ thuật địa chất", 2, "2018-09-07 08:00:00"),
(5, "Kỹ thuật điện tử, viễn thông", 3, "2020-09-07 08:00:00"),
(6, "Sinh học", 4, "2018-09-07 08:00:00"),
(7, "Công nghệ sinh học", 4, "2019-09-07 08:00:00"),
(8, "Vật lý học, Công nghệ vật lý điện tử và tin học", 5, "2018-09-07 08:00:00"),
(9, "Vật lý y khoa", 5, "2018-09-07 08:00:00"),
(10, "Hải dương học", 5, "2021-09-07 08:00:00"),
(11, "Kỹ thuật hạt nhân", 5, "2018-09-07 08:00:00"),
(12, "Quản lý tài nguyên và môi trường", 6, "2022-09-07 08:00:00"),
(13, "Khoa học môi trường", 6, "2019-09-07 08:00:00"),
(14, "Công nghệ môi trường", 6, "2018-09-07 08:00:00");


-- Tạo bảng khóa học (môn học)
CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100),
credits INT,
major_id INT,
updated_date DATETIME,
FOREIGN KEY (major_id) REFERENCES majors(major_id)
);

INSERT INTO courses (course_id, course_name, credits, major_id, updated_date) VALUES
(1, "Tin học cơ bản", 3, 1, "2020-10-07 19:00:00"),
(2, "Kỹ thuật phần mềm", 4, 1, "2024-10-07 19:00:00"),
(3, "Khoa học máy tính", 3, 2, "2018-10-07 19:00:00"),
(4, "Truyền thông và mạng máy tính", 3, 1, "2024-10-07 19:00:00"),
(5, "Hệ thống thông tin", 5, 2, "2018-10-07 19:00:00"),
(6, "Các phương pháp phân tích thạch học, khoáng vật", 4, 4, "2021-10-07 19:00:00"),
(7, "Địa hóa môi trường trầm tích", 6, 4, "2024-10-07 19:00:00"),
(8, "Địa chất biển", 3, 3, "2024-10-07 19:00:00"),
(9, "Địa chất Dầu khí", 2, 3, "2020-10-07 19:00:00"),
(10, "Địa chấn địa tầng", 1, 3, "2018-10-07 19:00:00"),
(11, "Xử lý tín hiệu số", 4, 5, "2024-10-07 19:00:00"),
(12, "Kỹ thuật siêu cao tần", 4, 5, "2024-10-07 19:00:00"),
(13, "Truyền sóng và anten", 3, 5, "2024-10-07 19:00:00"),
(14, "Lý thuyết mạch", 5, 5, "2018-10-07 19:00:00"),
(15, "Sinh học phân tử", 2, 6, "2021-10-07 19:00:00"),
(16, "Sinh học tế bào", 4, 6, "2020-10-07 19:00:00"),
(17, "Di truyền học", 3, 6, "2021-10-07 19:00:00"),
(18, "Vi sinh vật học", 2, 6, "2018-10-07 19:00:00"),
(19, "Sinh học chức năng thực vật", 3, 7, "2024-10-07 19:00:00"),
(20, "Hệ thống học thực vật học", 4, 7, "2024-10-07 19:00:00"),
(21, "Vật lí Đại cương", 5, 8, "2018-10-07 19:00:00"),
(22, "Vật lí Chất rắn", 3, 8, "2020-10-07 19:00:00"),
(23, "Vật lí Vô tuyến", 4, 9, "2018-10-07 19:00:00"),
(24, "Vật lí Nhiệt độ thấp", 2, 10,"2024-10-07 19:00:00"),
(25, "Tin học Vật lí", 4, 11, "2020-10-07 19:00:00"),
(26, "Vật lí Hạt nhân", 3, 9, "2024-10-07 19:00:00"),
(27, "Khoa học Vật liệu", 1, 11, "2021-10-07 19:00:00"),
(28, "Sinh vật chỉ thị môi trường", 3, 12, "2024-10-07 19:00:00"),
(29, "Kinh tế tài nguyên môi trường", 2, 13, "2020-10-07 19:00:00"),
(30, "Công nghệ sinh học trong môi trường", 4, 13, "2020-10-07 19:00:00"),
(31, "Ô nhiễm môi trường", 3, 14, "2024-10-07 19:00:00"),
(32, "Kỹ thuật xử lý chất thải", 3, 14, "2024-10-07 19:00:00"),
(33, "Quản lý đất ngập nước", 3, 14, "2021-10-07 19:00:00");


-- Tạo bảng đăng ký môn học
CREATE TABLE student_course (
student_course_id INT PRIMARY KEY,
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student_course (student_course_id, student_id, course_id) VALUES
(1, 1, 1), (2, 3, 1), (3, 6, 1), (4, 8, 1), (5, 15, 1), (6, 19, 1), (7, 9, 2),
(8, 7, 2), (9, 3, 2), (10, 12, 3), (11, 15, 3), (12, 5, 3), (13, 10, 4), (14, 18, 5),
(15, 4, 5), (16, 19, 6), (17, 2, 6), (18, 11, 7), (19, 20, 7), (20, 8, 7), (21, 5, 7),
(22, 16, 8), (23, 7, 8), (24, 2,8), (25, 13, 8), (26, 20, 9), (27, 18, 9), (28, 1, 9),
(29, 9, 10), (30, 1, 10), (31, 2, 11), (32, 5, 11), (33, 4, 11), (34, 1, 12), (35, 19, 12),
(36, 17, 12), (37, 20, 12), (38, 8, 13), (39, 10, 13), (40, 11, 14), (41, 3, 15), (42, 9, 15),
(43, 13, 16), (44, 11, 16), (45, 4, 16), (46, 9, 17), (47, 2, 17), (48, 14, 17), (49, 15, 17),
(50, 11, 18), (51, 3, 18), (52, 6, 18), (53, 7, 18), (54, 20, 19), (55, 17, 19), (56, 16, 19),
(57, 13, 20), (58, 11, 20), (59, 10, 21), (60, 3, 21), (61, 5, 21), (62, 12, 21), (63, 15, 21),
(64, 4, 22), (65, 6, 22), (66, 8, 22), (67, 2, 23), (68, 4, 24), (69, 8, 24), (70, 17, 24),
(71, 3, 25), (72, 15, 25), (73, 20, 25), (74, 15, 26), (75, 9, 26), (76, 2, 27), (77, 1, 27),
(78, 3, 27), (79, 6, 28), (80, 4, 28), (81, 5, 29), (82, 11, 31), (83, 12, 31), (84, 16, 32),
(85, 13, 33), (86, 15, 33), (87, 14, 33), (88, 11, 33), (89, 10, 33), (90, 19, 3);


-- Tạo bảng lớp
CREATE TABLE classes (
class_id INT PRIMARY KEY,
class_name VARCHAR(50),
acedemic_year VARCHAR(9),
semester VARCHAR(10),
day_of_week VARCHAR(10),
start_time TIME,
end_time TIME,
updated_date DATETIME
);

INSERT INTO classes (class_id, class_name, acedemic_year, semester, day_of_week, start_time, end_time, updated_date) VALUES
(1, "AAA", "2023-2024", "Học kỳ 1", "Monday", "07:00:00", "09:00:00", "2024-07-10"),
2, "ABC", "2023-2024", "Học kỳ 1", "Tuesday", "07:00:00", "09:00:00", "2024-07-10"),
(3, "BBB", "2023-2024", "Học kỳ 1", "Wednesday ", "09:00:00", "11:00:00", "2024-07-10"),
(4, "CCC", "2023-2024", "Học kỳ 1", "Thursday", "14:00:00", "16:00:00", "2024-07-10"),
(5, "DDD", "2023-2024", "Học kỳ 1", "Friday", "07:00:00", "09:00:00", "2024-07-10"),
(6, "EEE", "2023-2024", "Học kỳ 1", "Tuesday", "09:00:00", "11:00:00", "2024-07-10"),
(7, "FFF", "2023-2024", "Học kỳ 1", "Tuesday", "16:00:00", "18:00:00", "2024-07-10"),
(8, "GGG", "2023-2024", "Học kỳ 1", "Wednesday", "07:00:00", "09:00:00", "2024-07-10"),
(9, "HHH", "2023-2024", "Học kỳ 2", "Monday", "09:00:00", "11:00:00", "2024-07-10"),
(10, "JJJ", "2023-2024", "Học kỳ 2", "Thursday", "12:00:00", "14:00:00", "2024-07-10"),
(11, "MMM", "2023-2024", "Học kỳ 2", "Wednesday", "14:00:00", "16:00:00", "2024-07-10"),
(12, "KKK", "2023-2024", "Học kỳ 2", "Monday", "07:00:00", "09:00:00", "2024-07-10"),
(13, "LLL", "2023-2024", "Học kỳ 2", "Thursday", "07:00:00", "09:00:00", "2024-07-10"),
(14, "QQQ", "2023-2024", "Học kỳ 2", "Monday", "09:00:00", "11:00:00", "2024-07-10"),
(15, "WWW", "2023-2024", "Học kỳ 2", "Wednesday", "16:00:00", "18:00:00", "2024-07-10"),
(16, "TTT", "2023-2024", "Học kỳ 2", "Monday", "14:00:00", "16:00:00", "2024-07-10"),
(17, "ZZZ", "2024-2025", "Học kỳ 1", "Friday", "09:00:00", "11:00:00", "2024-07-10"),
(18, "XXX", "2024-2025", "Học kỳ 1", "Thursday", "12:00:00", "14:00:00", "2024-07-10"),
(19, "XYZ", "2024-2025", "Học kỳ 1", "Friday", "12:00:00", "14:00:00", "2024-07-10"),
(20, "QUE", "2024-2025", "Học kỳ 1", "Tuesday", "12:00:00", "14:00:00", "2024-07-10"),
(21, "GSV", "2024-2025", "Học kỳ 1", "Monday", "07:00:00", "09:00:00", "2024-07-10"),
(22, "HRH", "2024-2025", "Học kỳ 1", "Tuesday", "09:00:00", "11:00:00", "2024-07-10"),
(23, "HEY", "2024-2025", "Học kỳ 1", "Tuesday", "12:00:00", "14:00:00", "2024-07-10"),
(24, "ITB", "2024-2025", "Học kỳ 1", "Monday", "14:00:00", "16:00:00", "2024-07-10"),
(25, "GHD", "2024-2025", "Học kỳ 2", "Tuesday", "18:00:00", "20:00:00", "2024-07-10"),
(26, "AGG", "2024-2025", "Học kỳ 2", "Thursday", "09:00:00", "11:00:00", "2024-07-10"),
(27, "KRB", "2024-2025", "Học kỳ 2", "Tuesday", "07:00:00", "09:00:00", "2024-07-10"),
(28, "SDB", "2024-2025", "Học kỳ 2", "Monday", "14:00:00", "16:00:00", "2024-07-10"),
(29, "RJE", "2024-2025", "Học kỳ 2", "Tuesday", "14:00:00", "16:00:00", "2024-07-10"),
(30, "SEE", "2024-2025", "Học kỳ 2", "Tuesday", "09:00:00", "11:00:00", "2024-07-10"),
(31, "NBB", "2024-2025", "Học kỳ 2", "Wednesday", "18:00:00", "18:00:00", "2024-07-10"),
(32, "NTR", "2024-2025", "Học kỳ 2", "Wednesday", "12:00:00", "14:00:00", "2024-07-10"),
(33, "GSG", "2024-2025", "Học kỳ 2", "Friday", "16:00:00", "18:00:00", "2024-07-10");



-- Tạo bảng thời khóa biểu
CREATE TABLE class_schedules (
schedule_id INT PRIMARY KEY,
class_id INT,
course_id INT,
instructor_id INT,
FOREIGN KEY (class_id) REFERENCES classes(class_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id),
FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

INSERT INTO class_schedules (schedule_id, class_id, course_id, instructor_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 2),
(5, 5, 5, 1),
(6, 6, 6, 5),
(7, 7, 7, 4),
(8, 8, 8, 4),
(9, 9, 9, 5),
(10, 10, 10, 5),
(11, 11, 11, 6),
(12, 12, 12,7),
(13, 13, 13, 6),
(14, 14, 14, 7),
(15, 15, 15, 8),
(16, 16, 16, 10),
(17, 17, 17, 9),
(18, 18, 18, 8),
(19, 19, 19, 9),
(20, 20, 20, 10),
(21, 21, 21, 11),
(22, 22, 22, 11),
(23, 23, 23, 12),
(24, 24, 24, 11),
(25, 25, 25, 11),
(26, 26, 26, 12),
(27, 27, 27, 12),
(28, 28, 28, 13),
(29, 29, 29, 15),
(30, 30, 30, 14),
(31, 31, 31, 13),
(32, 32, 32, 14),
(33, 33, 33, 15);


-- Tạo bảng điểm
CREATE TABLE grades (
grades_id INT PRIMARY KEY,
student_id INT,
course_id INT,
exam_score FLOAT,
process_score FLOAT,
final_score FLOAT,
updated_date DATETIME,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO grades (grades_id, student_id, course_id, exam_score, process_score, final_score, updated_date) VALUES
(1, 1, 1, 7, 8, 9, "2024-11-07"), (25, 5, 3, 7, 8, 9, "2024-11-07"), (49, 10, 21, 8, 9, 7, "2024-11-07"), (73, 15, 33, 9, 10, 8, "2024-11-07"),
(2, 1, 9, 8, 9, 10, "2024-11-07"), (26, 5, 7, 8, 7, 7, "2024-11-07"), (50, 10, 33, 6, 9, 5, "2024-11-07"), (74, 16, 8, 7, 10, 8, "2024-11-07"),
(3, 1, 10, 6, 8, 7, "2024-11-07"), (27, 5, 11, 6, 9, 9, "2024-11-07"), (51, 11, 7, 6, 9, 5, "2024-11-07"), (75, 16, 19, 6, 8, 8, "2024-11-07"),
(4, 1, 12, 8, 8, 8, "2024-11-07"), (28, 5, 21, 8, 10, 9, "2024-11-07"), (52, 11, 14, 6, 9, 5, "2024-11-07"), (76, 16, 32, 9, 7, 8, "2024-11-07"),
(5, 1, 27, 9, 10, 9, "2024-11-07"), (29, 5, 29, 8, 10, 9, "2024-11-07"), (53, 11, 16, 6, 9, 5, "2024-11-07"), (77, 17, 12, 9, 8, 8, "2024-11-07"),
(6, 2, 6, 7, 8, 9, "2024-11-07"), (30, 6, 1, 8, 9, 9, "2024-11-07"), (54, 11, 33, 18, 9, 5, "2024-11-07"), (78, 17, 19, 10, 7, 8, "2024-11-07"),
(7, 2, 8, 6, 8, 5, "2024-11-07"), (31, 6, 18, 6, 7, 8, "2024-11-07"), (55, 11, 20, 6, 9, 5, "2024-11-07"), (79, 17, 24, 6, 7, 8, "2024-11-07"),
(8, 2, 11, 4, 7, 6, "2024-11-07"), (32, 6, 22, 7, 7, 7, "2024-11-07"), (56, 11, 31, 6, 9, 5, "2024-11-07"), (80, 18, 5, 10, 8, 8, "2024-11-07"),
(9, 2, 17, 9, 6, 7, "2024-11-07"), (33, 6, 28, 8, 7, 9, "2024-11-07"), (57, 11, 33, 6, 9, 5, "2024-11-07"), (81, 18, 9, 9, 7, 9, "2024-11-07"),
(10, 2, 23, 8, 5, 8, "2024-11-07"), (34, 7, 2, 8, 10, 9, "2024-11-07"), (58, 12, 3, 7, 9, 8, "2024-11-07"), (82, 19, 1, 9, 10, 9, "2024-11-07"),
(11, 2, 27, 6, 7, 8, "2024-11-07"), (35, 7, 8, 7, 9, 7, "2024-11-07"), (59, 12, 21, 10, 9, 7, "2024-11-07"), (83, 19, 3, 10, 9, 9, "2024-11-07"),
(12, 3, 1, 8, 9, 9, "2024-11-07"), (36, 7, 18, 6, 9, 8, "2024-11-07"), (60, 12, 31, 6, 8, 8, "2024-11-07"), (84, 18, 6, 9, 8, 9, "2024-11-07"),
(13, 3, 2, 6, 9, 10, "2024-11-07"), (37, 8, 1, 6, 9, 8, "2024-11-07"), (61, 13, 8, 6, 9, 8, "2024-11-07"), (85, 19, 12, 6, 7, 8, "2024-11-07"),
(14, 3, 15, 7, 6, 6, "2024-11-07"), (38, 8, 7, 7, 7, 8, "2024-11-07"), (62, 13, 16, 7, 8, 10, "2024-11-07"), (86, 20, 7, 5, 7, 9, "2024-11-07"),
(15, 3, 18, 5, 9, 7, "2024-11-07"), (39, 8, 13, 8, 9, 8, "2024-11-07"), (63, 13, 20, 6, 5, 5, "2024-11-07"), (87, 20, 9, 8, 6, 9, "2024-11-07"),
(16, 3, 21, 7, 6, 6, "2024-11-07"), (40, 8, 22, 10, 9, 8, "2024-11-07"), (64, 13, 33, 8, 5, 5, "2024-11-07"), (88, 20, 12, 7, 7, 9, "2024-11-07"),
(17, 3, 25, 8, 9, 6, "2024-11-07"), (41, 8, 24, 6, 10, 8, "2024-11-07"), (65, 14, 17, 8, 9, 8, "2024-11-07"), (89, 20, 19, 10, 7, 9, "2024-11-07"),
(18, 3, 27, 8, 8, 7, "2024-11-07"), (42, 9, 2, 6, 7, 8, "2024-11-07"), (66, 14, 33, 9, 10, 8, "2024-11-07"), (90, 20, 25, 6, 7, 6, "2024-11-07"),
(19, 4, 5, 8, 9, 9, "2024-11-07"), (43, 9, 10, 9, 9, 8, "2024-11-07"), (67, 15, 1, 9, 10, 8, "2024-11-07"),
(20, 4, 11, 10, 8, 9, "2024-11-07"), (44, 9, 15, 6, 6, 8, "2024-11-07"), (68, 15, 3, 9, 10, 8, "2024-11-07"),
(21, 4, 16, 6, 7, 9, "2024-11-07"), (45, 9, 17, 7, 9, 6, "2024-11-07"), (69, 15, 17, 9, 10, 8, "2024-11-07"),
(22, 4, 22, 8, 8, 8, "2024-11-07"), (46, 9, 26, 7, 10, 8, "2024-11-07"), (70, 15, 21, 9, 10, 8, "2024-11-07"),
(23, 4, 24, 9, 8, 9, "2024-11-07"), (47, 10, 4, 9, 9, 8, "2024-11-07"), (71, 15, 25, 9, 10, 8, "2024-11-07"),
(24, 4, 28, 7, 8, 9, "2024-11-07"), (48, 10, 13, 7, 9, 10, "2024-11-07"), (72, 15, 26, 9, 10, 8, "2024-11-07");


-- Tạo bảng học phí
CREATE TABLE tuitionfees (
tuitionfee_id INT PRIMARY KEY,
course_id INT,
tuitionfee FLOAT,
updated_date DATETIME,
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO tuitionfees ( tuitionfee_id, course_id, tuitionfee, updated_date) VALUES
(1, 1, 300, "2021-09-05 09:00:00"), (2, 2, 400, "2021-09-05 09:00:00"), (3, 3, 550, "2021-09-05 09:00:00"),
(4, 4, 250, "2021-09-05 09:00:00"), (5, 5, 350, "2021-09-05 09:00:00"), (6, 6, 500, "2021-09-05 09:00:00"),
(7, 7, 400, "2021-09-05 09:00:00"), (8, 8, 350, "2021-09-05 09:00:00"), (9, 9, 300, "2021-09-05 09:00:00"),
(10, 10, 300, "2021-09-05 09:00:00"), (11, 11, 300, "2021-09-05 09:00:00"), (12, 12, 300, "2021-09-05 09:00:00"),
(13, 13, 350, "2021-09-05 09:00:00"), (14, 14, 500, "2021-09-05 09:00:00"), (15, 15, 550, "2021-09-05 09:00:00"),
(16, 16, 400, "2021-09-05 09:00:00"), (17, 17, 550, "2021-09-05 09:00:00"), (18, 18, 300, "2021-09-05 09:00:00"),
(19, 19, 350, "2021-09-05 09:00:00"), (20, 20, 400, "2021-09-05 09:00:00"), (21, 21, 250, "2021-09-05 09:00:00"),
(22, 22, 500, "2021-09-05 09:00:00"), (23, 23, 550, "2021-09-05 09:00:00"), (24, 24, 400, "2021-09-05 09:00:00"),
(25, 25, 350, "2021-09-05 09:00:00"), (26, 26, 250, "2021-09-05 09:00:00"), (27, 27, 400, "2021-09-05 09:00:00"),
(28, 28, 250, "2021-09-05 09:00:00"), (29, 29, 300, "2021-09-05 09:00:00"), (30, 30, 350, "2021-09-05 09:00:00"),
(31, 31, 550, "2021-09-05 09:00:00"), (32, 32, 350, "2021-09-05 09:00:00"), (33, 33, 300, "2021-09-05 09:00:00");


-- Tạo bảng hoạt động ngoại khóa
CREATE TABLE extra_activities (
activity_id INT PRIMARY KEY,
activity_name VARCHAR(100),
description TEXT,
start_time DATE,
end_time DATE,
updated_date DATETIME
);

INSERT INTO extra_activities (activity_id, activity_name, description, start_time, end_time, updated_date) VALUES
(1, "Hoạt động thể thao", "Bóng bàn, Bóng đá, Bóng chuyền, Cầu lông", "2024-08-01", "2024-08-07", "2024-07-11 15:00:00"),
(2, "Hoạt động tình nguyện", "Chương trình hiến máu nhân đạo, Hoạt động tình nguyện tiếp sức mùa thi", "2024-09-05", "2024-09-07", "2024-07-11 15:00:00");


-- Tạo bảng đăng kí hoạt động ngoại khóa
CREATE TABLE student_extra_activity (
student_activity_id INT PRIMARY KEY,
student_id INT,
activity_id INT,
registration_date DATE,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (activity_id) REFERENCES extra_activities(activity_id)
);

INSERT INTO student_extra_activity (student_activity_id, student_id, activity_id, registration_date) VALUES
(1, 1, 1, "2024-07-11"), 
(2, 20, 1, "2024-07-10"),
(3, 3, 1, "2024-07-09"),
(4, 17, 1, "2024-07-11"),
(5, 5, 1, "2024-07-09"),
(6, 6, 1, "2024-07-09"),
(7, 7, 1, "2024-07-09"),
(8, 8, 1, "2024-07-08"),
(9, 11, 1, "2024-07-11"),
(10, 12, 1, "2024-07-10"),
(11, 13, 1, "2024-07-11"),
(12, 14, 1, "2024-07-12"),
(13, 1, 1, "2024-07-13"),
(14, 3, 1, "2024-07-15"),
(15, 4, 2, "2024-07-07"),
(16, 6, 2, "2024-07-12"),
(17, 7, 2, "2024-07-14"),
(18, 10, 2, "2024-07-16"),
(19, 11, 2, "2024-07-12"),
(20, 13, 2, "2024-07-10"),
(21, 14, 2, "2024-07-09"),
(22, 20, 2, "2024-07-09"),
(23, 2, 2, "2024-07-10"),
(24, 19, 2, "2024-07-08"),
(25, 16, 2, "2024-07-09");



-- Hiện thông tin tên sinh viên, tên môn học và điểm của các môn với học sinh có ID = 1;
SELECT s.first_name, s.last_name , c.course_name, g.exam_score, g.process_score, g.final_score
FROM students s
INNER JOIN grades g ON s.student_id = g.student_id
INNER JOIN courses c ON g.course_id = c.course_id
WHERE s.student_id = 1;