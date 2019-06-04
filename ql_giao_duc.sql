-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 07:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_giao_duc`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id_answer` int(11) NOT NULL,
  `stt_answer` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_testsubject` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id_answer`, `stt_answer`, `id_testsubject`) VALUES
(1, 'câu 1', 1),
(2, 'cau 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `answer_coursesgoal`
--

CREATE TABLE `answer_coursesgoal` (
  `id_answer` int(11) NOT NULL,
  `id_coursesgoal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_coursesgoal`
--

INSERT INTO `answer_coursesgoal` (`id_answer`, `id_coursesgoal`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `coursegoal`
--

CREATE TABLE `coursegoal` (
  `id_course_goal` int(11) NOT NULL,
  `sign` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_course_goal` mediumtext COLLATE utf8_unicode_ci,
  `id_subject` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coursegoal`
--

INSERT INTO `coursegoal` (`id_course_goal`, `sign`, `name_course_goal`, `id_subject`) VALUES
(1, 'G1', 'Kết hợp làm việc cá nhân và nhóm để thảo luận và thực hiện đề tài theo nội dung môn học', 5),
(2, 'G2', 'Trình bày được các khái niệm cơ bản liên quan đến nguyên lý lập trình, cách trao đổi thông tin giữa các cửa sổ, form trong ứng dụng. Khảo sát một số ứng dụng viết  bằng java. Hướng dẫn cài đặt các phần mềm liên quan đến môn học. Tổng quan về java.', 5),
(3, 'G3', 'Hiểu và sử dụng cú pháp lệnh trong Java. Lập trình hướng đối tượng trong Java.', 5),
(4, 'G4', 'Hiểu và sử dụng thành thạo các thành phần: AWT (Abstract Windowing Toolkit), Swing và thiết kế giao diện dùng thư viện JFC (Java Foundation Class)', 5),
(5, 'G5', 'Hiểu và xử lý sự kiện (Listeners and Events) và phương pháp quản lý giao diện (Layout Manager).', 5),
(6, 'G6', 'Hiểu và sử dụng kiến thức xử lý luồng và tập tin trong java.', 5),
(7, 'G7', 'Dùng Java JDBC API để truy xuất dữ liệu từ trình quản trị CSDL SQL Server, MySQL . Sử dụng thành thạo các câu lệnh truy vấn trong ứng dụng', 5),
(8, 'G8', 'Hiểu cách tổ chức code bằng mô hình MVC, hiểu Framework là gì. Cách tổ chức code bằng Framework Hibernate. Cài đặt, kiểm chứng ứng dụng đã đăng ký.', 5),
(9, 'G9', 'Đóng gói và triển khai ứng dụng viết bằng ngôn ngữ lập trình java.', 5),
(10, 'G1', 'Kiến thức nền tảng Java cơ bản và hướng đối tượng.', 2),
(11, 'G2', 'Hiểu, phân tích, thiết kế và vận dụng được công nghệ J2SE: lập trình giao diện và cơ sở dữ liệu trên Java vào việc xây dựng một ứng dụng trên máy tính.', 2),
(12, 'G3', 'Hiểu, phân tích, thiết kế và vận dụng được công nghệ J2EE: lập trình Web với Servlet và JSP vào việc xây dựng một ứng dụng web.', 2),
(13, 'G4', 'Có kỹ năng làm việc nhóm.', 2),
(14, 'G1', 'Khối kiến thức nâng cao của ngành Khoa học máy tính', 19),
(15, 'G2', 'Xác định và hình thành vấn đề. Suy luận và giải quyết', 19),
(16, 'G3', 'Suy nghĩ toàn cục', 19),
(17, 'G4', 'Cách nghĩ sáng tạo', 19),
(18, 'G5', 'Thành lập nhóm, xác định vai trò của thành viên và lãnh đạo nhóm', 19),
(19, 'G6', 'Kĩ năng trình bày', 19),
(20, 'G7', 'Kỹ năng nghe, đọc tiếng Anh', 19),
(21, 'G1', 'Nắm được khái niệm, vai trò của cấu trúc\r\ndữ liệu và giải thuật trong chương trình, các tiêu chuẩn đánh giá cấu trúc dữ liệu, các tiêu chuẩn đánh giá giải thuật', 20),
(22, 'G2', 'Xác định và phát biểu bài toán tìm kiếm,\r\ncác yếu tố có liên quan, các yếu tố ràng\r\nbuộc trong bài toán, mô hình hóa bài toán,\r\nxác định các phương pháp giải quyết bài\r\ntoán, ph n tích các ưu điểm và hạn chế của\r\ncác phương pháp giải quyết bài toán', 20),
(23, 'G3', 'Xác định và phát biểu bài toán sắp xếp, các\r\nyếu tố có liên quan, các yếu tố ràng buộc\r\ntrong bài toán, mô hình hóa bài toán, xác\r\nđịnh các phương pháp giải quyết bài toán,\r\nph n tích các ưu điểm và hạn chế của các phương pháp giải quyết bài toán', 20),
(24, 'G4', 'Nắm vững các cấu trúc dữ liệu cơ bản và\r\ncó khả năng ứng dụng các cấu trúc dữ liệu\r\ncơ bản', 20),
(25, 'G5', 'Nắm vững cách thức cài đặt các cấu trúc dữ\r\nliệu, thuật toán và có thể áp dụng để giải\r\nquyết các bài toán đơn giản', 20),
(26, 'G6', 'Đọc hiểu tài liệu tiếng Anh liên quan đến\r\ncác bài giảng.', 20),
(27, 'G7', 'Biết, hiểu thuật ngữ tiếng Anh chuyên\r\nngành của môn học.', 20),
(28, 'G8', 'Hình thành ý thức trong việc tham khảo và\r\ntrích dẫn các tài liệu tham khảo, các đoạn\r\ncode mẫu,...', 20),
(29, 'G9', 'Sử dụng một số công cụ phần mềm hỗ trợ', 20);

-- --------------------------------------------------------

--
-- Table structure for table `coursesgoal_learningoutcome`
--

CREATE TABLE `coursesgoal_learningoutcome` (
  `id_courses_goal` int(11) NOT NULL,
  `id_learning_outcome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coursesgoal_learningoutcome`
--

INSERT INTO `coursesgoal_learningoutcome` (`id_courses_goal`, `id_learning_outcome`) VALUES
(10, 2),
(11, 5),
(11, 10),
(12, 5),
(12, 10),
(13, 7);

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `id_khoa` int(11) NOT NULL,
  `tenkhoa` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user_truong_khoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`id_khoa`, `tenkhoa`, `id_user_truong_khoa`) VALUES
(1, 'Công nghệ thông tin', 12),
(2, 'Kĩ thuật phần mềm', NULL),
(3, 'Khoa học máy tính', NULL),
(4, 'Hệ thống thông tin', NULL),
(5, 'Mạng máy tính và truyền thông', NULL),
(6, 'Kĩ thuật máy tính', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learningoutcome`
--

CREATE TABLE `learningoutcome` (
  `id_chuandaura` int(11) NOT NULL,
  `kihieu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenchuandaura` mediumtext COLLATE utf8_unicode_ci,
  `id_khoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `learningoutcome`
--

INSERT INTO `learningoutcome` (`id_chuandaura`, `kihieu`, `tenchuandaura`, `id_khoa`) VALUES
(1, 'L1', ' Kiến thức ngành', 1),
(2, 'L2', 'Lập luận phân tích và giải quyết vấn đề', 1),
(3, 'L3', 'Thử nghiệm, khảo sát và khám phá tri thức', 1),
(4, 'L4', 'Tư duy hệ thống', 1),
(5, 'L5', 'Kỹ năng và thái độ cá nhân', 1),
(6, 'L6', 'Đạo đức, trung thực và trách nhiệm', 1),
(7, 'L7', 'Kỹ năng làm việc nhóm', 1),
(8, 'L8', 'Kỹ năng giao tiếp', 1),
(9, 'L9', 'Kỹ năng ngoại ngữ', 1),
(10, 'L10', 'Hình thành ý tưởng, thiết kế, triển khai và vận hành trong bối cảnh doanh nghiệp và xã hội', 1),
(11, 'L1', 'Nắm vững kiến thức khoa học cơ bản và kiến thức nền tảng nhóm ngành', 2),
(12, 'L2', 'Nắm vững kiến thức ngành kỹ thuật nâng cao', 2),
(13, 'L3', 'Kỹ năng lập luận phân tích và giải quyết vấn đề', 2),
(14, 'L4', 'Kỹ năng thử nghiệm, khảo sát và khám phá tri thức', 2),
(15, 'L5', 'Kỹ năng tư duy hệ thống', 2),
(16, 'L6', 'Kỹ năng và thái độ cá nhân', 2),
(17, 'L7', 'Kỹ năng giao tiếp và làm việc nhóm', 2),
(18, 'L8', 'Kỹ năng học ngoại ngữ', 2),
(19, 'L9', 'Hình thành ý tưởng, thiết kế, triển khai và vận hành trong bối cảnh doanh nghiệp và xã hội', 2),
(20, 'L1', 'Kiến thức nền tảng của ngành KHMT', 3),
(21, 'L2', 'Kiến thức chuyên ngành và nâng cao của ngành KHMT', 3),
(22, 'L3', 'Kỹ năng lập luận tư duy và giải quyết vấn đề', 3),
(23, 'L4', 'Kỹ năng nghiên cứu và khám phá tri thức', 3),
(24, 'L5', 'Kỹ năng tư duy theo hệ thống', 3),
(25, 'L6', 'Kỹ năng tự học và học suốt đời', 3),
(26, 'L7', 'Các kỹ năng cá nhân và kỹ năng nhóm', 3),
(27, 'L8', 'Các kỹ năng về ngoại ngữ', 3),
(28, 'L9', 'Đạo đức, trách nhiệm và các giá trị cá nhân cốt lõi', 3),
(35, 'L1', 'Nắm vững kiến thức khoa học cơ bản và có khả năng vận dụng vào chuyên ngành.', 4),
(36, 'L2', 'Nắm vững kiến thức kiến thức nền tảng, nâng cao ngành hệ thống thông tin, các kỹ năng phân tích, thiết kế, lập trình, tổ chức và khám phá tri thức vận dụng vào thực tiễn nhằm hỗ trợ các hoạt động tác nghiệp và quản lý. Đề xuất giải pháp cho các vấn đề trong lĩnh vực CNTT để nâng cao sức cạnh tranh, phát triển của các tổ chức, doanh nghiệp, thiết lập các mục tiêu khả thi, chứng tỏ được sự hiểu biết phù hợp với đương thời. ', 4),
(37, 'L3', 'Có khả năng làm việc trực tiếp bằng tiếng Anh trong lĩnh vực công nghệ thông tin, trình độ Anh văn đạt từ TOEIC 450, TOEFL iBT 45, TOEFL ITP 430, IELTS 4.5, BULATS 47 hoặc tương đương.', 4),
(38, 'L4', 'Có kỹ năng tự học các kiến thức bổ trợ để phục vụ cho hướng công việc tương  lai.', 4),
(39, 'L5', 'Có khả năng giao tiếp xã hội, kỹ năng làm việc nhóm với tác phong chuyên nghiệp và đạo đức nghề nghiệp tốt.', 4),
(40, 'L6', 'Ý thức được vai trò, trách nhiệm, đạo đức nghề nghiệp trong xã hội, có thế giới  quan, nhân sinh quan đúng đắn và có khả năng nhận thức, đánh giá các hiện tượng một cách logic và tích cực.', 4),
(41, 'L7', 'Có nhận thức được sự cần thiết của việc học tập suốt đời, có kiến thức chuyên môn rộng, hiểu được tác động của các công nghệ mới trong bối cảnh xã hội, kinh tế toàn cầu.', 4),
(42, 'L1', 'Kiến thức về khoa học cơ bản', 5),
(43, 'L2', 'Kiến thức của lĩnh vực Công nghệ Thông tin', 5),
(44, 'L3', 'Kiến thức cơ sở ngành Mạng máy tính và Truyền thông', 5),
(45, 'L4', 'Kiến thức về xã hội', 5),
(46, 'L5', 'Kỹ năng lập luận phân tích và giải quyết vấn đề', 5),
(47, 'L6', 'Kỹ năng thử nghiệm, nghiên cứu và khám phá tri thức', 5),
(48, 'L7', 'Kỹ năng tư duy hệ thống', 5),
(49, 'L8', 'Kỹ năng hình thành ý tưởng, kỹ thuật hệ thống', 5),
(50, 'L9', 'Kỹ năng thiết kế', 5),
(51, 'L10', 'Kỹ năng triển khai', 5),
(52, 'L11', 'Kỹ năng vận hành, đánh giá, kiểm chứng và cải tiến.', 5),
(53, 'L12', 'Kỹ năng làm việc nhóm, giao tiếp', 5),
(54, 'L13', 'Kỹ năng ngoại ngữ', 5),
(55, 'L14', 'Thái độ, tư tưởng và học tập', 5),
(56, 'L15', 'Đạo đức, công bằng và các trách nhiệm xã hội', 5),
(57, 'L1', 'Có kiến thức cơ bản và khả năng vận dụng vào chuyên ngành, nắm vững kiến thức kỹ thuật máy tính và ứng dụng vào thực tiễn.', 6),
(58, 'L2', 'Có kiến thức rộng để từ đó hiểu được tác động của các công nghệ mới trong bối cảnh xã hội, kinh tế toàn cầu.', 6),
(59, 'L3', 'Có khả năng nghiên cứu và thiết kế các bộ phận chức năng của máy tính hoặc các bộ phận số trong các thiết bị điện tử.', 6),
(60, 'L4', 'Có khả năng về phân tích, thiết kế, xây dựng các phần cứng và lập trình các phần mềm chuyên dụng; nắm vững các kiến thức lập trình bao gồm cả lập trình cấp cao và cấp thấp, có khả năng lập trình cho các thiết bị ngoại vi, cho các hệ thống nhúng, firmware, driver, thiết bị di động.', 6),
(61, 'L5', 'Có khả năng làm việc chuyên môn độc lập và phối hợp làm việc với các ngành liên quan để giải quyết các vấn đề phức tạp nảy sinh trong quá trình làm việc.', 6),
(62, 'L6', 'Khả năng thiết lập các mục tiêu khả thi, lập kế hoạch phù hợp với điều kiện thực tế, giải quyết các vấn đề liên quan đến kỹ thuật máy tính.', 6),
(63, 'L7', 'Khả năng giao tiếp xã hội, hợp tác và làm việc nhóm với tác phong và đạo đức nghề nghiệp tốt.', 6),
(64, 'L8', 'Khả năng vận dụng các kiến thức, kỹ năng và kinh nghiệm để giải quyết các tình huống nghề nghiệp khác nhau, trong đó coi trọng kỹ năng giao tiếp.', 6),
(65, 'L9', 'Khả năng ứng dụng các cơ sở toán học, nguyên lý giải thuật, và lý thuyết kỹ thuật máy tính trong việc mô hình và thiết kế các hệ thống sao cho chứng tỏ được sự hiểu biết về cách lựa chọn đó là phù hợp với đương thời.', 6),
(66, 'L10', 'Có khả năng làm việc trực tiếp bằng tiếng Anh trong lĩnh vực công nghệ thông tin. Có trình độ Anh văn đạt từ VNU-ETP 8 (TOEFL iBT 35-45 điểm, PBT 417-450 điểm) hoặc tương đương.', 6),
(67, 'L11', 'Có nhận thức về sự cần thiết và khả năng tham gia vào việc học tập suốt đời để có thể làm việc hiệu quả trong bối cảnh những công nghệ mới liên tục xuất hiện.', 6),
(68, 'L12', 'Ý thức được vai trò, trách nhiệm, đạo đức nghề nghiệp trong xã hội. Có thế giới quan, nhân sinh quan đúng đắn và có khả năng nhận thức, đánh giá các hiện tượng một cách logic và tích cực. ', 6);

-- --------------------------------------------------------

--
-- Table structure for table `lopsinhoat`
--

CREATE TABLE `lopsinhoat` (
  `id_lopsinhhoat` int(11) NOT NULL,
  `tenlop` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user_covanhoctap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lopsinhoat`
--

INSERT INTO `lopsinhoat` (`id_lopsinhhoat`, `tenlop`, `id_user_covanhoctap`) VALUES
(1, 'CNTT2016', 11),
(2, 'CNTT2017', 11),
(3, 'CNTT2018', 11),
(4, 'KTPM2014', 13),
(5, 'KTPM2015', 11),
(6, 'KTPM2018', 13),
(7, 'HTTT2015', 13),
(8, 'HTTT2016', 13),
(9, 'HTTT2017', 13);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `name`) VALUES
(1, 'ROLE_STUDENT'),
(2, 'ROLE_LECTURER'),
(3, 'ROLE_MANAGE');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id_bangdiem` int(11) NOT NULL,
  `diem_qt` float DEFAULT '0',
  `diem_th` float DEFAULT '0',
  `diem_gk` float DEFAULT '0',
  `diem_ck` float DEFAULT '0',
  `diem_tb` float DEFAULT '0',
  `id_user` int(11) DEFAULT NULL,
  `id_monhoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id_bangdiem`, `diem_qt`, `diem_th`, `diem_gk`, `diem_ck`, `diem_tb`, `id_user`, `id_monhoc`) VALUES
(1, 5, 10, 10, 10, 10, 10, 5),
(2, 6, 10, 10, 10, 10, 10, 6),
(3, 1, 10, 10, 10, 10, 10, 1),
(4, 2, 10, 10, 10, 10, 10, 2),
(5, 3, 10, 10, 10, 10, 10, 3),
(6, 8, 9, 9, 9, 1, 10, 8),
(8, 9, 6, 5, 7, 9, 14, 2),
(9, 3, 4, 5, 6, 7, 15, 2),
(10, 1, 1, 1, 1, 1, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id_monhoc` int(11) NOT NULL,
  `ten_monhoc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tg_batdau` date DEFAULT '0000-00-00',
  `tg_ketthuc` date DEFAULT '0000-00-00',
  `so_tin_chi` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id_monhoc`, `ten_monhoc`, `code_subject`, `tg_batdau`, `tg_ketthuc`, `so_tin_chi`) VALUES
(1, 'Tối ưu hóa công cụ tìm kiếm', 'tuhcctk2019', '2019-10-10', '2019-10-10', 4),
(2, 'Công nghệ Java', 'cnjava2019', '2019-10-10', '2019-10-10', 4),
(3, 'Phát triển ứng dụng web', 'ptudw2019', '2019-10-10', '2019-10-10', 4),
(4, 'Quản lý thông tin', 'qltt2018', '2019-10-10', '2019-10-10', 4),
(5, 'Lập trình Java', 'ltjava2019', '2019-10-10', '2019-10-10', 4),
(6, 'Internet và công nghệ Web', 'ivcnw2018', '2019-10-10', '2019-10-10', 4),
(7, 'Hệ điều hành', 'hdh2018', '2019-10-10', '2019-10-10', 4),
(8, 'Tư tưởng Hồ Chí Minh', 'tthcm2018', '2019-10-10', '2019-10-10', 2),
(9, 'Thiết kế và lập trình Web	', 'tkltw2019', '2019-10-10', '2019-10-10', 4),
(10, 'Xử lý tín hiệu số', 'xlths2019', '2019-10-10', '2019-10-10', 0),
(11, 'An toàn mạng máy tính', 'atmmt2019', '2019-10-10', '2019-10-10', 0),
(12, 'Thiết kế hệ thống số với HDL', 'tkhtts2019', '2019-10-10', '2019-10-10', 0),
(13, 'Tương tác người - máy', '2019', '2019-10-10', '2019-10-10', 0),
(14, 'Trình biên dịch', '2019', '2019-10-10', '2019-10-10', 0),
(15, 'Logic mờ và ứng dụng', '2019', '2019-10-10', '2019-10-10', 0),
(16, 'Kỹ thuật chế tạo vi mạch', '2019', '2019-10-10', '2019-10-10', 0),
(17, 'Thiết kế vi mạch hỗn hợp', '2019', '2019-10-10', '2019-10-10', 0),
(18, 'Kĩ thuật thiết kế mạch in', 'kttkmi2019', '2019-10-10', '2019-10-10', 4),
(19, 'Cấu trúc dữ liệu và giải thuật nâng cao', 'ctdlgtnc', '2019-05-01', '2019-05-18', 4),
(20, 'Cấu trúc dữ liệu và giải thuật', NULL, '0000-00-00', '0000-00-00', 4),
(21, 'Cơ sở dữ liệu', NULL, '0000-00-00', '0000-00-00', 4),
(22, 'Đồ họa máy tính', NULL, '0000-00-00', '0000-00-00', 4),
(23, 'Hệ quản trị Cơ sở dữ liệu', NULL, '0000-00-00', '0000-00-00', 4),
(24, 'Kỹ năng nghề nghiệp', NULL, '0000-00-00', '0000-00-00', 2),
(25, 'Lập trình hướng đối tượng', NULL, '0000-00-00', '0000-00-00', 0),
(26, 'Lập trình Java', NULL, '0000-00-00', '0000-00-00', 0),
(27, 'Logic mờ và ứng dụng', NULL, '0000-00-00', '0000-00-00', 0),
(28, 'Lý thuyết thông tin', NULL, '0000-00-00', '0000-00-00', 0),
(29, 'Ngôn ngữ lập trình C#', NULL, '0000-00-00', '0000-00-00', 0),
(30, 'Nguyên lý và Phương pháp lập trình', NULL, '0000-00-00', '0000-00-00', 0),
(31, 'Nhập môn Công nghệ tri thức và Máy học', NULL, '0000-00-00', '0000-00-00', 0),
(32, 'Nhập môn lập trình', NULL, '0000-00-00', '0000-00-00', 0),
(33, 'Nhập môn mạch số', NULL, '0000-00-00', '0000-00-00', 0),
(34, 'Phân tích và thiết kế hướng đối tượng với UML', NULL, '0000-00-00', '0000-00-00', 0),
(35, 'Phân tích và thiết kế thuật toán', NULL, '0000-00-00', '0000-00-00', 0),
(36, 'Toán rời rạc nâng cao', NULL, '0000-00-00', '0000-00-00', 0),
(37, 'Trí tuệ Nhân tạo', NULL, '0000-00-00', '0000-00-00', 0),
(38, 'Xử lý ảnh và ứng dụng', NULL, '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testsubject`
--

CREATE TABLE `testsubject` (
  `id_testsubject` int(11) NOT NULL,
  `id_subject` int(11) DEFAULT NULL,
  `name_testsubject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testsubject`
--

INSERT INTO `testsubject` (`id_testsubject`, `id_subject`, `name_testsubject`) VALUES
(1, 1, 'giua ki'),
(2, 2, 'giua ki'),
(3, 3, 'giua ki'),
(4, 4, 'giua ki'),
(5, 5, 'giua ki'),
(6, 6, 'giua ki'),
(7, 7, 'giua ki'),
(8, 8, 'giua ki'),
(9, 1, 'cuoi ki'),
(10, 2, 'cuoi ki'),
(11, 3, 'cuoi ki'),
(12, 4, 'cuoi ki'),
(13, 1, 'qua trinh'),
(14, 1, 'thuc hanh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `id_khoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`, `ngay_sinh`, `id_khoa`) VALUES
(10, 'student', '$2a$10$cHlUA/XniX6YWLdJvcKb/u9vdn9IMjGhWOcAO32nsjMXtm3lnP5Aq', 'Hà Tiến Dũng', '1969-10-30', 1),
(11, 'lecturer', '$2a$10$ff3hPk1isW8hdhaAqQ8Eje37vbSNSJ5XjbnFhFJD8Yrli4kagHcQq', 'lecturer', NULL, 1),
(12, 'manage1', '$2a$10$cSBYRKQGbjjVn.6gW//8XuzUGItXyWVatSxVfFYKkKM244K7x51zu', NULL, NULL, NULL),
(13, 'manage2', '$2a$10$8/OvXxypYQBtv1yJpqn6VOA7VduNN6LZG5hFsg5nymXJSjnKLsU4K', NULL, NULL, NULL),
(14, 'student 1', '$2a$10$6nl0sQsXHD9Te9GHe2xKv.CPgxHMUa3khxtgD9XYbAD5WAn.RlkfW', 'student  1', NULL, NULL),
(15, 'student 2', '$2a$10$pBetJALm.sXUm0P3ZMKmJuuOYM3CsjKbeQezIBnEqd3VwVIOhLJvC', 'student 2', NULL, NULL),
(16, 'student 3', '$2a$10$Pm5nhF9o/B1RsldVvjKCyuEHEsaPKT1xXmJ.nXExQMidvToO95O3O', 'student 3', NULL, NULL),
(17, 'student 4', '$2a$10$wno.s/kk7W8cIcJgI.qXUuCLLET4MmjyZQ2ks2o4hW..Vrm9k7Mky', NULL, NULL, NULL),
(18, 'student 5', '$2a$10$7m2jIVHH8JNhi2n4et8BBeUkoBwElXn3i1d3jwjXBS15AX0401Tj.', NULL, NULL, NULL),
(19, 'student 6', '$2a$10$tAw4V8mRMEp5X.kJk2n.3.Y8w.pckMNaSFqT8cDiSLlQk5YHre.qi', NULL, NULL, NULL),
(20, 'student 7', '$2a$10$z2LzCvD0qlmYiMPb5PLFFeJWuYGanbCuxXH4bZe3gPsfmKwjC5ESO', NULL, NULL, NULL),
(21, 'student 8', '$2a$10$QSiM71rtvTKmRQPyz/XouOnGc9MA4cX4b5UVuMGO4DWBIOXnemPIC', NULL, NULL, NULL),
(22, 'student 9', '$2a$10$N3xeUA6THDxcvch/QCfSz.FTgp9U9VdOGQL9U2ugvmx9A.fumNgFy', NULL, NULL, NULL),
(23, 'student 10', '$2a$10$Iqc7P24O55YrZxCs2Wo6V.i439bcK1b3ndvxkSUXK9mzc7NTgybfu', NULL, NULL, NULL),
(24, 'student 11', '$2a$10$yjQxbHeLq4gqYu3thL6ys.13.c92HI8OMqyeBjFx8FbqgUmRVfuEq', NULL, NULL, NULL),
(25, 'student 12', '$2a$10$A/HCucrJtXrSgt8gRKb9y.Uo2XmuQZz.SwBmtIQCoZcSbItGli5LO', NULL, NULL, NULL),
(26, 'student 13', '$2a$10$KNMQRhlD3n863WrfV3tUXODKUZNVae4kD8rp7jY94EG0rHdV8heqe', NULL, NULL, NULL),
(27, 'student 14', '$2a$10$428WoCZv7Ht2uQBJbae7Du/leWkPC7TOYQiA3FBMLcr889Dn5xzOu', NULL, NULL, NULL),
(28, 'student 15', '$2a$10$OQi/U0MKa.G.Pm0l67.b9ux0D4GTa1UJuoJ5UsPJmeX4Re.h8rew.', NULL, NULL, NULL),
(29, 'student 16', '$2a$10$aPNs2KIV6cWbTPXRRO26kO04tY6wxBUh2C0zNC3nOXSWQs1t0611G', NULL, NULL, NULL),
(30, 'student 17', '$2a$10$ZMWiZrOaUXYGCyuMlc5LDuuElJo1xxN16p7N.Tydlf35xqTWxay/u', NULL, NULL, NULL),
(31, 'student 18', '$2a$10$USBvigc11/7oO9nvtgud1O8qzfijX7FWTFbDWecJf0um5PxDQHLf2', NULL, NULL, NULL),
(32, 'student 19', '$2a$10$EIRQXY/lR62MforJruCvVuF.1QtHvHcTJaJFhRIJzph1OYtXJWARC', NULL, NULL, NULL),
(33, 'student 20', '$2a$10$R54YQ0M1hHnORLpOMadIIOKoP52.2K5QheO4zvi8byCBDix4TGxAi', NULL, NULL, NULL),
(34, 'student 21', '$2a$10$rZM5PqFX0pw.YLXWv3nwiecV.qaGaAW9Ifb22EpccQBgCKvlRuQAq', NULL, NULL, NULL),
(35, 'student 22', '$2a$10$djkJOmcsBCTslAuEg7AOguHWMmdhFUUSNCZ5Af1QNsPuRBldVjG4.', NULL, NULL, NULL),
(36, 'student 23', '$2a$10$6KIBnXwwgCJpLNFgPOZcI.rvUQOm2bs9ULAzEQBlTp9rJi4jjJvRu', NULL, NULL, NULL),
(37, 'student 24', '$2a$10$aIOK.sqtO2hODiU5ETZ64.rGlfewxKjIHpeRtbwaFRSWD0ACkh5Ty', NULL, NULL, NULL),
(38, 'student 25', '$2a$10$sTdo/0E3KcF6qGIS9RkS9OMQfUXv9x0V/fXsFgHHpFG9dktl3303.', NULL, NULL, NULL),
(39, 'student 26', '$2a$10$VeKO5CXDuFRwuy41xYa1iuDQU8tfUGfvK7P0A4a2oBukvs7OwNjpe', NULL, NULL, NULL),
(40, 'student 27', '$2a$10$2bV/HKXwOG3VZnfazcVseOoeZLx5SrYpHdYN6.0pa1v5Kb9tK68OW', NULL, NULL, NULL),
(41, 'student 28', '$2a$10$r3QgqIM/pP8Tj6405kECWelcn/8hGuv6flet0TSQhCOIHJpmWvRIW', NULL, NULL, NULL),
(42, 'student 29', '$2a$10$2b2mMw/1Sn4HGdvXE.p.o.uQ3TDDUdHJ1Qm2z7edAr4l7Cr0RkeKe', NULL, NULL, NULL),
(43, 'student 30', '$2a$10$.qHU8ydH6Kh3e7jT09eV8Oj0bfuw3sBCuuivOw/YpcEddQkumKR5G', NULL, NULL, NULL),
(44, 'student 31', '$2a$10$vsQChvy/Gq4.JQSyLpY7yORAE5mYCS49ynwOhzL7CE.ESz1iWYwVe', NULL, NULL, NULL),
(45, 'student 32', '$2a$10$gtJ2BHAJcztcbYLvk1nVO.5qPrKxTEX9V0vqOZCIh92a3XVeqp0Li', NULL, NULL, NULL),
(46, 'student 33', '$2a$10$0FomaMAkE/ht5NsyF/CyHOJThZxR5gbSfLz7x.sHpPGIkpASIUloy', NULL, NULL, NULL),
(47, 'student 34', '$2a$10$.3jbyRzN5NTUPavJOwbJget6CXnkpLyzdWadOk14zqle241Rf4CIa', NULL, NULL, NULL),
(48, 'student 35', '$2a$10$nC/GpPYY34JrgxuT2snE7ORIRW9PTlX3lGvDCEltfOKd7ojRqUbQu', NULL, NULL, NULL),
(49, 'student 36', '$2a$10$4iJnwgcQuK.w8zYN4RP0Vu7vkndZw1mHXRCuw7u.zUN3f3sucHDnO', NULL, NULL, NULL),
(50, 'student 37', '$2a$10$sivYAXncMVj2Oou3xQF4cOz09G2pQSMxtMnAI4qjZIrcwD4D4Ykdq', NULL, NULL, NULL),
(51, 'student 38', '$2a$10$MNmrdBqnuYFY34z6upzHiOEaagYJO5J33mwNZn1ILlW/6Z4UBtr2.', NULL, NULL, NULL),
(52, 'student 39', '$2a$10$z1rU7XUACKumN2thcBTAreMt2psHxwhnGODw8gadUhrSUsRRm.oHC', NULL, NULL, NULL),
(53, 'student 40', '$2a$10$qmpF9mC8vIvRtsO46AsaNu94PBVm8YFeo/.sTwlLht/4fU.k.Z4Yy', NULL, NULL, NULL),
(54, 'student 41', '$2a$10$hFPXhfzOBGmluLTCrFixcu81U66z9fAyiQWs1WgSpkLWD5rO/St82', NULL, NULL, NULL),
(55, 'student 42', '$2a$10$S4FKJbqI/sh3IH4LS2vRhOEhQYZH02.ULF.m6D82vUSTuipkcawx2', NULL, NULL, NULL),
(56, 'student 43', '$2a$10$ZOdFTLNxvMHbq.FNvTageuxEAvAHbqjzKgnNU8hKlk/s9wkFV03c.', NULL, NULL, NULL),
(57, 'student 44', '$2a$10$4BqhIBG5OCatHsJO.KrHVuQwiYXxkEWm6MTojJSp.8J69c1xz9HUe', NULL, NULL, NULL),
(58, 'student 45', '$2a$10$U4EZBuoTKU7YMkj5Y.ScU.xbfeysCc3Pna3yKvOjoMkSnGFIea42W', NULL, NULL, NULL),
(59, 'student 46', '$2a$10$BczpI9fJh585I3sxcrzVneFW2YDNT/DUMoPxWSfhXIcE18xRQCSsa', NULL, NULL, NULL),
(60, 'student 47', '$2a$10$5ttDYTWoO6hV5tIIB0UbNeGIl2.q1p7HTPLkculf9Pr1cJSTRwkwK', NULL, NULL, NULL),
(61, 'student 48', '$2a$10$feV3GUs5OVvj31/X73iidOjgecRfcF45jJvq2yIDLD3PaS.TYAYiK', NULL, NULL, NULL),
(62, 'student 49', '$2a$10$Q0tSA0wnNuZcA4jS38qO3uFR42HDcHfY.PQoCgZYViI3XIb/ztE1S', NULL, NULL, NULL),
(63, 'student 50', '$2a$10$4UBrabz8WXy8YypJ8YBdh.Mu04/FozpU4fCqzI.ukTjnZ2TQ1ZZ92', NULL, NULL, NULL),
(64, 'student 51', '$2a$10$xMgcmR0766ixsyM0bbNV7uM.glpcfFVFGuCB/9KWHGQI2Jyzw..sm', NULL, NULL, NULL),
(65, 'student 52', '$2a$10$Lw1HzE7L80VaPfl/11UId.XrEwHBybaljg0Xav9nbgBgeCtP2V42i', NULL, NULL, NULL),
(66, 'student 53', '$2a$10$zkWuesFKFNi.9f29fXqhXO83Br/gfAS5TWmmLn5jpAZw36AuYf6Y.', NULL, NULL, NULL),
(67, 'student 54', '$2a$10$C9Fyb91iXySBUtYW6cgY9OS.G2FccCZTR6adebUoX.hpreHa7x.1q', NULL, NULL, NULL),
(68, 'student 55', '$2a$10$hK6YVAMf0hEnsg74FMSgNuYjTLIisZc9bsh/jrPCCTnlYOy7bgUCu', NULL, NULL, NULL),
(69, 'student 56', '$2a$10$Kr0eIueGEW/REzXSbZY2IuJR1jSsclB8ejZ1HK8g4yPNaWYZK2p4e', NULL, NULL, NULL),
(70, 'student 57', '$2a$10$fxgKZyIXQEWA1CKN/hqFvupCvhfOg.SnH3c6AnrI9xZRZgTYF37nq', NULL, NULL, NULL),
(71, 'student 58', '$2a$10$Aq/ZG0I5QbzfoKPzykT/0Og.Q/fU2a0ff2gIXXedbfy4UTklo3D0K', NULL, NULL, NULL),
(72, 'student 59', '$2a$10$stEKxVB930Ok/3ScdYhTn.PU9KRwDGm5a03OAN9DUnVc36DVjMkSW', NULL, NULL, NULL),
(73, 'student 60', '$2a$10$OYy3ahzASXuKG448Q4SZk.s1b7G2GISIqoXzyZaT8438iI3hjFWPe', NULL, NULL, NULL),
(74, 'student 61', '$2a$10$TSRhktK2LSGga4QGWntEqODvVOEpJKZvjPBp6kiRHsPIuxD64KDV.', NULL, NULL, NULL),
(75, 'student 62', '$2a$10$DcbY3YsVxzp0R./4Tv7Wlu46ElOOLgzGhvtL1QKuKM8fEpSRFSH3W', NULL, NULL, NULL),
(76, 'student 63', '$2a$10$6Oy3k.FjqJ4vuSvlP.FcdOtBhmOcb8qFLdFh1q3E6fz4T/GAKZeOu', NULL, NULL, NULL),
(77, 'student 64', '$2a$10$Lka5bEgTcmsgQjSovWcAte0JCNUUR303K0BCSXqrM.xRlNKr/ct86', NULL, NULL, NULL),
(78, 'student 65', '$2a$10$BaYg3Se/uwEN9Z82Y4LJbuswQiU69uPClHHQk7YOFY.VS8t/zB7ty', NULL, NULL, NULL),
(79, 'student 66', '$2a$10$lUq2nBthAjUxxm90eB6wCuslnhVyx7Zf3Cq3dTlslyMWPPss3Vixi', NULL, NULL, NULL),
(80, 'student 67', '$2a$10$hbciE7.sILoPw33hjIEuougA6ZkydEf8kqk1fFn9Ngon.tWl2v/ea', NULL, NULL, NULL),
(81, 'student 68', '$2a$10$mjL6cN7Lnzfj3/tyZjcIKOBGN0CTR6Lh5lOlhhEEDdeLHBf9.T7jS', NULL, NULL, NULL),
(82, 'student 69', '$2a$10$FK9tj.X2G8I9E3VnOAlUPOIGNZYNEigptvTnxbKfcEo0WaRb66zRu', NULL, NULL, NULL),
(83, 'student 70', '$2a$10$JDIBRVPbogHM1KnZq/3KzOFEaP4KXJ9hYVEKJPE9itlhveeZBwhqu', NULL, NULL, NULL),
(84, 'student 71', '$2a$10$O2Z8BZpR7kDcqzL80wCoPuov3Ru3R56M06dU71Ev25NJPkJHozOua', NULL, NULL, NULL),
(85, 'student 72', '$2a$10$0oz2Dppe/ZPku7QnpKb5Bu.tjBx/9NT03Ii7PLFg5JmHiJTcZtjEW', NULL, NULL, NULL),
(86, 'student 73', '$2a$10$AB8w1skKBfvN7OjyKPiZu.BXLQaXP4YYU4x1Ni6Qy4MrLv5i50qlq', NULL, NULL, NULL),
(87, 'student 74', '$2a$10$tUmiUdyBSmL7jf7vsejBQuFMr4SJEauyHH5xAKUyFFg4bjJRhdcuO', NULL, NULL, NULL),
(88, 'student 75', '$2a$10$w.FYRagC9WO/C4G0EXE6ael0MBuYBm9k3IR2ABFB91FTOFGrflCR.', NULL, NULL, NULL),
(89, 'student 76', '$2a$10$Mzd2XsWSpBg.AYewLz4Zq.4vzZhok/5/iHctWWWBd0n0jgG2lE2IK', NULL, NULL, NULL),
(90, 'student 77', '$2a$10$cP/5IzNin6snEd1Z5Mmp5uEmN7xEwAxBHkm3Hyd6JfMZBJwzPIzou', NULL, NULL, NULL),
(91, 'student 78', '$2a$10$ySQx8pVg7DMGd94Ea.0jEuJqnR47vjaFMAELTYvqxihdo28jI6Fi6', NULL, NULL, NULL),
(92, 'student 79', '$2a$10$CRCIDnHRgFM/YescAco5IOXWFPq7Gn6PdiLPptWTg7kkovZvyAho.', NULL, NULL, NULL),
(93, 'student 80', '$2a$10$OigZxQ6Hp1ZyjlvhcQUSre0J5dsdzGsVrio.T3JcQZ15HYQXo8Xiq', NULL, NULL, NULL),
(94, 'student 81', '$2a$10$Lg35quC287hzswbA/95pSOHa2K7OZLNJHWhaTaR0O..JJIbY537ES', NULL, NULL, NULL),
(95, 'student 82', '$2a$10$ttLFpC24SCIdUF1pmz1HsefYGEWv6DryKUjitTa6HV0MgYYuCmMnO', NULL, NULL, NULL),
(96, 'student 83', '$2a$10$jYAvADtZNXnmZ/xzJt5cFen8Q7QztMY5fW6xUPb5kYNzBoYYvb4EW', NULL, NULL, NULL),
(97, 'student 84', '$2a$10$CZ3DyiqjFgGa1MBViSheQugkGINq9VxATYquQ2AC.N2d72e/deWqS', NULL, NULL, NULL),
(98, 'student 85', '$2a$10$IO1uFxnskTdFj93zWXTFceGgPl4YGOqpixx.Q2ouk6cTxXZ.EStbK', NULL, NULL, NULL),
(99, 'student 86', '$2a$10$2eO1.H/auc49IDTFqRO03ecbB4PfaBPKiG6lgEXvTYujB.pLXNPEu', NULL, NULL, NULL),
(100, 'student 87', '$2a$10$ug6uVj.O4ST3YIUiAcAq8.pPA11T7czCd/7cUqGN/R85tAO6aHfQ2', NULL, NULL, NULL),
(101, 'student 88', '$2a$10$Gqmz2mTgHI1ukhf8btTXVeJe2EJSKv15R1f6U0VYYBL4nI7g2HWKO', NULL, NULL, NULL),
(102, 'student 89', '$2a$10$AdQKO9uXbJHgIMv90BBX.O3J0a3bP4VxcCYz6pyNLMRIHNx1Hm99a', NULL, NULL, NULL),
(103, 'student 90', '$2a$10$NnjcOUcOG8vgersIQMboFulvOsI9Opt8CmWAVWikeDWGu6JC4NWiy', NULL, NULL, NULL),
(104, 'student 91', '$2a$10$D1ABeBb6OeNZtMt58Yq2f.GSDS1su4zKrISYqjx6D1IyIHFwGmz7e', NULL, NULL, NULL),
(105, 'student 92', '$2a$10$wlUOfIs8SeEZw..EVZ3B5eTKDIZDF0H/TE7vywSB6ikvIVGv.3hfG', NULL, NULL, NULL),
(106, 'student 93', '$2a$10$Xdy9CbkhBIu86GW6QUUPPOqpg2zypPmpdCvrxsuh2EcN0L1to0kfS', NULL, NULL, NULL),
(107, 'student 94', '$2a$10$9G4hQmpv3r2gsk2hNXJiF.NuBnUiX84O/DDGtqQCBiI2OH439OLhS', NULL, NULL, NULL),
(108, 'student 95', '$2a$10$t..LoQAu12vVZzk1A/bWWeLXr/cOoCkGMfSdvbMfvvSNSiCj3ME9W', NULL, NULL, NULL),
(109, 'student 96', '$2a$10$p0jPyhqO4YZLrP5YLOrYr.Ckf691ilzw4kvWc/OYfNXs8vXXb/GjK', NULL, NULL, NULL),
(110, 'student 97', '$2a$10$Ml/C94aOP.akdQRSi4gZmuXFKcsnR8sq5QBonOGOTz7uCgaqSv3YW', NULL, NULL, NULL),
(111, 'student 98', '$2a$10$1BCg723sNr/druVWRo.PLeUJb2PSKDIcifBrmmDJL6b6cQptBgkSG', NULL, NULL, NULL),
(112, 'student 99', '$2a$10$uU9Mv70WQkbDmUQBOAAtv.dQgEUw3BXe0JsurAzp55RZTv0qLuEhC', NULL, NULL, NULL),
(113, 'student 100', '$2a$10$YgMBIIlvtExlhx8Nb5oLc.rH/BojT/VCoGnzQFznEJyGwvyQ3SmPW', NULL, NULL, NULL),
(114, 'student 101', '$2a$10$2P4qz7KtkEol40H8g73g3.lLZv1K3mci/JjdzyDpxTN/j45Eq6b.O', NULL, NULL, NULL),
(115, 'student 102', '$2a$10$IIlVPTzAeWMQCQQ.Y9mCXuLqpcLX2DTyAFXZlqnE8owWSPgQ4fBt6', NULL, NULL, NULL),
(116, 'student 103', '$2a$10$uOww7hh9EVccyv24yi3.h.JeWxLeJ60XPPW/02coreKxcClvAdk9W', NULL, NULL, NULL),
(117, 'student 104', '$2a$10$AGMhuWZeU8i3HMheauP7B.Yygx8iX2uK234Kvnn2xMOUjHDBXqkZ.', NULL, NULL, NULL),
(118, 'student 105', '$2a$10$TABZwTVk0QRRAXvniA/JT.1U4L7pVE3icAear.edioTsfdI/PnpKC', NULL, NULL, NULL),
(119, 'student 106', '$2a$10$llb57IgxnGHax1f919RQtuNDS0GFZmz1QIho1wuJWGIBXP.ivMpPa', NULL, NULL, NULL),
(120, 'student 107', '$2a$10$XgV37kysBbFdnX9h265skeCzn/a88PMZdckaYSZruuTPaKlJfWkPe', NULL, NULL, NULL),
(121, 'student 108', '$2a$10$iVk6LHr1dlHRGQjSEnAs/eY1wyTyW92bLUQ9.GrTjLFGj2l9lG3Cq', NULL, NULL, NULL),
(122, 'student 109', '$2a$10$yt7b6sKjwmTgiKvfxLAW0uNdVLYVF0d8lD9UP3IukgdLnz0HykU4O', NULL, NULL, NULL),
(123, 'student 110', '$2a$10$pKHG04vGUfmlKkJLrFz29ebEq/87HjcmTYFRHbBYUXnx3D9w/e712', NULL, NULL, NULL),
(124, 'student 111', '$2a$10$RsQRp7ZHBu3l6V041ZZOkuyBNEYfZzcjCBGfFDJFBNMQGrcOuVlvS', NULL, NULL, NULL),
(125, 'student 112', '$2a$10$gTaFzB.icZdIzYPrYdvyIeHW/QSqqsvB/ywWqr0fNlB3vQiVxwVrO', NULL, NULL, NULL),
(126, 'student 113', '$2a$10$M7DaxdEE0.sDwSJddCjFgu.kIuYQKrPF5k3T/tf6YUBlj7LNOG5VG', NULL, NULL, NULL),
(127, 'student 114', '$2a$10$qaASH.U4Cz3wXfF/B8uNd.nC/GvdcZcFSHBP5leALdugASxE.Ktn2', NULL, NULL, NULL),
(128, 'student 115', '$2a$10$MA.gcGwi69WQ422Oz30iyO6ICo6BwBPMeKIGqTJY24evoBYQT.JaG', NULL, NULL, NULL),
(129, 'student 116', '$2a$10$s0bbikGQLUtFdyXW2J2VyuIkiRrvhkrFP9KB53BN5hDsH4u3IWB.S', NULL, NULL, NULL),
(130, 'student 117', '$2a$10$q55J7disjT3.GzyRqMzkl.VqtRARHm.OqSDiCPXrNTFLukZpRtOyK', NULL, NULL, NULL),
(131, 'student 118', '$2a$10$hGfFXMkQDsxyoDU2/mtVr.USh9d8dL2amzOkJ6qPLt0bKbOuz4hOe', NULL, NULL, NULL),
(132, 'student 119', '$2a$10$DapCOl55wAJBfPj9JgW6QusjkjC/xe7YLGasfeYKDTDc/.e/m9osS', NULL, NULL, NULL),
(133, 'student 120', '$2a$10$Fa6ANwu8VKcPZ9COPBC6mOXqi29aFeXp2LFYSRrBzB1Xmfrt1hPuO', NULL, NULL, NULL),
(134, 'student 121', '$2a$10$BRO9ysY1LU2/WKMFDErjAOZ3OAAUuZAk.psnmMUmVdAuw/IfUib6e', NULL, NULL, NULL),
(135, 'student 122', '$2a$10$kmikZlWtVaFC2aVmdr8KK.lLfdGci13xrJ6Pk4QdqqNyRdsMbwkv2', NULL, NULL, NULL),
(136, 'student 123', '$2a$10$/T0kKzYXFIzR130I4X1IwOgmwPyCv/5./Q2HFr2aX5PVdGjimcr2q', NULL, NULL, NULL),
(137, 'student 124', '$2a$10$gOZ03T.oKENFaTiOidYLzulwgNhHdAfH6hv5lwBcPf2MTqle/seBK', NULL, NULL, NULL),
(138, 'student 125', '$2a$10$21zKdefGrs.SF/mZi4lxHez6XnYQK2qZSeUyEApsALxNC7OikYRMe', NULL, NULL, NULL),
(139, 'student 126', '$2a$10$srBxLrRoTjNM0fKGu.p.muv/UWNpkG1rnbMKdLAytzUUy1691Dune', NULL, NULL, NULL),
(140, 'student 127', '$2a$10$iWl81E/.z1jFm63YFyvKAeRQ329yIw81qWNgeEB0EzSeJJRZuGX8m', NULL, NULL, NULL),
(141, 'student 128', '$2a$10$4L0xo5SD9nJu1sr/tbSnB.liO4s9Bsbm0zH.buCL.FvTh5rvxUNRK', NULL, NULL, NULL),
(142, 'student 129', '$2a$10$3bri4KnJvLjs1XDNjmOuGO96P.TgsipKw2f66pjPuXVq/NPLnkp2e', NULL, NULL, NULL),
(143, 'student 130', '$2a$10$KV0fpdynu4q4hK0iDKeXk.JyGwq6VZAeCHbQc5KQZs9AVZbvAH1Jq', NULL, NULL, NULL),
(144, 'student 131', '$2a$10$DnZMO5plsx7EY/F5jZKHdumvvIDvY27n9W5RoCUB2sVXMFt18xaqm', NULL, NULL, NULL),
(145, 'student 132', '$2a$10$bhlm8QeuX60csbHogizQ1.Zzcr9.cSJ1aAayo7Uytw5HgcRmB60Ly', NULL, NULL, NULL),
(146, 'student 133', '$2a$10$nait0DVonm5LhuRChPieZuDZyp7XO1wGMbNzLof56dbZapaP8fSpS', NULL, NULL, NULL),
(147, 'student 134', '$2a$10$zdAAIu7Etf8fYREFELSQWOBt1kv1wfjOQ7reiHhEpP8/IxroZM3w.', NULL, NULL, NULL),
(148, 'student 135', '$2a$10$/8FZKqB9PAf.fwlyQpZ.EeHh7qpmTvyW.i1uGEdbYjGxxLnusJIKq', NULL, NULL, NULL),
(149, 'student 136', '$2a$10$qALwPzof3Jz0SATB2P4QM.ioBMT00jGhBJ02PFd1CPQqCGdFJFtiS', NULL, NULL, NULL),
(150, 'student 137', '$2a$10$aTZ5nRF3mtw5r8sI.ZZKI.r6nKlOMJr.Wgm413P31Rjnt/nkT2RUC', NULL, NULL, NULL),
(151, 'student 138', '$2a$10$u4TN4fE/hGo9abSJkBqGE.aj36juQ3WnDwnldot1Sv.hLfygPxsmG', NULL, NULL, NULL),
(152, 'student 139', '$2a$10$Q4hs/wJe1PPM0tr4NUqvE.5GSYuv6CI3/aSTMFTW.QrZh3uJtcF66', NULL, NULL, NULL),
(153, 'student 140', '$2a$10$diD3ZZXVDVNVw4jOEn1dJOfCMICYoh7NC02cySukKcua28EJrEfSe', NULL, NULL, NULL),
(154, 'student 141', '$2a$10$Y/3hNmq6Pnu1xQ0VuEtCKeVP81BDYoSncn8eJYM61KG4ZIyI1aQ3e', NULL, NULL, NULL),
(155, 'student 142', '$2a$10$XkhynRIood1dFxzR3FTLn.kz1a1kGuUpDjJ5cCsaDFfmziaJMuhji', NULL, NULL, NULL),
(156, 'student 143', '$2a$10$LKliY5I25iBkI2WGmHlBdu/scVZwPig4FHaqfTcZTF48FY.fy7PVG', NULL, NULL, NULL),
(157, 'student 144', '$2a$10$mmH8NIbAMupuL5T50O/6kOZIJpHObJhVJjm2b2LuSFU1jQ0az1ZlW', NULL, NULL, NULL),
(158, 'student 145', '$2a$10$T640hycuiLc2AtDfbN9ZnO.2z1D6a2fKfyA/RMWsiXMz8mgzhulnm', NULL, NULL, NULL),
(159, 'student 146', '$2a$10$WXwM1GBnmJlXIaTq79zoD.wMOLBGHAlJZXH32p83kpCYGdNfuDini', NULL, NULL, NULL),
(160, 'student 147', '$2a$10$nHz4qc3bHxIug58fbMGgWu36IIJkLjSxIl5EpelJJ1.xbrv4saofS', NULL, NULL, NULL),
(161, 'student 148', '$2a$10$nSz0TPbrkpGk2P4qX5BAAeNLJhiSfVfKtmVmWQe.xlPiPjmrRMIt2', NULL, NULL, NULL),
(162, 'student 149', '$2a$10$yfwV2V9CifiY3oAlYRg2r.GjmpeLKFu3OxtH9xQdcEin18mVPYy..', NULL, NULL, NULL),
(163, 'student 150', '$2a$10$WUwt2rnnjdh.aa1ERL2El.o3u.6B2arV93PhfoPjY3Z0JUd8xtvcy', NULL, NULL, NULL),
(164, 'student 151', '$2a$10$yynLp4Go4Jm0GdJ7FN0k/.S.Rf5GigIRKAQrhgs1J2X.GYnEzfz8K', NULL, NULL, NULL),
(165, 'student 152', '$2a$10$Vo2ZB6ji9NLQYXGhoK8AlOLWBfjGBmKAwCiqwxaV1JIqx.GrcgFy6', NULL, NULL, NULL),
(166, 'student 153', '$2a$10$vIXt4k1QkNJuF8QJeUOO5eY22V8i.n5v.59wV1iLF8i9J9VlcmiQG', NULL, NULL, NULL),
(167, 'student 154', '$2a$10$exbBVK1shvWCzt1tdF2CLuuMAqYNfLBGn.GRgg2EmiKolWKWUSRSW', NULL, NULL, NULL),
(168, 'student 155', '$2a$10$xzJos92GGVHZqkM5UwCt8euNKSsPnSeSc3Hfq0k1SH2E3mSlIY/m6', NULL, NULL, NULL),
(169, 'student 156', '$2a$10$aK8fobbR1H.vgBRF.HYMO.xUuY/DJxA7VIUdw4y5wkpMmdrdP73Pu', NULL, NULL, NULL),
(170, 'student 157', '$2a$10$66qJWWyoD7yzzgySWiKtlOLExZT6NsK/dT6JQq6TnNOuRRK41zNIm', NULL, NULL, NULL),
(171, 'student 158', '$2a$10$EShKKUgB/jrDXJ9Ef9XVuuKt8pBCN5fdHvqBdJOJEhhg0nRiVxgM2', NULL, NULL, NULL),
(172, 'student 159', '$2a$10$mvIwuWBsbT.nu2I5RWs.fuksBvRVcj/RiKwfjd0WjBrSTUMKwhzVG', NULL, NULL, NULL),
(173, 'student 160', '$2a$10$fhVms0V9wKpdh8xsCLTTx.aHNNgOmNWswsEJ8IA.bMFY9oY/k2zmG', NULL, NULL, NULL),
(174, 'student 161', '$2a$10$9qdSuN/QCmxlcsDnsvhAjen5BThiLrX5RqlPks4HL3atkFKthsgBS', NULL, NULL, NULL),
(175, 'student 162', '$2a$10$8OzNbTRp6ADWgp7rW1Rl5.GSyL1dYl/SjwTWWqPo5/lq5euFFXbua', NULL, NULL, NULL),
(176, 'student 163', '$2a$10$U7zui0sl50vOzCNLHY3Hne1CsTBWr.eG1N.G/vLYeyRd0k/NzILeO', NULL, NULL, NULL),
(177, 'student 164', '$2a$10$qWqSQzddZxGY.TWSEUr7.u0CVVaQmFzIbTDnmkuwZGyws7GjN6H7y', NULL, NULL, NULL),
(178, 'student 165', '$2a$10$FxgMVNEXnADz8qoJw6iF4uYLC6sTkWBk2w/pofHQnYysn/mw9aGky', NULL, NULL, NULL),
(179, 'student 166', '$2a$10$1.YiStdhnBQjfcQ76xtWs.QvfDo70YTO6xPOhyI/Q6hN98gM4SmP.', NULL, NULL, NULL),
(180, 'student 167', '$2a$10$JWm/j/iP0BIJPLEFuH0C9.M8yAfuxOYfc6ulcQjyqamvmlGQpSuYK', NULL, NULL, NULL),
(181, 'student 168', '$2a$10$KRXa1elVKKKjLD51hIp4s.k9E2JjacNFoqjJiDsYKJuc0GF3IgAtm', NULL, NULL, NULL),
(182, 'student 169', '$2a$10$SnE8OiGnhyxi5mAsH.WFZORfbHuO7QBhJUhmbFMsjOeHwhzyoyu9a', NULL, NULL, NULL),
(183, 'student 170', '$2a$10$LHs5Aa4zPOhJDQXBoAoIGOzn2PvSAymyJY5ywrY22WiR7mzpNTmK6', NULL, NULL, NULL),
(184, 'student 171', '$2a$10$3tuU0Y.6ClV2Ewsy2hbs4On5NovCe2MsVeCraJiyFQ3uvE5O1OdyC', NULL, NULL, NULL),
(185, 'student 172', '$2a$10$kVwh02XOYZ7HpSGypBi7hustEDgf2.PfVQKMtv9Aar.Hkj3bOzRLm', NULL, NULL, NULL),
(186, 'student 173', '$2a$10$5hMWIjkEiiE9oWitc8YGUOEocCbl3ZLzadvJ1OeLQtCU/.rifkJUi', NULL, NULL, NULL),
(187, 'student 174', '$2a$10$IFGk3Hsk9zNkdZ7W/WzOB.zQh1f83rUmKjJotlOjl1SiQN7qUIUp2', NULL, NULL, NULL),
(188, 'student 175', '$2a$10$rypt9HPjtdO.bD0CkeBKd.9HYe0w1nul9DWgt4UeWDKW6D0Mrfxg2', NULL, NULL, NULL),
(189, 'student 176', '$2a$10$YCX7F.qveiIokG4TE4aPBOVAX9ASRYksE3WnIaWtDoLPg9pU9JtW2', NULL, NULL, NULL),
(190, 'student 177', '$2a$10$fq8lUcSsUgFPeNP6Bcp0quYUhX4EgsLULQFmZXItUUrxiU06T3FlK', NULL, NULL, NULL),
(191, 'student 178', '$2a$10$7lT60woCPm4a/pDFyz5/6ubQTk5vx9M./E6YCuk/aejOelQLXLaWm', NULL, NULL, NULL),
(192, 'student 179', '$2a$10$hMkHN5Ue4zT/JkoqSblkBuK.pPX6IM8dHrWFIcxT4NQHzQ8aLYHnO', NULL, NULL, NULL),
(193, 'student 180', '$2a$10$.mBOpsvujsKWnWPTst6muO5H4GZctjZDK1n3QdUKhSKBX1l9E9YLm', NULL, NULL, NULL),
(194, 'student 181', '$2a$10$FAeiOBU4PJomieWNIDHXlewB7JD2Hghitf1O1TdQn02ChC1Kv4OLG', NULL, NULL, NULL),
(195, 'student 182', '$2a$10$F//.8YZY9u0zqaZRDdytg.DkGrH5joLjREMpLtZzR1BEV3Tjwp3Em', NULL, NULL, NULL),
(196, 'student 183', '$2a$10$mldKtgPOmMzhvGOBrDD5WeFutcz5U3ju7AhAONJwtOPle0mDAsm9q', NULL, NULL, NULL),
(197, 'student 184', '$2a$10$CSrfFgKEy5HXZXouEvgWzuCHE1go1MOr2PRj9KT2xALps7BZQSgK2', NULL, NULL, NULL),
(198, 'student 185', '$2a$10$NBn08nMINbyINGcVmJ6o0.f/rHfT8p88wm8DICT.KTCH27zkPTBYu', NULL, NULL, NULL),
(199, 'student 186', '$2a$10$QaQb4kYWIhJxd6lKs688O.71qET2VR/S5TBpfaRf234GcfuHoKX0W', NULL, NULL, NULL),
(200, 'student 187', '$2a$10$SixfWnNBjSUKE3wLMsjPXO01r2TunGrDAwlaZK4MZ272vKb7AARbG', NULL, NULL, NULL),
(201, 'student 188', '$2a$10$lK2FiXAFo91Zh64yxQ//iuOB4d9NfQANsIGndEcpJAlG1NIaOi0s6', NULL, NULL, NULL),
(202, 'student 189', '$2a$10$ga21NMro3b7aQPVI8Yn0teFA2K6G02rrCodhNhFirSX5eb85QS/4q', NULL, NULL, NULL),
(203, 'student 190', '$2a$10$JesWcEDJ7KHq92kF8aAX2.K3gu0WO5hiSj9dF/CKuE.u3gyQVZKuG', NULL, NULL, NULL),
(204, 'student 191', '$2a$10$p/yD4gOlCP9uxto4k0QooeMzbXG3rRUYQnl/rkGVH5YgKQft3uOv6', NULL, NULL, NULL),
(205, 'student 192', '$2a$10$EHYnYGEvRPMBIjHrTM6D5unjExwkUVIzdk7h6NFH6lDpFi0oTOM.W', NULL, NULL, NULL),
(206, 'student 193', '$2a$10$aOyPSL/1X0L1Mu46d.akn.NVZ0e2yKanxsHHaJJyHRnsL9oN7/sxq', NULL, NULL, NULL),
(207, 'student 194', '$2a$10$lY9Itn0RpXkPhXMr8vGNKOY6kgLhAt7r/Gqm1t05EWeU9xK3ARFdK', NULL, NULL, NULL),
(208, 'student 195', '$2a$10$iz.GsDfL/qqL4YVsslvP1uUdqlpYrUC8dMzz8./kDZUt4mUtq.iW2', NULL, NULL, NULL),
(209, 'student 196', '$2a$10$5KFd8ZYD0ylXzYG9HzGUMuBXEsROyGocQBxNtg2jBJTvaANDL0FQO', NULL, NULL, NULL),
(210, 'student 197', '$2a$10$1TJ.PfYkjhkClGcQ4FXEweH76c0S0IJkWCuhB969CEd3ZWuuknl.K', NULL, NULL, NULL),
(211, 'student 198', '$2a$10$3OzGbwrVmZ1JpsanTEUb9uSVyiwzqjA6IsSitwVVm581RmvSjjsum', NULL, NULL, NULL),
(212, 'student 199', '$2a$10$MNoKKLUBuGSai7zE5tGkJOQnsorBbsyHwojputSnk470SJxoqTwpe', NULL, NULL, NULL),
(213, 'student 200', '$2a$10$tJseEBYCvmjYI1SkbbRE6u4mTV3McHn1lQyVgCpl4WDWnXYr1740q', NULL, NULL, NULL),
(214, 'student 201', '$2a$10$K842.eNZii/4an/XXgw.fe0/lppbyHbBIM5hkJQeQQgzhpWSe9oHW', NULL, NULL, NULL),
(215, 'student 202', '$2a$10$Bz/xY/wCCglIkOWrv1wu2.c/CuE.fkSRrBDNopDlewVtp7g.3iHaG', NULL, NULL, NULL),
(216, 'student 203', '$2a$10$zrA/Bs1s8246kjno0cUbzOXUwV.W6tREmCNJB7KXACIKgi9Te4tRK', NULL, NULL, NULL),
(217, 'student 204', '$2a$10$wX4bqJ1aeuRIhWkMq9fQI.FsfoXfc0aTNTxo6CnCKInQ7gboX4OrO', NULL, NULL, NULL),
(218, 'student 205', '$2a$10$RXIG9mKvWVyxn0.sTILHXe3MzE0cxgplr.3bFa5QAHZhw4Th39jK.', NULL, NULL, NULL),
(219, 'student 206', '$2a$10$l32WNra5zb6nBcnwXOdqteiad2D7NsdNsh2J3UFer8nlTrA7SPdsC', NULL, NULL, NULL),
(220, 'student 207', '$2a$10$IefRYB0JaW6l4l.0vHn6xegRVTFuqvrQSz2necgkq/u7/ze63rruO', NULL, NULL, NULL),
(221, 'student 208', '$2a$10$lE2RzYCk9w4alPAvbjaNkOw8i4BIqGlkIRb7BbDnXTBh.ymtWXY5y', NULL, NULL, NULL),
(222, 'student 209', '$2a$10$pxv/FHIIxnR6JvwLFlZ3p.MRZ9ZMdaXtmx62.Ur.6NweDJRRjAimO', NULL, NULL, NULL),
(223, 'student 210', '$2a$10$Zf9h4okDjzlqouXECczFD.yzM6JEslNNWrSfgEL5DAdMUu.vT.8Ly', NULL, NULL, NULL),
(224, 'student 211', '$2a$10$1IwcvaQOYmdmy.vH2TZ.p.utCNUZTO/spsiRbxHhSa16H4roDiB.O', NULL, NULL, NULL),
(225, 'student 212', '$2a$10$iFXD7sj4x.riGzyqy3dN5ecMC.YOEbqADMaYm98XvbjCJX/F0Ucpq', NULL, NULL, NULL),
(226, 'student 213', '$2a$10$Ql/p44T3StaJzv/5l0xxGu6sBXuWrn20ZohgEPpKecnYnR/UE1Sle', NULL, NULL, NULL),
(227, 'student 214', '$2a$10$goeHTvtrI6IJEn3la0bkC.IQ02kSmSs92VLeyMkJiRisA10v.wYMG', NULL, NULL, NULL),
(228, 'student 215', '$2a$10$QUtmv7SJttTXoB/oP5vER.J.6MR3Be0mUxngNFjxcu5fmyJwiAMxq', NULL, NULL, NULL),
(229, 'student 216', '$2a$10$w7xCpG2iY1J/zOXD7V3B0uSe5s/5JDkyDpiZYQe3F3ugg2845pUb.', NULL, NULL, NULL),
(230, 'student 217', '$2a$10$ucF00u0PJtSR51M8Ra0UXeOHY5Vn0QGQdvcu668xY8PkrM21VLvXu', NULL, NULL, NULL),
(231, 'student 218', '$2a$10$mdqcdnrJQ0nG3CFf9LKo7uOa2OrWIkzDmTro6Nvqdw8mO0CDd0/yO', NULL, NULL, NULL),
(232, 'student 219', '$2a$10$/QReXYym5pAwxHH0.8XVMuciVE7ujmGaTrR8kklsvzvYPfd0Endwe', NULL, NULL, NULL),
(233, 'student 220', '$2a$10$Fvyj2nqPe6fWhD8VgqttS.XZ3cF44U5bGDbaIiWwu2.aJ3vQqlwwG', NULL, NULL, NULL),
(234, 'student 221', '$2a$10$KGepuooZK22yTA7DvXc3/eo7BCB4.tTw15u2hostKGSYrhq076gNS', NULL, NULL, NULL),
(235, 'student 222', '$2a$10$heB/b.3BgDIMmGIswHvu4.b8StAZAo3Hr9Oo9apZWNcYW1Oqr5k7a', NULL, NULL, NULL),
(236, 'student 223', '$2a$10$TV6Mr7dnXha2AGiPi2Y46.6h932HcRj7w7Ya.TzdmEx3Y1vrLGoSq', NULL, NULL, NULL),
(237, 'student 224', '$2a$10$vSyA.BR/a6agFw8WhsdIWear3rMupYarBLxFopUKHG2CO8/DhseQS', NULL, NULL, NULL),
(238, 'student 225', '$2a$10$8ChXm4VEvojajV6aEvTUiOr46dzY9flUkjgpE/QNbcMS/GA7pX4Ma', NULL, NULL, NULL),
(239, 'student 226', '$2a$10$nK8n8NnpPG.P1NcFS3bxwubn7UQxajNeV8ACvGnwEHj09DD5Ir1Ru', NULL, NULL, NULL),
(240, 'student 227', '$2a$10$sT5nnLEfw5xK/dvvVzfmM.rBZyTMq/zUgkqWf1Ge.3BgCBHr8H1gy', NULL, NULL, NULL),
(241, 'student 228', '$2a$10$TvnBkbFgsc7sb1VoRW1MZef2xG3b8hzrOhjonJ/F6BUx3DHKgbAGK', NULL, NULL, NULL),
(242, 'student 229', '$2a$10$l47gk1vhx1bljNejPAuDauFnFqZ7hPw8vOusnWOjbQ4GVydTwpw46', NULL, NULL, NULL),
(243, 'student 230', '$2a$10$l8b7D9jv7kQcFOPmW96dqu.dHfVXGkV6ZBdwqUQoAe7p2NgVoBhk.', NULL, NULL, NULL),
(244, 'student 231', '$2a$10$VnzvddJYywoxrdWnjIMrausulhTK9Bihjey28kuBh5jzv1MXgF7C6', NULL, NULL, NULL),
(245, 'student 232', '$2a$10$iqHuR3/1RvXu8ngLPjazcOnUOdMjWVcHki.bUofRS75kImMmnUVTm', NULL, NULL, NULL),
(246, 'student 233', '$2a$10$Pexd.nmxVlCsTFmDy5WUBeYQmBliytgbdjZXZxOAvKt6wJ/gx19Ja', NULL, NULL, NULL),
(247, 'student 234', '$2a$10$.CfhqV66eB0FlNKvXplrFu.KC7Py8CzvcCSJJyqazC9A/cda.qSbq', NULL, NULL, NULL),
(248, 'student 235', '$2a$10$1/sYti8zHh9f5LgCz8ddFO71ZCNOYufnStFGwRpvmt.e54f4n95BK', NULL, NULL, NULL),
(249, 'student 236', '$2a$10$Ig2POsjYszFOntQlCQ2cZODEHkKs82ieqvvMX9Fa5p9Vsny1ZJ4q.', NULL, NULL, NULL),
(250, 'student 237', '$2a$10$MDzvAOBHeo3Ou1RzYK.Mw.K6im9JebqDisrbg118B2/h4YChm7cDS', NULL, NULL, NULL),
(251, 'student 238', '$2a$10$wZHke6nMKUlRhKCh0F4UAuXanHEKcbkzgP1W.heQ3rZcVNBpnmIEW', NULL, NULL, NULL),
(252, 'student 239', '$2a$10$eM8qcuFyMyvt9kkIp9Il5ON4OgJFoalk1Ug2C1ZLR6taWKcW5l6MO', NULL, NULL, NULL),
(253, 'student 240', '$2a$10$pURxQjr2oC82IjJi6/ObtO6hZHON7YI8OyyHUunqxTz.5viK4q3S6', NULL, NULL, NULL),
(254, 'student 241', '$2a$10$s4ue58tUe.6RMXVrieO9L.GVgF7wTf3CU1VlyR.xJLhq3MFRwxd5C', NULL, NULL, NULL),
(255, 'student 242', '$2a$10$XRf8yCjTbtBQax7hdyM58Ot630pDhypgf7zqUOCqi0wQ3HCQ3FFqO', NULL, NULL, NULL),
(256, 'student 243', '$2a$10$ugEI15zJGuZ/1EtYzvw7uOPW08QacJeMlkIwMOemNu8vPnQWTu77i', NULL, NULL, NULL),
(257, 'student 244', '$2a$10$oLWZMg1YLvB7uycf8C8kjuIi9nuqDXWHsQIB8qMMcOU8iiqJQZ9nC', NULL, NULL, NULL),
(258, 'student 245', '$2a$10$6yYiDPqXiF3HqYIDywnK0u.wao6PBkbPOQWw.at/oxEXFPFqlqbc6', NULL, NULL, NULL),
(259, 'student 246', '$2a$10$gQWC/LsDaiG8LyWbY5qKZ.hmZip0nCAcrf6poqd3beWI1gio.O.AK', NULL, NULL, NULL),
(260, 'student 247', '$2a$10$XGvBcijkLUFgT2R0/g0RReg0Sy7ZbJPoysezb735OXrxLFsJYGNlW', NULL, NULL, NULL),
(261, 'student 248', '$2a$10$sqngGgrCDQEJdgJ05PmHTe3F0lh98Xo3hIgf9xYj7x/D/5ZZ2Eie.', NULL, NULL, NULL),
(262, 'student 249', '$2a$10$3Sjy2vVhCs9O5wDPF6hrkuPw8I5i0GAo8keo7vTzZTI/iGy3Z7fka', NULL, NULL, NULL),
(263, 'student 250', '$2a$10$J0O26cps6kH04JcN/4JI7u7NEZ/2il1hXsVP/IEBoWaPDBGQjsBB6', NULL, NULL, NULL),
(264, 'student 251', '$2a$10$lEI3LUxuDahT1/PplisR6uNyyCn3MsOo8PP4hmFGuLHkGXVbsMnum', NULL, NULL, NULL),
(265, 'student 252', '$2a$10$1bo.KAX75qSyzfzxRuZGbOn02AvJXLoi2r1N4cjxs3DWLGmore5aK', NULL, NULL, NULL),
(266, 'student 253', '$2a$10$w4F6v77B6NpSwY2uU9i3xOXmU2ZdYn5MSDCwbxXkBeP5SHOfAnbPG', NULL, NULL, NULL),
(267, 'student 254', '$2a$10$yoYkaPd1eWBS.PGjEJ5NXOPyc0bjBoalBkErs3ZJBaGkVXU28Vekm', NULL, NULL, NULL),
(268, 'student 255', '$2a$10$BMjF3sexNb2DnRQAtU1Jy.CXQrNlzGWZ2vGURuvjGX3qozL7s87DG', NULL, NULL, NULL),
(269, 'student 256', '$2a$10$RcqyYaGA0M9iJXsjyQc13OcGurZs1phq8KO6HfgK8VUbGw2VJNGvy', NULL, NULL, NULL),
(270, 'student 257', '$2a$10$czBqgs65CkUGqIGptpohvep3KxzpaRyEy2aTqAAHCX8.0oGyV1XJq', NULL, NULL, NULL),
(271, 'student 258', '$2a$10$lGH6lWAY6XZnA.3y8vrCEOhZaqAuonl2D2lXBIz25sj2xV8tpJyV6', NULL, NULL, NULL),
(272, 'student 259', '$2a$10$5HikSy0uEOa4f/QD0L5c4OF2fP/FS4sMRJ89UBVR0edERmugnbPvW', NULL, NULL, NULL),
(273, 'student 260', '$2a$10$k3Thn2xjyxQJLcb1meRM9uFlh8jSDHRYul3gpFkXM/vpUZMp/fucC', NULL, NULL, NULL),
(274, 'student 261', '$2a$10$i9UxbDH1wjDE5f9EjwIG8eS.0Hm1Bc8/gkKwjDOmLXC8IWHBdWgdy', NULL, NULL, NULL),
(275, 'student 262', '$2a$10$UFbgm7zKQGaiKgN3oyOc7ePDpTIynMhIJX/2QDtWFQyIb75hYjTmm', NULL, NULL, NULL),
(276, 'student 263', '$2a$10$ua99aprE5S2iVVYMEj7quuftRa8JvRuJrClDzn7/TfIMBFgAuSUJa', NULL, NULL, NULL),
(277, 'student 264', '$2a$10$mgSKKMkhR83mt3ZHQunePu4rdRZlSYYF.rv.90Btr1TA9fU5RRuM2', NULL, NULL, NULL),
(278, 'student 265', '$2a$10$7/7QdH1fCfOnDZ3zcSbsYO4/6oFz5JAj9y4vLIf8yJE3g.wTfDMSG', NULL, NULL, NULL),
(279, 'student 266', '$2a$10$dm1pqru1PHmW7pDJTlksNuVzUJqTmISNUkx1tqkxERUqNaGiS.hj6', NULL, NULL, NULL),
(280, 'student 267', '$2a$10$l3PS9iE7gJfPHWmdtDmULO3IbPFap07IjICp9M/8D3W4GKjhaBtgG', NULL, NULL, NULL),
(281, 'student 268', '$2a$10$Xu4CEw8M6L4k4nvTVHGm1.SAiAPieyGbZJnrZjmVIxomjsJ.105c.', NULL, NULL, NULL),
(282, 'student 269', '$2a$10$ZRF.qYHEirK9lcyUSF2GyOKUl0u5DIyoP2lVR.YbwSLquZ1cdrXAi', NULL, NULL, NULL),
(283, 'student 270', '$2a$10$qP3dfPnUFCX3bVnwUH.E6.ZrfHXaz/LitRg2/80YMPhdkd6dvusgu', NULL, NULL, NULL),
(284, 'student 271', '$2a$10$y2MpB9BrlBgf5ykMLR1a1eQPXg05e77SxQPmwSXnCUUXkhgb1XyIy', NULL, NULL, NULL),
(285, 'student 272', '$2a$10$ycpx6I8lD8r8sk2KrJPf9euue7x1cEybMDqs3x4KQh9DbCn0xBMj.', NULL, NULL, NULL),
(286, 'student 273', '$2a$10$nXkJc4uP7KsBy457X4/VAOenw0tX3vo73Ysbzq7HBAOAl7kSCPTDi', NULL, NULL, NULL),
(287, 'student 274', '$2a$10$tgKJfNqlpnOMvEPCwNjUdOSpC.cpVEYgqaVwEzwncy9RzvHw8tbYe', NULL, NULL, NULL),
(288, 'student 275', '$2a$10$FjBa1/S0DvbEKnz9Byqexe.zSVGY/Rh6pn9HSN7HONKCZPK.N4Dxi', NULL, NULL, NULL),
(289, 'student 276', '$2a$10$/82KMY7sK1.zsb8PmLNJee1lWW1KuG0gGUeaaH2EuBr1k2CYBH/am', NULL, NULL, NULL),
(290, 'student 277', '$2a$10$lKEcj9.c3Rl75cKjo/IVeuYleGdp/bQLkHaKKM3pwYUQ2mK.1Dhs6', NULL, NULL, NULL),
(291, 'student 278', '$2a$10$E4a8e6VFig9X8o46ss/XJe2wTcNxCMbGXLK/Veyd69YDm58x1SVZS', NULL, NULL, NULL),
(292, 'student 279', '$2a$10$law2Ee.33Kc7G7Ctsv42OuDLINBWFv8XcF01a06Yok3cEyWPOGWXS', NULL, NULL, NULL),
(293, 'student 280', '$2a$10$ge6dVnPcgfYpaEF/ZYev.u1myOpoyKctUlhNjjwqa5arii.GYy7ni', NULL, NULL, NULL),
(294, 'student 281', '$2a$10$.y9OTBJMhmOfTaGr7HNFSelOfnFkxtRlyWmkViLACXX7u0YZHC5IS', NULL, NULL, NULL),
(295, 'student 282', '$2a$10$d4ZhskxeOUYL1schY7dKReSmRZo1uj2mDQPQktYOTOzqVKd0AzCHu', NULL, NULL, NULL),
(296, 'student 283', '$2a$10$iEaxkfVb00WUOz3CmYKVd.ZLGqvkeynaA9.ilbb./X86bJFFkqSzq', NULL, NULL, NULL),
(297, 'student 284', '$2a$10$l0JSQWAkb4LJnsKD2LMzCeDObZSKvFvzwr/32.2w2qfY62thHj/f6', NULL, NULL, NULL),
(298, 'student 285', '$2a$10$gL01iuDP63Lgk5pAfCge9eO1e9LhZBaO6LsadI8W/MCowRayxMNlW', NULL, NULL, NULL),
(299, 'student 286', '$2a$10$/UWyyztp9L.ACzoskY4sreCTR6ma51WUXPot4HhF2aUrCO8Ncwwwe', NULL, NULL, NULL),
(300, 'student 287', '$2a$10$h0fuGvHFRAmzrue6xSQwU.Pj/Gbug2.Ilg/YX.RygSlT01foeBCum', NULL, NULL, NULL),
(301, 'student 288', '$2a$10$iBIZXqhE8ptNoBNsZ3x.meNdgCCkPXnHNrBSGKUqHVcHKAsKsKAFO', NULL, NULL, NULL),
(302, 'student 289', '$2a$10$LOtpf3Oj2mV9DZ2t0noWxeRDHv9ISqr.wTqLBKIFgkuDzRe9T0.yS', NULL, NULL, NULL),
(303, 'student 290', '$2a$10$CdlL5Xb7uZ0cOH5pGwkj2udI5yRuqK6CLpzoKfSKhSKzUcRzn7p0u', NULL, NULL, NULL),
(304, 'student 291', '$2a$10$x5aRMbHpNIVyEz4SY4Z3t.BPhQkmoGIkvEufiDmLzClq/n0hzVVzy', NULL, NULL, NULL),
(305, 'student 292', '$2a$10$NtF7pYRKEXV.PmjVW0gxeOMlF9hJx.VjAyzZwmrwb.dz2sgq8bRwK', NULL, NULL, NULL),
(306, 'student 293', '$2a$10$ugNX6FiOYL2dRtAS9o3aK.mhdl/CAOBr2Xx5.v1iefhSGqaI5IP7i', NULL, NULL, NULL),
(307, 'student 294', '$2a$10$hJdIqwu6korKCPT062E/NOFPUFIHnm6Bp16cO7fndbMbOAq9lb5TS', NULL, NULL, NULL),
(308, 'student 295', '$2a$10$7FOHVxZRHrQQ3XaSbdf3JOQCAyBYhvr6L2MSsEoPlR.OH0MzXVfWK', NULL, NULL, NULL),
(309, 'student 296', '$2a$10$FLpuJo/VL8oZI6HoQBJT4.EobaGF4x.BFjvGEptNvVqPbfus8pX8C', NULL, NULL, NULL),
(310, 'student 297', '$2a$10$1FdlUtKZsOqYx/aX0o427u55OJNNb/2cKs3b7lnynEFMKQgqxDPXm', NULL, NULL, NULL),
(311, 'student 298', '$2a$10$dlA6rvK6RTkwtmGIPIcWMuqUW1aeRQDdsM7PozaM0ZU0sSmFjg50e', NULL, NULL, NULL),
(312, 'student 299', '$2a$10$M6RLx5o1LKvxorvNs3nUAuqizoH7L3lkX6Ahr4K2ory7zycHXkDmi', NULL, NULL, NULL),
(313, 'student 300', '$2a$10$rHxlGHm.n5Z33NMTIozZ2OanjoZLxfQkKAB7EGiLuMavlJiDtIs6q', NULL, NULL, NULL),
(314, 'student 301', '$2a$10$BKuHhpWCsiVObxzJxiXwTe2X/YtNv67nIaJRznZcG09SCCEA6mk56', NULL, NULL, NULL),
(315, 'student 302', '$2a$10$p9HBes2kOJeDZHloL41jeObj2A6MZg1r/5R4W8GxtmOZL9hY.Etvm', NULL, NULL, NULL),
(316, 'student 303', '$2a$10$jAlK.7TLs3OZOSD/U4diY.apoAlTJ/Lq7uMBuLjcf1KgQo1G6bx5m', NULL, NULL, NULL),
(317, 'student 304', '$2a$10$eZ//iIUwk5c5j94DrtVZz.g0Lp3qTP433Wgk1HoVkgWMOAweK4.xm', NULL, NULL, NULL),
(318, 'student 305', '$2a$10$yydFGIwK865eprSMoUOzIuzyn.YYtNLcSdzY4ML6IAjqDAdDmQY9i', NULL, NULL, NULL),
(319, 'student 306', '$2a$10$VyW3FFKeWgilQtFVWAWvA.4GCSZH3Hv/kJlicv65HpdipjlKDTKU2', NULL, NULL, NULL),
(320, 'student 307', '$2a$10$jgru0c10FpJ2bGuu.Jm67.bp2U1n1acRPgjMePYgRD8fg8pHF0i96', NULL, NULL, NULL),
(321, 'student 308', '$2a$10$6cfZczNPMzfQoGNZfl0UIu4yQm5Y0n7roZGz1ese6676rMtseVSYW', NULL, NULL, NULL),
(322, 'student 309', '$2a$10$5YdkmlRPSmWCZvY7inZFwOG.C5K5.5TlciJ1hPG.FPxrsOoBvvRIK', NULL, NULL, NULL),
(323, 'student 310', '$2a$10$.AoupvXhw9Xjp6WuLIbcBevO8nXzrsdSN2G4bn4KduQsRdLU505gu', NULL, NULL, NULL),
(324, 'student 311', '$2a$10$sBtpH0bvLdZexhFTHaH/zukAgOU8s.eJTc6erQCsBj7hE/S/CIy4q', NULL, NULL, NULL),
(325, 'student 312', '$2a$10$zFbdke4OtFmtog0ooxPWquMDdrI5LM58dcPffNbBM.fuvVnma9Cje', NULL, NULL, NULL),
(326, 'student 313', '$2a$10$QaWlc9JjUUR4R5HfFV.Wb.Kr3.tLT1IYse2xbPgUbgzDp5iEPsn3m', NULL, NULL, NULL),
(327, 'student 314', '$2a$10$qyO/qVC.OnuJ2rC3Xz20N.4kbXU.LUSK2EpYGhUtqEO3sJe19ofIq', NULL, NULL, NULL),
(328, 'student 315', '$2a$10$tUe7p8XqfzKa..sb9MW4ruQZU6ZWPyhLAEoh4X6Hxye0nvH1yhr1G', NULL, NULL, NULL),
(329, 'student 316', '$2a$10$kolb5I/3/sZmTWp.FpELgOcrgx5Ay7jemfnj8PgGwcPgjm4fMjDLG', NULL, NULL, NULL),
(330, 'student 317', '$2a$10$937Hnq.y1XRHJ4XKTdeia..h1/nx1zE9GMv3DsW2wMPN2EIfDxRyy', NULL, NULL, NULL),
(331, 'student 318', '$2a$10$oAUj.GdhpLjuIayo9A/u9.2CFGmEzF5zR1BCuDyHJCVBM5Fs.wLAS', NULL, NULL, NULL),
(332, 'student 319', '$2a$10$6HHd9Qg7Fl4DDYUefgnZbutMZttmzkTZUukJZunKvSaymE1W8/YcW', NULL, NULL, NULL),
(333, 'student 320', '$2a$10$zB.iBmDQLyJttCDX8tTML.8jZZhFGBJCZh9J2i72R/Be3IevmUJ7a', NULL, NULL, NULL),
(334, 'student 321', '$2a$10$G7h3Ocjlyvt8VqOYnKmQEOlwr4TMKp2yGWlNgcenwXs9I7JTDNFf.', NULL, NULL, NULL),
(335, 'student 322', '$2a$10$tqT8ye30DLAVbbhtm9ZhO.YqPbiEu9NYcRDe8Kds6ko4ungtB84LO', NULL, NULL, NULL),
(336, 'student 323', '$2a$10$clks4sCNcO1Cj1NQ5MDaVOqPQ.qccffXY3fRCYw0UTYlNbHvW1a.W', NULL, NULL, NULL),
(337, 'student 324', '$2a$10$.Zb2u6NiqY6bm82COujrZO4S2mwrKUvLApdjdhYUJeg0qA4ls5sg2', NULL, NULL, NULL),
(338, 'student 325', '$2a$10$OObHJTG01Tb1NNp60qwZXeqef7upCQeFCZYwCjIj61qxsxjDJGZKy', NULL, NULL, NULL),
(339, 'student 326', '$2a$10$jdplCW5Z/eYmqpuWJfhMDOFyWSt7HFo77pMtgx4f1QjfmgjOQtL7y', NULL, NULL, NULL),
(340, 'student 327', '$2a$10$nYE1rHM53zTCfbriekxKLeyk6kxhUf7MzFuUEZVik9rAEBhjf1mAS', NULL, NULL, NULL),
(341, 'student 328', '$2a$10$rP9gowD6m0XVNYwNdHH9MeNbSXtvAFg.FrftAuYAfyGsZbg2TR5Ri', NULL, NULL, NULL),
(342, 'student 329', '$2a$10$LccrPkD/sfe6PlvdhlVKnOWQseY2jr3bAZGHng1p1WQpZ/rBOl9XS', NULL, NULL, NULL),
(343, 'student 330', '$2a$10$z/1jViwBbkR.HoaQR1JBpetjU7d7s96tb5pr4m27h8BJ31sXyJu/y', NULL, NULL, NULL),
(344, 'student 331', '$2a$10$Jvf6EkeaGle6jaNIA8i5rODb88KWqNc1yt9qecvCYb/rWsjOPQDyW', NULL, NULL, NULL),
(345, 'student 332', '$2a$10$LSnFN7Q75VZigm.GHa0Vmul9FGDrDxALtAMzdGPqy0Tf04yrXKkOC', NULL, NULL, NULL),
(346, 'student 333', '$2a$10$KfbuxkBJnDYw0GEoS8qm2ecFGEA/Gx6iryGjVfVMj84ym8eK2KM9y', NULL, NULL, NULL),
(347, 'student 334', '$2a$10$KV0FUaHHxtKsHlJ9XAItVeYzGFh3m5OU4jc3yb6fF0bNGPRmDfu0m', NULL, NULL, NULL),
(348, 'student 335', '$2a$10$vReXjdC5kmYiFisRoO8MWuDwArvCYqbKUsCIvwFO8WWmEhFQnc71e', NULL, NULL, NULL),
(349, 'student 336', '$2a$10$Cqxqy.o5xJ3qT8Orxw0xeuc7qVZHORfkH8mtUO6JvVqUx5Lm8VVee', NULL, NULL, NULL),
(350, 'student 337', '$2a$10$8lTeOqH77n1v6PGCTLxltex0LX4qMGnKlZ/WQ66DuAE5p810hRIke', NULL, NULL, NULL),
(351, 'student 338', '$2a$10$sdIHBwa8xlvrTqzNy4c8kuFBYZ.eV63YQxCg44Xt8Do8Tb/kbK5tu', NULL, NULL, NULL),
(352, 'student 339', '$2a$10$44RBxvgxyIf62YpDUlMbr.uI5LoWIqBeDDwsNL/htVTXF.rE1dLTW', NULL, NULL, NULL),
(353, 'student 340', '$2a$10$0aRaWg3cP99N.ZBgPE9Qn.jY8w36QP998mdhDTTu.YN9nKMKo0xBG', NULL, NULL, NULL),
(354, 'student 341', '$2a$10$m.j1IvGz7Hurzh5GE98k8e2bw/U.vUQ2xmhXr47LHFH2zT6eNNKeu', NULL, NULL, NULL),
(355, 'student 342', '$2a$10$ol28clPvp.jwoP2XFiR5Kug3jWmesa3P4Gx/vCEp3UgrCD5WsriBq', NULL, NULL, NULL),
(356, 'student 343', '$2a$10$q8leFVXQkwVlr.bW.wAAYOXAEQHDegE0dHGpt2X18nXAqEQaPWzty', NULL, NULL, NULL),
(357, 'student 344', '$2a$10$1rc76vbbc2WO6IuKbbzOZO0mUFoXsjSrzwBkBdxQxNDy9wILAQBdi', NULL, NULL, NULL),
(358, 'student 345', '$2a$10$SD/TO1wFYIOkndIReNZMvuBRCSzBSUQWWSSZGrvRiBku3IQuvRsty', NULL, NULL, NULL),
(359, 'student 346', '$2a$10$GuV5FWuvEUptjcebKSpcEe.LzK3N/tsMbvyOkeAA2ICP4fmt5CRwW', NULL, NULL, NULL),
(360, 'student 347', '$2a$10$BGkV6/7EhZ3pK4s0/KNrJ.v8U3uj6l355zVsLukDxQgUW0yjMEm/q', NULL, NULL, NULL),
(361, 'student 348', '$2a$10$2FQYbMaOrqaLmKLpmxdmWuWKpiUJMRWzE4u6zAD6qhN.3v6lZO49G', NULL, NULL, NULL),
(362, 'student 349', '$2a$10$j6hHQIIWGzgnQiq3RQhB5ODMZaLYiJS3TKQswtE56Zm0jgJW3Ruji', NULL, NULL, NULL),
(363, 'student 350', '$2a$10$XBLeT85TIoJYFKpsY9zmr.e9e0C3tWfdrknZVhqlUvRkqdcoOkhxS', NULL, NULL, NULL),
(364, 'student 351', '$2a$10$gmSXrvkG0e/.Itv9asO52u06RtbsLb1oHIEtBcCewAZzaFo2LrcEC', NULL, NULL, NULL),
(365, 'student 352', '$2a$10$GKEpVrVwkHtoCZKaTQIqOOGqYZijfFlaknZoj1lAsIySXX1fsT.hy', NULL, NULL, NULL),
(366, 'student 353', '$2a$10$WiAqVqG6oYSyEyYVgzu/r.tAdph3jdQgfq48PztBv5bO9T/VqACuy', NULL, NULL, NULL),
(367, 'student 354', '$2a$10$2nSvzRLOC/nsloaMUfuqhO9Gjbsbn7ttOGPhJa7TzkFP7/.Ilo7BS', NULL, NULL, NULL),
(368, 'student 355', '$2a$10$in7UaHTa6GcR3ja5hVvmx.zuukyAcSj7bWCp7Z6MSrk4HLK1wt0j.', NULL, NULL, NULL),
(369, 'student 356', '$2a$10$5cNdmrKSQYZiCZsWGep9SOYTrkG.d4NhmO8bU9uCqvzy1x6rM0L0K', NULL, NULL, NULL),
(370, 'student 357', '$2a$10$XrTNvu56oz42/j5CD/dLquz5IvQIyshgibPIzivSivVotXn96.eg6', NULL, NULL, NULL),
(371, 'student 358', '$2a$10$e/XzUSdYN.5KQe4YTAqHk.x3fCiyHU94I7mBV6gnx.Y82wkPyDYsa', NULL, NULL, NULL),
(372, 'student 359', '$2a$10$pQwydgBxgmr49IAbMv1vuuYKS0OkEaNmhXNPWoxg/ykSbsqyQW5pe', NULL, NULL, NULL),
(373, 'student 360', '$2a$10$wl/j2dcE1Se7WHu0WtqP0.5OGobHPp45cua.QOXj.O9U0S07Xhk4q', NULL, NULL, NULL),
(374, 'student 361', '$2a$10$uMamfXtcNDRS3nOWo/vZSOTRfzEXo74KZNsTgEXvf6UdtRWsR7cHO', NULL, NULL, NULL),
(375, 'student 362', '$2a$10$cBMizwEnFTP6HKFXjOwhdewh3jeFm4RHFuqUzeaOfIdHcDb1E6.Wq', NULL, NULL, NULL),
(376, 'student 363', '$2a$10$uXQO3kiIIwQDSGQ7mmHIrOLyqvIjjApHHmR3wT1KWcKZ.a1nFKrl6', NULL, NULL, NULL),
(377, 'student 364', '$2a$10$pHGEtChuuKv/HsWSUKy5xuqrdBz8jj2nz7NdfYy3WAFHq1gZWuuyy', NULL, NULL, NULL),
(378, 'student 365', '$2a$10$VTnCK3AykPjkLb1.zO4vE.6wwuMOfssBbtONMn8JJU5IzJZaYqo/2', NULL, NULL, NULL),
(379, 'student 366', '$2a$10$p7LjHngoMXNPqzKRUZLHv.V8cyE/qWm/kadVEhLPWPOhWQVMHQxJ6', NULL, NULL, NULL),
(380, 'student 367', '$2a$10$iltbjZflIZd.9kU4iIOSC.kMJJCXgDNx/oMIfoldx2RldVKjE3uVe', NULL, NULL, NULL),
(381, 'student 368', '$2a$10$0ObZ/A1dUp7IHgFhFKP5Me.BraApcEjme16WvDAE/C71pznwJakFi', NULL, NULL, NULL),
(382, 'student 369', '$2a$10$PjcceQdZzD4P39WH2UgVSOIdw32HucmMZjbk0f6d5co4AAoHOIFu2', NULL, NULL, NULL),
(383, 'student 370', '$2a$10$r71om0rIemM8RfRN1vKNvOcFt9DTT9oA/CD1ZXW4vZcoe0JSw4qjm', NULL, NULL, NULL),
(384, 'student 371', '$2a$10$IWpGkPS9PL33zVbYikwJGOcGhPYSrUyn3ioLj443FiWLhjRyiyz6S', NULL, NULL, NULL),
(385, 'student 372', '$2a$10$AJkP5n3ePg5ZJnaxDFQwFem6IBXzIEo6VSEDhKxn9kTLBbqVKJ2.e', NULL, NULL, NULL),
(386, 'student 373', '$2a$10$EYVxaX8wt3yF0BzSuuPhQ.ximP3pYnagzfaaaEN3T0Ah1TrIoxoYC', NULL, NULL, NULL),
(387, 'student 374', '$2a$10$dYlaZdQdgJrxJ4JqcjIO2u7MSptpggo7kqhqlwxAU2NvA717sTc9C', NULL, NULL, NULL),
(388, 'student 375', '$2a$10$2gf/wm.SgNW.S/kKPh5hCe2hYpaZzoSWnWQA90UfdUy3MpU84FOHG', NULL, NULL, NULL),
(389, 'student 376', '$2a$10$gPwbj1oEABa/k5CwdlcANOSfzhfDIVxg5Ib4fpvKoQ/mtlMce1gze', NULL, NULL, NULL),
(390, 'student 377', '$2a$10$p1ovgTLgSlMYXHu5eRJzfOW4CO7unKT3oOdVwVfPbhjQqOHFU4jQm', NULL, NULL, NULL),
(391, 'student 378', '$2a$10$eIwinKzcI8h818BmqC/co.6Urwp4.lMJC..49eLqD2P47hW7my.Im', NULL, NULL, NULL),
(392, 'student 379', '$2a$10$6c2RDhtrc0lM4f2IcMNhIO.CaLwN0FgeuxEifm3VsBEDoe64t9f6G', NULL, NULL, NULL),
(393, 'student 380', '$2a$10$sx4eG3wacGlwbnKlsfFcOOuF/0gAsNENO3nMfc7t2s7AKVvOUOStK', NULL, NULL, NULL),
(394, 'student 381', '$2a$10$vXytshfaID2mwedNHKU.0.gICY9g7tfc0hHh/0ye5.2iURtznFaNS', NULL, NULL, NULL),
(395, 'student 382', '$2a$10$M9NA/ZWPhno4/oKnxt49x.LNimt9jkuwd86JApOBbNjCrxrevbn/G', NULL, NULL, NULL),
(396, 'student 383', '$2a$10$ke4XNTgnZV/SpFoXBQXjRuMPK2tK5LmzfsaOcqUlexHAFIXCNR2la', NULL, NULL, NULL),
(397, 'student 384', '$2a$10$/r1WZkY//7DYa2u2KndZXeJDXxU2rgHpt4o6I19yCpogD8gYKPzm.', NULL, NULL, NULL),
(398, 'student 385', '$2a$10$/XeDsS7jaJZs5AosuMoHEeKpSbnBEHu8O5fRTeaMmIvAjPGnvEtpG', NULL, NULL, NULL),
(399, 'student 386', '$2a$10$VuKaG8FUsfKyxY1/cK/jVOZ04RmwjfznIUp9dABhR.e/aP0x0RTim', NULL, NULL, NULL),
(400, 'student 387', '$2a$10$YTreFSrrVBv4Lxtl3cAh3.HBiVDblKonYu6837SkULxVpZa/FiD3O', NULL, NULL, NULL),
(401, 'student 388', '$2a$10$M91iIVTpqVsK4LLvJiK5heaWFW2yT9XqkD4X3IztZbKFD6yH46TgK', NULL, NULL, NULL),
(402, 'student 389', '$2a$10$lnlTuIaTJ3txNdQSulZcWuQoS11wKov0lK2DcoZDbgLeKtR/BGSV2', NULL, NULL, NULL),
(403, 'student 390', '$2a$10$o27d.R3h37B7ntMaNgSSPOhvMrXCxcZcaRaff67E2CCef30m8FdL.', NULL, NULL, NULL),
(404, 'student 391', '$2a$10$MqGpEiLIE3X5GTD.zOHKseTT8Rweqd2gk38XlvhbXfk6ADYAwvpTu', NULL, NULL, NULL),
(405, 'student 392', '$2a$10$JBbypY5cLwSvW69mbzNGrOQJlSTsy46uZ6MoAB9XZgwtmSwyrqNVC', NULL, NULL, NULL),
(406, 'student 393', '$2a$10$smlpEpf66Q8etTdfjbtl0eky3uPXXgto34eVyxlvFI2GAkCXCcROO', NULL, NULL, NULL),
(407, 'student 394', '$2a$10$WMnzSYMRERqfD3INmOlnCesvOHzHHrzLAoAQjyTD9lexpq7YtxH7u', NULL, NULL, NULL),
(408, 'student 395', '$2a$10$w5MMB26XMU5ZJCLWtn3.EOLy.xqEBc3BEMQXGDprVqoIexSYLH8w6', NULL, NULL, NULL),
(409, 'student 396', '$2a$10$OUdKMGp45zKgaNGGiUC8Jeh4wgCslCVPqJmJKCDKJ8cUKqPLUCzQK', NULL, NULL, NULL),
(410, 'student 397', '$2a$10$u.pYI4VUF4Z5b9txFxD0Bu9dyGUMRkwskPAkZRuqm.dHPZO3bRxX6', NULL, NULL, NULL),
(411, 'student 398', '$2a$10$6Gn2W4USXFL2UEF81jH.luLsLA876L.i1siw/QFAQq2YFM1mwDBDi', NULL, NULL, NULL),
(412, 'student 399', '$2a$10$4zaDLi7453LhbQvAVlrTFup8kEyqis0I87I1.e9YbJCqm299hd92C', NULL, NULL, NULL),
(413, 'student 400', '$2a$10$fUOGXVCQQT2gWhfNyNG1le8cTbr6.iqbjHvFzD5mnFglhWqJQizV6', NULL, NULL, NULL),
(414, 'student 401', '$2a$10$pwBtApKwUufZ9dSRraTLH.Qo.i6tJomaSQiVrDoEnI9D8hK2mr.Mm', NULL, NULL, NULL),
(415, 'student 402', '$2a$10$xp/D8baC8b8lCn4mb2uJu.rHRFhTGDe/xYA6aONqNDrgtBQ54RNFi', NULL, NULL, NULL),
(416, 'student 403', '$2a$10$gkLTO/XeH22OjpPuL3b.p.IWV55fFuIvYF8OIcunTHtSs.K.597PK', NULL, NULL, NULL),
(417, 'student 404', '$2a$10$xt.gd0ARR6etEYfajCkiG.fVnvwx2Mo/yrioKLaHFDqCk80LsK76G', NULL, NULL, NULL),
(418, 'student 405', '$2a$10$VQudwaOCsZcKkpavfUEDBOjoOAMzOi4k0Xrs9kaCiFvUGSOVmQDKe', NULL, NULL, NULL),
(419, 'student 406', '$2a$10$Av3BitxasT8uNoQLjs0xZOPNRwhpwm9EAb6.Qs68APTBPS9cIFiJy', NULL, NULL, NULL),
(420, 'student 407', '$2a$10$lQ/.8upaQ1v59p/.ngz.wuLmPbqD5Mb56JdlKARi/qh0w9Av3jz5e', NULL, NULL, NULL),
(421, 'student 408', '$2a$10$oFeFxdciEZJdH51q4siOAuY5Wy.Th4GbobVAQngRUVPFsl.zApyl6', NULL, NULL, NULL),
(422, 'student 409', '$2a$10$g5RfV0xCAJ4qTrFB4r2hZuBTw24IP0Mi3fNDsrOQIjyLW8Lt6Uk9C', NULL, NULL, NULL),
(423, 'student 410', '$2a$10$eNZue0A4TerzTVRQYtfGOeIxbfE9UFU5ybqxgJUzBp/UDKNKrSsQy', NULL, NULL, NULL),
(424, 'student 411', '$2a$10$V5EdT9kfwgZELBjNs8Ivo.kxlPEGXY8FsITZcCi9AJDNX9BThXRG6', NULL, NULL, NULL),
(425, 'student 412', '$2a$10$/HLxzHUVwp0zkiazIotce.E0PIfG4YPCoLV9zCW4UofLyQqJNcbYK', NULL, NULL, NULL),
(426, 'student 413', '$2a$10$I0G/02LtumiwE7QMKKVDi.bNbrhp7tmj0VcB5mwrBZ9u1ndFI3Oni', NULL, NULL, NULL),
(427, 'student 414', '$2a$10$QUtvkXT9./0v.9k1d1o3v.uYVmFqwXRljouehs5BFJf6vRC/YBJwy', NULL, NULL, NULL),
(428, 'student 415', '$2a$10$q6ATgDOJEZMqk13rQPqhZ.pe0GRFFiB97qI53nlu.h8U1Mdjn9R9y', NULL, NULL, NULL),
(429, 'student 416', '$2a$10$ObbDCs0/csU1tLA4HrWWDOE2svJEpflzIhuv.IU.W6QYXCXJNqzii', NULL, NULL, NULL),
(430, 'student 417', '$2a$10$/OPi56.4/aG9WLuDL5vfv..c6CjyL4.4xNKdawK6nlxTOMdTnflie', NULL, NULL, NULL),
(431, 'student 418', '$2a$10$PDa7FpOfktmRsOAz2umujeDEHmEfo7wng2hi3U2K3ZGuuwDddtrIK', NULL, NULL, NULL),
(432, 'student 419', '$2a$10$6ukAIlX5aeWAAr97rzUiuuC.3sX.xFLDFdJqDoAkBmZlsslzuro4S', NULL, NULL, NULL),
(433, 'student 420', '$2a$10$FIMGuSeTVIvfS8n6xgiVjebEYeBxBpKiIPIyi/WNi2gVVGvKV3P2C', NULL, NULL, NULL),
(434, 'student 421', '$2a$10$9DAxu.itAeUNTPODR3aCw.WYKZDaS9DXgoIQLyfftTKU5QsaFXq6u', NULL, NULL, NULL),
(435, 'student 422', '$2a$10$nI33wApwLitq6N.RzR3c1.EvoH1O/2jehYkPCmoJzBi/PfVKNJkUG', NULL, NULL, NULL),
(436, 'student 423', '$2a$10$DYjXPJpou/172Ea6NOcwfu2gJSgrQg5YtbEe8SlKoVshgfBAvAyi2', NULL, NULL, NULL),
(437, 'student 424', '$2a$10$cBz./UsCaaGo9DXIo4vfXuzZZGeLHhwic73RYwXCXfsB6zBS99/BC', NULL, NULL, NULL),
(438, 'student 425', '$2a$10$02j7AE4C0i7b7vihyu/Q7Of2FIWLjvBqxEjLuWz1OGhh2GduqcpLS', NULL, NULL, NULL),
(439, 'student 426', '$2a$10$sF8yMvgCh.YcFIytDlWoceMzaaxVoql37HOnuV6jlXAm88deafYpq', NULL, NULL, NULL),
(440, 'student 427', '$2a$10$7.SXJOVhQbmPEZFwX6N65uHjhmfTWlebejLBWy1lVsWj3DjXexCTm', NULL, NULL, NULL),
(441, 'student 428', '$2a$10$VD.tHG2gZZJhyK7iBUv6G.JlRwBBRwD.NjxddP.JwVugslGZWeV2S', NULL, NULL, NULL),
(442, 'student 429', '$2a$10$dg9DyhDiMjegHL/9V338geBMWfsLA/RNrqMmJiE8BlT6lP52W6iW.', NULL, NULL, NULL),
(443, 'student 430', '$2a$10$vfCMqcGS4H4tqFGY511CguEWVdFNNx2bX2qGWXt5RX1aCP4I1QWEe', NULL, NULL, NULL),
(444, 'student 431', '$2a$10$8o5TPxl4kJWPx.Z8sBxwreLRf3NxhdPWAtRqAKj7jAIAD1rc82o0q', NULL, NULL, NULL),
(445, 'student 432', '$2a$10$qcLI9Ve4K9E1hBy2qaUwy.l807ccrywvno82o/E9z2dUKWGefD8QS', NULL, NULL, NULL),
(446, 'student 433', '$2a$10$Zt7e5Z.JHFUzqVcVl.Bx/uKvb11LAQuzqon.KGZlcoz44BUlJk3xW', NULL, NULL, NULL),
(447, 'student 434', '$2a$10$JDysqsYbkWUjoy5w8Kp/e.5MknZ7u/KYndN2fFZaOBBlmTQoM4qxq', NULL, NULL, NULL),
(448, 'student 435', '$2a$10$l66O5HsfJkTeOdCVGHf/tuUKXLHsTY8ts8gBEwwferJLpdg9I4fAC', NULL, NULL, NULL),
(449, 'student 436', '$2a$10$xJ1VAovaR58jB6GSdEPpr.8VdJ0eDCdfYHR3o3Ns5/cSpyoE4Utb.', NULL, NULL, NULL),
(450, 'student 437', '$2a$10$wPykZrFhQXcS/BnaiBVuzu2mDQAWTWrcMZNBMCSWsJNHFISLW9EtG', NULL, NULL, NULL),
(451, 'student 438', '$2a$10$j.0FXXSt4qg3qgRWpNPIXeHZziIY1kHpVj67uxKEWRtLf4qm3eOGO', NULL, NULL, NULL),
(452, 'student 439', '$2a$10$nLAqUzqJ8Y0CcnHP/OEKLe/47UiBq1Ilpqb6DT19uL5HPIf6Kl7HW', NULL, NULL, NULL),
(453, 'student 440', '$2a$10$/x8w8ti4sErWbWogVve9leJTUH9hHPO962LWm9Ro82obaEBT8W1YG', NULL, NULL, NULL),
(454, 'student 441', '$2a$10$5KA0kuvqqzD6NtwSWbzjFOQui2ssLUTIbc1lWBPWGAreeAuC.mmGq', NULL, NULL, NULL),
(455, 'student 442', '$2a$10$wHjlj2Wb5lI/cBho2M0ggOKTpw4nDVIFR8KDl0OGyvjFFO6uAriyy', NULL, NULL, NULL),
(456, 'student 443', '$2a$10$jdFu6POKfZvKL2JHf9Mq6OJjHMY/Poqt.gmkvDeg7ys3G0BvnHjDC', NULL, NULL, NULL),
(457, 'student 444', '$2a$10$OEF4Vll3eSFra56P5yeDpul3oRzKrsZ.vxPLS92koXWAODXNaTP6C', NULL, NULL, NULL),
(458, 'student 445', '$2a$10$fahzglGXhdqf5fJaFkAi0eIOwtVfJGOC6M2FdLwI3dw/ai4JZLl.a', NULL, NULL, NULL),
(459, 'student 446', '$2a$10$J04ayYjW4TqwOzueiAi35.PjXT6c58hlT.tV1BW5T.TM8G2CHzhfu', NULL, NULL, NULL),
(460, 'student 447', '$2a$10$zo0ZTbvoGKCt.SfP6kKequo8bAVDvvcrRwDQ1BSQQTRaExarefe/C', NULL, NULL, NULL),
(461, 'student 448', '$2a$10$YloXFvodE6syf5hgu6998.J0Y1aOoO4llH4SoHtf8BzzyDFDc7vky', NULL, NULL, NULL),
(462, 'student 449', '$2a$10$b7f0cEEryxgn0m1EfnIv5ev3L/FUNTkbTSx3oR1skPXfqm4yO84FG', NULL, NULL, NULL),
(463, 'student 450', '$2a$10$hmPKYC4ugeLeo.tZ6vtURuwlzdGuiA10wWbPL4JF6zafzhooS0L5u', NULL, NULL, NULL),
(464, 'student 451', '$2a$10$5napNsElzMHtJIlKtHE03.J0uFGcfr.cp89s2haQWFTeL4eSyqlHK', NULL, NULL, NULL),
(465, 'student 452', '$2a$10$Z3LntTHuTGf6947uB7fuqOEZuvB5mzT3KLSAppTX/CdOcwyUJXKii', NULL, NULL, NULL),
(466, 'student 453', '$2a$10$xScx4eGXwZDm5dBgKMZXcO.q.3PMazAc7IrHCuX3Ez4F3Mk16WF8i', NULL, NULL, NULL),
(467, 'student 454', '$2a$10$lL7C1YhZE2rpau8elqbeRuQ/Y0EJX.jxEDnWegdd/suyAEbUxeaIO', NULL, NULL, NULL),
(468, 'student 455', '$2a$10$UylXr7BQ4UPyCRAOX1N18.jtadFgqm7w5N/k2SSLFU2CVQ9fyVdYW', NULL, NULL, NULL),
(469, 'student 456', '$2a$10$NizzFYvJ1/YKyMPdzaIzp.y4K7Nr.R6zcGYU5yukFrcAjgWtLRzAy', NULL, NULL, NULL),
(470, 'student 457', '$2a$10$RVE9w4SteqU4faVHFg6kyOAlgOHSDJG1LJOPH8nPNsHsM2UPGFelu', NULL, NULL, NULL),
(471, 'student 458', '$2a$10$IfGTMvu8EEBeNCfYcEPypuF6FRLSN0HuvpnYWRXtJx0vQoBVQAtWW', NULL, NULL, NULL),
(472, 'student 459', '$2a$10$XazDZ3ZBzKpAbngNaZHdY.hp/VXdqMpKeYdS9Yq7C9Ntu.kvVZFMy', NULL, NULL, NULL),
(473, 'student 460', '$2a$10$McEqtp7ZCYKDYMimgv3vJeQM5GqyWgGFr48q2FcyxGewVGIe8YvSi', NULL, NULL, NULL),
(474, 'student 461', '$2a$10$SbZ.PvQpnMgzvo2h0p0Z5OwirSbWPcz39Q4GPMOPtdowLvLg/tXuW', NULL, NULL, NULL),
(475, 'student 462', '$2a$10$Yktxh6Gbe7csWb2JHQ5OueRJLU.IwaL8VS4yMFx58Gd/y1NS2JWqu', NULL, NULL, NULL),
(476, 'student 463', '$2a$10$tcPB2NkVdbsmXLvyKIggs.xgCUigeRLDsAj1l1SRBTPHM7ybgmMhK', NULL, NULL, NULL),
(477, 'student 464', '$2a$10$VX.I5Ak2Id1ZDcGggOhBy.YtfCvwFRUVZzpzWRbiN2x/2WIGEy6U.', NULL, NULL, NULL),
(478, 'student 465', '$2a$10$a3c8xjLiRUcR7vyuN6nmp.01ageVhtUSj0265eCEDzWPSl4rUvktu', NULL, NULL, NULL),
(479, 'student 466', '$2a$10$0joHJWKMSXsLHvh6j4SKcOx3m9J3SteRhvn3NZZpFmrzbI2/DzYMG', NULL, NULL, NULL),
(480, 'student 467', '$2a$10$x1J/bdpjvZoj22Ijeo3kg.kM.On3KNlVqWgyFlgGFV.frBAULqMSy', NULL, NULL, NULL),
(481, 'student 468', '$2a$10$uIv07RfW4M8sOyNJCOfaT.4r3SaCSgolIiF2YaD1BOo/eaL7wjrgu', NULL, NULL, NULL),
(482, 'student 469', '$2a$10$Jnsh/g4jEOcOWstlMGY6HOejUXML4qK/9pjGFmRLCRUGJmiEUmik2', NULL, NULL, NULL),
(483, 'student 470', '$2a$10$5KV5QcAyzpCiTZxUVTSz9OVMTI4X9/.tObdv1juPv/bpZASJ6Q6Pq', NULL, NULL, NULL),
(484, 'student 471', '$2a$10$jE4hUuMfk67Lt0Jy1F5ey.w7nQKYt5IkU1zKDBzq0kYG.Z1XbMuQO', NULL, NULL, NULL),
(485, 'student 472', '$2a$10$J3H5lwE/BCAexpdRXAIK6eD9lvDSi6R1VzUYrSxFj2fiqm7o7.f6K', NULL, NULL, NULL),
(486, 'student 473', '$2a$10$pfiDupUqiO67ErBfQOPCxOJGXQ0IFOdOemNm9PZ26Zg22/Xgcb0CS', NULL, NULL, NULL),
(487, 'student 474', '$2a$10$fvFVGsBzUqsZC8bJ/8lAo.JcjTFK8f5ibvHzMX8Scqw4AGyprqcia', NULL, NULL, NULL),
(488, 'student 475', '$2a$10$.AJbYZcqc3p.3FaXpgoqm.ero5Q/8czLA489EeuP9tfsJyXFfexj.', NULL, NULL, NULL),
(489, 'student 476', '$2a$10$/SSw8sCBTKAUnH60E9I2zOcoecqzEbHkq89pIyA3PWPgVY8ACn5HS', NULL, NULL, NULL),
(490, 'student 477', '$2a$10$jTNps1PobJ1YzehiYxQNz.fY7K/rVlKipjuD50.mGv/Jqw1bvY/sO', NULL, NULL, NULL),
(491, 'student 478', '$2a$10$EyTF0ia2hdAallMAB8xynet9ErW6Jczu9ZXKnf04JuE3Mc45XmrUW', NULL, NULL, NULL),
(492, 'student 479', '$2a$10$lF7.Pa442XS2xavz7oZmMun0oEPsHtxH.cVpOeBM38/pLgsH8ZZ/O', NULL, NULL, NULL),
(493, 'student 480', '$2a$10$RI7ua.uP74mstUllfp.LlOw6zWcRtH6CN3FI2LgzBgOZzf6YaJE2m', NULL, NULL, NULL),
(494, 'student 481', '$2a$10$iTH5cIHt6kZWDvOPgjtUFOyO..h3SfpQI0o35tzorpIhLFq54NL3S', NULL, NULL, NULL),
(495, 'student 482', '$2a$10$UrovTfCCpQWGBV/Zih3are0k8jjPj43CMTDn7es7Uup9XlMg2kbjO', NULL, NULL, NULL),
(496, 'student 483', '$2a$10$BON79ZpG9Pfu6JFD7JpRZ.zxwcFDMScvPUYhbOTjcVstcJwdaI3AK', NULL, NULL, NULL),
(497, 'student 484', '$2a$10$JovYk/HG2VMK9Qke0nDsgeoNUVONJahARcUtCtRzrxp88rVCcPuVq', NULL, NULL, NULL),
(498, 'student 485', '$2a$10$22ZD.iprv0yB6WndOcehkev6Zga9g4/ecQBvBGhpzH6zdyYkw6k5i', NULL, NULL, NULL),
(499, 'student 486', '$2a$10$qSqe6DR22LK1w3hDn3VXhuy5F8zLk1VnXR25ziwN6HvGAlnLjl1zS', NULL, NULL, NULL);
INSERT INTO `user` (`id_user`, `username`, `password`, `fullname`, `ngay_sinh`, `id_khoa`) VALUES
(500, 'student 487', '$2a$10$lsLnUlZCbEOe0dGMGSmpG.N5YTjG4N.73N6pO0uZivFUHOzzOHUw.', NULL, NULL, NULL),
(501, 'student 488', '$2a$10$foJ4tdMcxXpK/Nh83d8vaO8hfb.gYvj62qinubshObxrf6M9SuDaa', NULL, NULL, NULL),
(502, 'student 489', '$2a$10$nMHsLYyX2He2vSc7QuUMDOECyfthUJi/kjrp8JKGCsT4k9VZfgyXi', NULL, NULL, NULL),
(503, 'student 490', '$2a$10$rnM6dLb5kP.qTXX/vIg1SOHg4sG5bCNGD.XXWiPxnf7Aa59gDxNwy', NULL, NULL, NULL),
(504, 'student 491', '$2a$10$feHD5qGZ24PndfY1Kcm.9.iFhcMJZZgMQWqnGwP0z2gBFVfDDglwO', NULL, NULL, NULL),
(505, 'student 492', '$2a$10$4LQr0WsaTvEuH9dy1v/e6OE.qOafLU.3ouW9fF1KKDuVUbj3vYQY2', NULL, NULL, NULL),
(506, 'student 493', '$2a$10$QnoZg9WBC2VH0iuIR.6QL.p.MmaJcOKRpqIlRqHUV.qcdIsi67LPu', NULL, NULL, NULL),
(507, 'student 494', '$2a$10$SD0uE.0SE3bd8tI.LwKAv.MKb8o9.9mf9xL/LcUCyaHkCynechxG.', NULL, NULL, NULL),
(508, 'student 495', '$2a$10$u.lmQa9G3at/Tmc1i.oQGeCfINwYiQuVJAFeavLBfmzdfvqOiqARS', NULL, NULL, NULL),
(509, 'student 496', '$2a$10$fcoNLT3JUd.eJGMCYSZmzOW0hyYeALgIVhV9gMe..PBZnzByoLLDm', NULL, NULL, NULL),
(510, 'student 497', '$2a$10$LH.dHwEuie0nhWMafEgDwe2GfEvZaRw957BNOB44g78XWV2FvQyHC', NULL, NULL, NULL),
(511, 'student 498', '$2a$10$i3jTqdgwrthE9HbCmrfJdemBYcgUPxBuTqF9mEAy2ADgMJ8lkPv7K', NULL, NULL, NULL),
(512, 'student 499', '$2a$10$LrKSJeqDhPk8fR.iRovfyOO/wxU8Lra1HgsQo.3ApY6zkULiCr1Oq', NULL, NULL, NULL),
(513, 'student 500', '$2a$10$nmjZQDGv7RcjGh8SiXtsI.qyBdeCVtkrfAfxxdWNWfVzeJDWRbhEe', NULL, NULL, NULL),
(514, 'student 501', '$2a$10$wx8Sv/QwlPUW2Q7LPNgu3u.FAPdwO.asMt7GEuu4NPTYiEHOwapgK', NULL, NULL, NULL),
(515, 'student 502', '$2a$10$sQrYL91eZNOe81gxCadY8emzBNM5r8ZffYn5AdkjWegWMVXAHbKLS', NULL, NULL, NULL),
(516, 'student 503', '$2a$10$Erhs1U9sFElRK/rh5rNiguIhoVSYe00Xrplwg12ezV11HCsfPiLUK', NULL, NULL, NULL),
(517, 'student 504', '$2a$10$UeEf41AuHboxQm9V5o358e8CrfaNEF6PJy.jbGqsTxtd1y4r3lo2y', NULL, NULL, NULL),
(518, 'student 505', '$2a$10$PzB51JrpKmx2ACvrmJhg2uo46Pyvyq2JUdnSpLndLNNHEnSVX2tpi', NULL, NULL, NULL),
(519, 'student 506', '$2a$10$59RkdaRJFXQrVCxJeoax.OeQIrNxobizqOp8YZJX9Rcem4usWSLaK', NULL, NULL, NULL),
(520, 'student 507', '$2a$10$la5V1VihOKjs91TU0fo5RO2bCeeoJTba2r.JBn7sJhndGY2t5s1Bi', NULL, NULL, NULL),
(521, 'student 508', '$2a$10$JDouHKYEqpqUGBTKLbFYI.U4mjU9fYV2uAE/vKK1Bb8r.VZXRYbpK', NULL, NULL, NULL),
(522, 'student 509', '$2a$10$gUE65z7zGX0hm.hxVKp52ev/jIPQpDoWRcH.0EXrqm8FAynZw9MJC', NULL, NULL, NULL),
(523, 'student 510', '$2a$10$W35iiwFXlUex4mWoY31qTu2yoX5uhulDycQV3eQbui5l0RwcSwQpO', NULL, NULL, NULL),
(524, 'student 511', '$2a$10$tVFfVQwjyeOTGWVkHkp7UOBXq9ot3zUyzKXbswZ3WNKXEAgdb48xG', NULL, NULL, NULL),
(525, 'student 512', '$2a$10$JsKsEx6N/EtSynnZnKQL2.uPK5O6G.QIM1s4h0pbYVvQaNVjNqf3u', NULL, NULL, NULL),
(526, 'student 513', '$2a$10$AW7k5yudxGdPZdYx2mK8e.z6FWoTqY1sQdwpTl5UeSBKuKpaSTjdu', NULL, NULL, NULL),
(527, 'student 514', '$2a$10$kisY7Sgrx2x7tWIVb2xgp.VpozwtzgLgFnlDd2nqNLqvKZ8cU5th2', NULL, NULL, NULL),
(528, 'student 515', '$2a$10$FxxVl8JNmm.vEp1GyfycVOTasxe4.pwE4lv.2ahpS9FBEhIV4DX4u', NULL, NULL, NULL),
(529, 'student 516', '$2a$10$iTwom442ag0Q/hgjZBSHV.6Q0C1erPk49DthvJigxlR3ASo3XPQ.W', NULL, NULL, NULL),
(530, 'student 517', '$2a$10$xykg84C3X9HN/EReKmsBmO2Tmm1yT75GyyKGXdIdc2hw27q7MJ7zK', NULL, NULL, NULL),
(531, 'student 518', '$2a$10$kBMNqKAkO7txlzZBQVpVHet6khlhMt7DGD8Bp7rIzzdmPSnVnmGWW', NULL, NULL, NULL),
(532, 'student 519', '$2a$10$ZTcMELpH0E13BGGLcP7gNOKXj9cCUdrm9V33hAkpkhvhwEPUBHXLS', NULL, NULL, NULL),
(533, 'student 520', '$2a$10$b3qHVI9PF7hWQtM1Ovv2MORCC14fEnvi7.uoddmpsl7kMZVhwlXtG', NULL, NULL, NULL),
(534, 'student 521', '$2a$10$NuUz/xFHF1bcVeiyH1fmPe9kMmDH/oXCTvkCmIYSdY7P10APt.Trm', NULL, NULL, NULL),
(535, 'student 522', '$2a$10$j.0/ocIBkM3bUkBO/8ymR.r0JzZuqCvyAzXD6ymDbb2ZXAbD1cOcW', NULL, NULL, NULL),
(536, 'student 523', '$2a$10$sfvUCwmACK0/gnkegz4AUu/ZakR9EYgig81261.koRNKTBF7LJi/W', NULL, NULL, NULL),
(537, 'student 524', '$2a$10$8uV.l2/RlVvqAsgPxCii6OzueDwBVBOWNucau0V1V/akAgXNa.dvC', NULL, NULL, NULL),
(538, 'student 525', '$2a$10$zKA979S7vmr4bFsIusuMwePwqc4mjwtGjApckw4MFr46nMdPZ0gxa', NULL, NULL, NULL),
(539, 'student 526', '$2a$10$aMAA1ZZhlJ0.gMyZkmNnKOBFRIIN2v0qe3ipBHIW2rdS/mj.1Z75K', NULL, NULL, NULL),
(540, 'student 527', '$2a$10$VXUdOC.LDETboolJyITyMuXYOHTATLodYU2axf1vRtRH.RGRkiYZO', NULL, NULL, NULL),
(541, 'student 528', '$2a$10$xKEjtifGHX/mW5BVf0BjAuvDVrDHMnmKhHXazRtfc6ZmTpEf38NhG', NULL, NULL, NULL),
(542, 'student 529', '$2a$10$XuHPfrEm06bhC0fID/WIt.h3wiKsPlgV3TRriq2ZEdQHbjM5V1hfm', NULL, NULL, NULL),
(543, 'student 530', '$2a$10$5lGkc2hqH2MrDlsLE7D.7.4XZ2ZyvGFYhmMgkIn9qtnw3IurcF7wa', NULL, NULL, NULL),
(544, 'student 531', '$2a$10$MnzJ8uKMnTqvP3On1muYteWkoybL/GCz/1lnL82ePM.wirF9b8jRC', NULL, NULL, NULL),
(545, 'student 532', '$2a$10$PPTFD3ldCJM7WVH/TTvSOu6kNCj7Xen1ydyIzGGNEgkw4ngLaJiqa', NULL, NULL, NULL),
(546, 'student 533', '$2a$10$rXdtNbrZaSeA9IexDsPIAO.h3HCjV3kLmzb1zUEkl5qXzeIbLLdrm', NULL, NULL, NULL),
(547, 'student 534', '$2a$10$bS7dlLKXlJutajWcxFKkX.IlONr956qLUX9A2FWLtwdh9l7Qi8G/S', NULL, NULL, NULL),
(548, 'student 535', '$2a$10$xCLt03q/mdXkIZjSXPY4/Os3QE/fapccVez4cX9d8.ZvUYROFt65i', NULL, NULL, NULL),
(549, 'student 536', '$2a$10$3T53HNizYF9i/NWddfZPPuUOA9wwZ/60k75f4QqdODuhGkzS9nB4S', NULL, NULL, NULL),
(550, 'student 537', '$2a$10$bOIdRGVeapAPNGnuAaTMGeQT6MMqc8OX6qYZ7.gd4f5eJGnMQVHYC', NULL, NULL, NULL),
(551, 'student 538', '$2a$10$dtfCV/.iRqfyLLJMJ7VEvOcFKzNJW7GwJKQK9YkXUVBBk0PMXIlwO', NULL, NULL, NULL),
(552, 'student 539', '$2a$10$Wn.F3oPw081hssTBp1MsG.m7hxojODynkn5T1GC2nFhOHFK/lohDa', NULL, NULL, NULL),
(553, 'student 540', '$2a$10$k3E9VrY/aOZtQ96Ty7vQuuPG31juRGJcdn.nSo2XrFiJHWGxN4tyG', NULL, NULL, NULL),
(554, 'student 541', '$2a$10$ZymEldtDyac0.UbHCMKYM.FEpNEAxo.KJ9FIqD/vnrNAzw/0q61cy', NULL, NULL, NULL),
(555, 'student 542', '$2a$10$sBXx6Nojj2qRhbaFN1/CEeCp5XpNS/sEX8Q5IgL9v3H28FESd6JCa', NULL, NULL, NULL),
(556, 'student 543', '$2a$10$6y6SSdqtdP6f85YwifThtORlsV4AY.EepA78kDxL80q3aaPRn1dZy', NULL, NULL, NULL),
(557, 'student 544', '$2a$10$0Y8Ov06D4JNQlODX8dWzwuQEo3/6N7VsBFzkNrD/ob//iZ0i0SXi.', NULL, NULL, NULL),
(558, 'student 545', '$2a$10$cg2Dmo/zGxCk.z13zre0Ye/Ky2bfxvi6QGii/yK.K4ClR/rLiS35O', NULL, NULL, NULL),
(559, 'student 546', '$2a$10$QQYlxYuzhQcXRrLJCvmiTuebD3uh2.Xrtb2LKY8Aev9M.u76Z4WgK', NULL, NULL, NULL),
(560, 'student 547', '$2a$10$wG5QWHbZhKjWNwXCoR5FXurjV7hWsLNpXe3/M8NMOF5qNy1qDtM9G', NULL, NULL, NULL),
(561, 'student 548', '$2a$10$gJHYbKVPiTICaTJf0Vr.s.knBYhcWTqlg9QKH.RC7Qy3OpCcxH69m', NULL, NULL, NULL),
(562, 'student 549', '$2a$10$G8arEf1l7v4oFA7FaRaJzu/Zu2NM6iGiEL28P7fouAHPkUPkTsIBi', NULL, NULL, NULL),
(563, 'student 550', '$2a$10$HT8pL6O9yj4LSKzwrsYyJeeW49eLT7lt3Gl9hPT.X1sdQlgIJJiVG', NULL, NULL, NULL),
(564, 'student 551', '$2a$10$DGPejE1YF2nFgEGPeIQZC.y8xyfdtc36/Ptz2f4Qj2mmhH9MJEP26', NULL, NULL, NULL),
(565, 'student 552', '$2a$10$MhCqly8Oetwk/asBb52Lve84X7QTRJ8mIVUVIn1m/6EDFypMkNtF6', NULL, NULL, NULL),
(566, 'student 553', '$2a$10$xLVFscZ6NqgAlD1WDyDN6.lCy/CHd36YI5Bc//W686bvo/jMTBg4.', NULL, NULL, NULL),
(567, 'student 554', '$2a$10$9a0hVyFsrNz6tmf9SiuIw.IVS4i9vuMpVqxaJn0klo1jh/oxn.ZMS', NULL, NULL, NULL),
(568, 'student 555', '$2a$10$H.tkya31IVqr0gH8fZwfaeyo0.R8YKUJXV3KJ4rC1gIk/D7y8Z4T6', NULL, NULL, NULL),
(569, 'student 556', '$2a$10$5DjcSz24x2k8Mj4kOB5MeueRWCCCtYKrm1kf5svVdVsbX8nYbBPP6', NULL, NULL, NULL),
(570, 'student 557', '$2a$10$ofD9rYWILDY0LpzNQfq2dOtLmL89H57gDHQ9ZmlUvyh5wQerqk4BC', NULL, NULL, NULL),
(571, 'student 558', '$2a$10$FeWL0U390SkTuMkXPztOSOI/WgVdSx2ZR66Wc/Am/4WxfgqK.zFIu', NULL, NULL, NULL),
(572, 'student 559', '$2a$10$WhKktum/LIMm1pOFzJpsz.roL/rVOAsQgJQKbn4bw5dmt8EZq7YYm', NULL, NULL, NULL),
(573, 'student 560', '$2a$10$dyxQt/x1mBMfT.MyGhJiQujCa38psjOkvZLICDS.w2bQZU8DsOyLu', NULL, NULL, NULL),
(574, 'student 561', '$2a$10$cc2gDQLpwCtcRPr/bKsIe.8Vk7FjmkQ4wcwKxesvb6hBcLzlG00vm', NULL, NULL, NULL),
(575, 'student 562', '$2a$10$.wsyMyXdnN9.8fOIrPOLguwbWCcOf8OlPOB5leLcJZqC/u/8ICcQ.', NULL, NULL, NULL),
(576, 'student 563', '$2a$10$hlHTmlT.RnKZJK83R7KuGO8U79ewYPLefqHs5C4.8TdRhggLNpXjK', NULL, NULL, NULL),
(577, 'student 564', '$2a$10$eQkNLdbxjMfq8FsD4OUHn.qyG35X63/tXEJjMBtwb/G6s1dn8pJ2i', NULL, NULL, NULL),
(578, 'student 565', '$2a$10$0HRWTLV3MTr3p1g5ZgfkkeILYMrJr.u3GI5bHeDn8KwUTtE2hmgm2', NULL, NULL, NULL),
(579, 'student 566', '$2a$10$XYLQNV7mkCvi.c/X5tAAT.GgZkjdj.9eirxeXTKXVJN2T/04R7bde', NULL, NULL, NULL),
(580, 'student 567', '$2a$10$YajpAz2e6PwFS7hnHdNg2.CP1J5kYn2zkmEpgdLlyzjydOXhlW3HO', NULL, NULL, NULL),
(581, 'student 568', '$2a$10$Bue6qGHGwF2HTk0DLsmrd.p.86v8kCyyos4h60/JKxn3TpcoU7dmi', NULL, NULL, NULL),
(582, 'student 569', '$2a$10$TaC3HfovIJ6T7EFvmU3ODusc0vJHXkYUCEoxqZhIQrwqr.Xly9Wq2', NULL, NULL, NULL),
(583, 'student 570', '$2a$10$hIGDFG.54YpKlyaPTjCsuuDpRKsJ/nGxXwv8qdWhSa8XFMN2PnJ0K', NULL, NULL, NULL),
(584, 'student 571', '$2a$10$XoIeKTt39mJlW1uxyJ9UdeKsXcO2XfiEe7U/5l3G9dO1yC/RBgdmO', NULL, NULL, NULL),
(585, 'student 572', '$2a$10$MQL5ISxPvun2FAwtsSfJKu0f2k8X3iPH6ao4uOviWq8WmlMQMAQDy', NULL, NULL, NULL),
(586, 'student 573', '$2a$10$ZSIgYt1dfjrFa9vhTNPK8eNxkDpKVprDgQ3w6acJpKHWGGibxRATC', NULL, NULL, NULL),
(587, 'student 574', '$2a$10$awZhqGkDqgYxJ0VMeS0wN.QOSv.2jdNMrF5Noo6H6Y4LZe3.eZWH.', NULL, NULL, NULL),
(588, 'student 575', '$2a$10$JQdj0mvMBgRy5RQ.fOI.He/s2mUwVDITRXOZ0zWNLmXPF4IWZ8bbS', NULL, NULL, NULL),
(589, 'student 576', '$2a$10$euR9ygO5vNeOJvd3omSovedl0C0p2iqjJEIfUnLjx0zPmox6MblwG', NULL, NULL, NULL),
(590, 'student 577', '$2a$10$1jjsP2kbuvQgLr/v0k8k5uf9PhtzOG2B8r8aMwI5mEDVbq5V1TUBS', NULL, NULL, NULL),
(591, 'student 578', '$2a$10$Fm.ILetqK1AWxXs60NGUrO6S/UG2LlYkomvBig64Sv9ixBLxXcJXC', NULL, NULL, NULL),
(592, 'student 579', '$2a$10$lRkDOPFhb8KlQM6K3PX8N.0MklzJjo/t49qdfEC.YrgUTS9Y4IhPu', NULL, NULL, NULL),
(593, 'student 580', '$2a$10$kuxWTufDD/eEL6fERpxynOR.jpEqRCr9t55v6et6eMfr.twUDb5zm', NULL, NULL, NULL),
(594, 'student 581', '$2a$10$.AZnW9dX0KxCeGJ21aGxM.aQ6cdvffbpTaSU5mHi4gOneHYt0rWOS', NULL, NULL, NULL),
(595, 'student 582', '$2a$10$jCjHbChL1yURJ4xMyUNQnedtvejZ50/RdBYsSWM0l4JuCYWQWi9je', NULL, NULL, NULL),
(596, 'student 583', '$2a$10$VL4.GpJrI4TlGETmYQFhGuJjsdO/8kLZf.9OWFridOSRiqto/Q.DS', NULL, NULL, NULL),
(597, 'student 584', '$2a$10$dN0wo/I.EeDYLVusyBLOVuwr79kZjNd/rcWtImtPofXIkVGC7TxpO', NULL, NULL, NULL),
(598, 'student 585', '$2a$10$TzRju/CSvX0QmzgUunNWPOd1VZ0WswenU3RZWRzSzmG3Vm6yhBelK', NULL, NULL, NULL),
(599, 'student 586', '$2a$10$Ogc1fnozSwO7.cgusTUReer88Ayya06LETl4CrZETIFFR0UVqXBym', NULL, NULL, NULL),
(600, 'student 587', '$2a$10$LvbrsjrLpU2xt140wSfkk.SQZNCy8wbjBwSCYkTwIZPFLD5drOZGq', NULL, NULL, NULL),
(601, 'student 588', '$2a$10$xEop0lvd3bQWpaIkOe6thufj1WB9bvLMQYCrQDbyI0YDGYvPCnuAK', NULL, NULL, NULL),
(602, 'student 589', '$2a$10$1zruzA2IQRJ3pBl25tEC5u5te85XE.KzelJb5T/PR6HIlGi5eBAP.', NULL, NULL, NULL),
(603, 'student 590', '$2a$10$oO2TfAbjzuEOXIxpsm6ybOaoIRMlMfeNVOzICTZ1NDJKIjDO8uDTW', NULL, NULL, NULL),
(604, 'student 591', '$2a$10$AguzQTM3NrxRT9C.5IhgUeuDdmfhqG7aQhnuBXj362hXQhhGVUGmG', NULL, NULL, NULL),
(605, 'student 592', '$2a$10$muQh1GfKel.4WyNiN2vTb.lHYFAVEKleeRxyAZU4HmQbG5CpXBubu', NULL, NULL, NULL),
(606, 'student 593', '$2a$10$u37gJHRLmf5yQljiHgvFZ.0Fg/SXZLG1WH3AN.OWgOXIJMTZyewtG', NULL, NULL, NULL),
(607, 'student 594', '$2a$10$qGevM4i0hMYmY/A3ip3/Z.ZvMJjICImTCI8w0rjVcBoa2Y2oEsII6', NULL, NULL, NULL),
(608, 'student 595', '$2a$10$cDrp.AkcYTUUfHIfBUzlzuQPUw056TADeBog.9jgQ8.9UPUbcFhKa', NULL, NULL, NULL),
(609, 'student 596', '$2a$10$pc0oHoPTL2uXP09yKHGYiu0IM3m0NCrhlj2d.5pWMC8zqCi3aLrYO', NULL, NULL, NULL),
(610, 'student 597', '$2a$10$PQr36Le6KBTS5qJGSFibOOYjB01JqMSh678TOaLEBjhdRdgeEphK2', NULL, NULL, NULL),
(611, 'student 598', '$2a$10$bqThGuJfL483rgdUgl/v8OAKtmCcr4Tq0ga3Rpz5eS2JTKhkRGE0m', NULL, NULL, NULL),
(612, 'student 599', '$2a$10$91pLNKfOLNfhmunNhuojoen1gx4naS9A3HtbnjBE4uhgavOY737NS', NULL, NULL, NULL),
(613, 'student 600', '$2a$10$FgbIyQOsKpscYTr7gCOpX.uHR/tQIFd5xkSvY0GcRQqHdHG9fLZcO', NULL, NULL, NULL),
(614, 'student 601', '$2a$10$3zlDaXjW9.gs8N7ne9mmzu21x2Kz2aJFvURgGHC3hFlwa29BEVcZ2', NULL, NULL, NULL),
(615, 'student 602', '$2a$10$Wf8u8dYVh3ZJ3bsUUjMbROsT2ktDl96OGlbOP.ReA.tN1VoSnEa3u', NULL, NULL, NULL),
(616, 'student 603', '$2a$10$4hr.xVJJ5U9iOHzBfZmzzOLKPH/zqFsRJ.NV51ySBlaqs6rEJryFe', NULL, NULL, NULL),
(617, 'student 604', '$2a$10$prJVDge27tLoXzSkyR0orennygojr280bIOIL6vVv4LVu7QQ8eVHS', NULL, NULL, NULL),
(618, 'student 605', '$2a$10$SOHe9hn2/yLpZfSA3F8.dOMVcMzpG.lTJ.Wn9JDjGT8/.8oHMS2ke', NULL, NULL, NULL),
(619, 'student 606', '$2a$10$nNXKG2tEWfOTVMq2O9i1I.eGZXl8oLz2PcKqngi.D.Z/4Gn6Q1vYW', NULL, NULL, NULL),
(620, 'student 607', '$2a$10$CdRKk7jHREY9HCfjSEnubud8QKYaNidL6.xWRRIiT0T9uVU3XjtXa', NULL, NULL, NULL),
(621, 'student 608', '$2a$10$zJ4XVy/eH.pG8Xn/TXgWfOkdJeMcTS7uFr/jMr11eAgRRSRCrE3Zq', NULL, NULL, NULL),
(622, 'student 609', '$2a$10$BjLtlD/Oyz3Q8xZaMt8B.uH2IBcDkDSrG9gXJNKGdE/11XYPcxkAi', NULL, NULL, NULL),
(623, 'student 610', '$2a$10$qSAs1ORfN3zXyNdL0RotLe53p3rUezEVj/xZKE2wDONrSRSc.P.Pu', NULL, NULL, NULL),
(624, 'student 611', '$2a$10$PxfBmhEz2Qz3cucUmFZkH.yUGabgHAKDm7IlQ/1..lHF3A/LGXkpi', NULL, NULL, NULL),
(625, 'student 612', '$2a$10$b/GttJ/QQO.JzUbyFsrY0.aa1YvDquJyYtJcuJOLA6VtriOnoc6cS', NULL, NULL, NULL),
(626, 'student 613', '$2a$10$y82Oj.yd46oAzSCViB.YHuIKcqKnG9ELzDAbfTnrZE/163kjiqiCK', NULL, NULL, NULL),
(627, 'student 614', '$2a$10$ugpF5ohFKgrzQwvuVeuUnuFTm73zBOO/oZQRbbvesHhQukjFqYRQm', NULL, NULL, NULL),
(628, 'student 615', '$2a$10$xFGNoPFPtFiOsxJW7go/1uv9Ku3JIqXdCIdM8xx3sRvVfpukfWJgG', NULL, NULL, NULL),
(629, 'student 616', '$2a$10$il2blu1KtfPB.fSZIlpZO.COcgPikJJ3leryYPO1wbdRuPKGyVmqG', NULL, NULL, NULL),
(630, 'student 617', '$2a$10$DsRsCjXm55ghf6PA20XoZuYFwWOM1/qEvMOzQ7tbW0AE1yI1aLnYK', NULL, NULL, NULL),
(631, 'student 618', '$2a$10$PJahXymq.SPVyzBlQxNgVe52vadWGz4xtf/FM2CDYKmJPAdJoKuIO', NULL, NULL, NULL),
(632, 'student 619', '$2a$10$3piRMQIYBzAMIAQ2Ojnyqu0uxwdfKHoZ3r.q88V3wItPUFV5cv09y', NULL, NULL, NULL),
(633, 'student 620', '$2a$10$YfrbJliD6ldWnlE/8RIwM.n7xcu6l0Sy27JD/PYC3t2udegkCu6CG', NULL, NULL, NULL),
(634, 'student 621', '$2a$10$lPRwYjAtjYFbqSx7FFab8ezisndVDpeMRn0ApCAySqASFzB6OXRRq', NULL, NULL, NULL),
(635, 'student 622', '$2a$10$Jv6KXOWrJi6fLiFTjNzpmODQK4084ec3bgXh98r1VmzKe.tVqhJ3O', NULL, NULL, NULL),
(636, 'student 623', '$2a$10$3u6DEuI4BY6CwgsarMxRJOjbouRiKXjdp1OE.6Wm/aH8YuwvtV7Xu', NULL, NULL, NULL),
(637, 'student 624', '$2a$10$jFg/PMcXxW0gJ6DcSDWC1.sPtnxvFz6Ddg28p4rMPX2NMM.Ukb9KS', NULL, NULL, NULL),
(638, 'student 625', '$2a$10$LOZ6AINossS2z2gwA0M3QuZi9aDzS.SgwJyj1a7OrVDSHiuZj9dtq', NULL, NULL, NULL),
(639, 'student 626', '$2a$10$H7HVSGUp16nOruJdW.i0Me3pbcTSEd4pFHDcwXIM8YijwSADFjhpS', NULL, NULL, NULL),
(640, 'student 627', '$2a$10$UagAnKHBduYot4gdpduH.OfiWPTZZv/omkC..vhqXZRcABr4F57O2', NULL, NULL, NULL),
(641, 'student 628', '$2a$10$v3gL3I0hxRPj7.9L0WXxWeRhKLMJgUB2fh7g07.x/DWz2ZVTP/2Z2', NULL, NULL, NULL),
(642, 'student 629', '$2a$10$/4qK8eMgsuL9hVa.OMikjeuocbr7TMiMwjiheogrqlZuJxPkPGEAO', NULL, NULL, NULL),
(643, 'student 630', '$2a$10$PLwkVfbyHjVdbsUf0SsSHO9t0ON2nBCbzlyomfnBgGuI5SNEtOHey', NULL, NULL, NULL),
(644, 'student 631', '$2a$10$nLfWg7bz/EmZkBfUgNRKo.lgWyk/REdaQkM6fJqDZY1fj.mmFEAoO', NULL, NULL, NULL),
(645, 'student 632', '$2a$10$Hs3gecVHmX/jjGgV/dTECugkQoKnUqZSZ4yLwc9JeubYyjwN0CNm.', NULL, NULL, NULL),
(646, 'student 633', '$2a$10$mu1k6foE1SkpR48MSvyEj.RaUckoBpL.PQu1QlSZnaOtBGtNndcFW', NULL, NULL, NULL),
(647, 'student 634', '$2a$10$c0hMWX5wSTUbNe9/KubRZeXPO87JzuZ57emGDfvGfiTxExoqA2BSy', NULL, NULL, NULL),
(648, 'student 635', '$2a$10$2.PrEdnutBYVIO6/J2.8veboEPtnMTs61La7/ycM4EkviSX101NCq', NULL, NULL, NULL),
(649, 'student 636', '$2a$10$slTAkuQk65SMHKb58vZeMesHJyuNbzrI8ROyi8bUeMUs4F406dq2y', NULL, NULL, NULL),
(650, 'student 637', '$2a$10$9PKqyLlKaPtMtUkOT3fU8ezv3u9BzmDeEb66yuR13KlOSaYMUG0LK', NULL, NULL, NULL),
(651, 'student 638', '$2a$10$v0GFo52i7rmephZlNtfFiOKR9g.2xnvfKXjAdsyYkiFymmWaxtQly', NULL, NULL, NULL),
(652, 'student 639', '$2a$10$ispGrRv09WCYMgaM1DSdbuiOYQx7jva4JwIL5CEHI/bLRS8OeLRs.', NULL, NULL, NULL),
(653, 'student 640', '$2a$10$LXqCl96yRDW9ah9zFpFJqOG7rwtko1d6WgLsSHConJ4jBqJM3lQQW', NULL, NULL, NULL),
(654, 'student 641', '$2a$10$VfFvsnZGF5UVxjA8VNZilOfJRWAK/ld5b2NSXD.MOFvmwERon8QWy', NULL, NULL, NULL),
(655, 'student 642', '$2a$10$GWumpX8aga.hc97.WrnMKOdVKWGwEwC.zw3NS/66fifu1wQgj0.Ny', NULL, NULL, NULL),
(656, 'student 643', '$2a$10$XthRkF27v5bl3SRuZB5o4OBGuCuyZTOgIt.FGNrQcPEzI9rLDAztS', NULL, NULL, NULL),
(657, 'student 644', '$2a$10$Lh5waqcXdzYWKbQKrP1MsOEm3DF6lHfWrq9nQuWMUJCxvtosG5keO', NULL, NULL, NULL),
(658, 'student 645', '$2a$10$0I7HYsOSmyPOj2MMNpBLpeHhCeCbgrb3ehTs7heOgL/yvc7AbQzlG', NULL, NULL, NULL),
(659, 'student 646', '$2a$10$yB55mREqyo3pH1aeUtcR5Odct./l/gsWBWc/.hmf0MqxqKwgaOy1e', NULL, NULL, NULL),
(660, 'student 647', '$2a$10$xFq.lqh9eYuIPDzxddSE7O.6AbIwfhkrDwt1aIx8J2Ptkrb9XuVLe', NULL, NULL, NULL),
(661, 'student 648', '$2a$10$7gkdD2Yqo6SRsCsK02Pcl.JHEnaYD1ZhDbrquyqlmQHeYuDyx2V2G', NULL, NULL, NULL),
(662, 'student 649', '$2a$10$Jq692hoDnKA1Aph5ekCYaew/ZvQs812JraLqtuQesks4SNBqB7Ey.', NULL, NULL, NULL),
(663, 'student 650', '$2a$10$OYvtZ08QrYte.zpRhJRgNOA/JDKBWeQFwJka9d6sV6vPGRkP/JVRW', NULL, NULL, NULL),
(664, 'student 651', '$2a$10$4QQ81jkz.6u0/.WJv9QMhuUiWVdktkcIALQLxr8LyVJ0Ss0paNFE.', NULL, NULL, NULL),
(665, 'student 652', '$2a$10$gqweWm1RTD22k4VJV2DpvO6JD8rMq0Z2ywuL7IwX.vEBAqzqkwViq', NULL, NULL, NULL),
(666, 'student 653', '$2a$10$i5gZ2Ern6jzbmxOc.9XBOe4YzKY/JsMZAkYwzUu2b4pKFJHqF3TyO', NULL, NULL, NULL),
(667, 'student 654', '$2a$10$Z8Ku.THHA5EIZfJUAqcsSuXqjMsmshMnc9Q4EakY3Dqr7e3VzsbCq', NULL, NULL, NULL),
(668, 'student 655', '$2a$10$lS/99YVBNjf5doPFrPjCAu4Wzc7QfvjytAVEOlqSUX4f1NBwGYAq.', NULL, NULL, NULL),
(669, 'student 656', '$2a$10$dU/7r18q8LSGEnAC7/fs1O4ekU0NJ5i5EJ.EAwaGO37f56ClqmBL6', NULL, NULL, NULL),
(670, 'student 657', '$2a$10$uIE2omDW8rq7jc7ccEqq3u3bBDn00VaKriPx492aXVDhCrtMZtHhC', NULL, NULL, NULL),
(671, 'student 658', '$2a$10$vDHR1uW4AJ0Vh3upjHlk6OkBplx24nMZK5P3OOyXgY9mhkpHnUxQC', NULL, NULL, NULL),
(672, 'student 659', '$2a$10$K6XerwWB5h8eyKjGvhhr6OIJPbqjhOlaB76MFrSZ85OM86vuz2iqW', NULL, NULL, NULL),
(673, 'student 660', '$2a$10$I.Sd5TRZwEXx3BdKDBE6YempyPCtyLElaqzmeLWUt5.D7SV6.6TRS', NULL, NULL, NULL),
(674, 'student 661', '$2a$10$nqaUlupN/WidnsohMRd9GeMvbTlepqbiVxGlXuS5ypkcyjCEOSU.u', NULL, NULL, NULL),
(675, 'student 662', '$2a$10$9HN99Bp5qnKMRUwI6AAl2e5WwbGWh6/1ghnHkQR3dDP8LxLGr2LJ.', NULL, NULL, NULL),
(676, 'student 663', '$2a$10$3ucFHhT1v.L0csnwZDVNb.wGtg/6qkPHELfQ46chRmCw2YCW5x47O', NULL, NULL, NULL),
(677, 'student 664', '$2a$10$qdLLPFMj4DhCqXuw3gjmseTF2Wfvx5Zl.kEYzOU6Z7JaWgo/czw5u', NULL, NULL, NULL),
(678, 'student 665', '$2a$10$b40EVhMRz2G2fAt4j.MHwukKLanqu1rfYKYd.1OvZLCr93XGejRHi', NULL, NULL, NULL),
(679, 'student 666', '$2a$10$vFC9N6Jn4PHIt0QUPjGwR.RF1F.lIcO.cPMuBdHHI.u7yN.DoHrJu', NULL, NULL, NULL),
(680, 'student 667', '$2a$10$UZ.Ea2L2cqNLx2I9mC99Fei9Jj14Cc/93MthmJ6Wqm4uE7hFKpUNe', NULL, NULL, NULL),
(681, 'student 668', '$2a$10$SYolAbWYPcyGYmn5Stemf.081htLHYECssUQodkG8zI7VEy8hwUVG', NULL, NULL, NULL),
(682, 'student 669', '$2a$10$SaBcxd.6TYWUDPWdVRTkh.nlR1OE8jqgnZQUCvwrbeop7j.RYfAuO', NULL, NULL, NULL),
(683, 'student 670', '$2a$10$df1waybhCqkesO8rOc8WJOmD14JHntQjqQ.m0ZqIjnZv/JCova1Ke', NULL, NULL, NULL),
(684, 'student 671', '$2a$10$f63BWIYeUfR65XuJVI88Ze5mnMwhwpry20i2BBLqSQV7AFTDzazkm', NULL, NULL, NULL),
(685, 'student 672', '$2a$10$3fZHR9AKsykUMi/bjCYuI.HRL8HVJ1T2cU.YsXlJpLKa1XcVE6h1u', NULL, NULL, NULL),
(686, 'student 673', '$2a$10$JsfArnrk.4GZ6ED/U.nsmO7.707vm8LbqUOgsPPPdQ1DWe2a43qPq', NULL, NULL, NULL),
(687, 'student 674', '$2a$10$dBWoLmxl0AoIVwUA9XJJ2OcXbDXFJEvEQLz6i8uam.rg8c/idzMjW', NULL, NULL, NULL),
(688, 'student 675', '$2a$10$TTm9RkStVgg9oXkcRIX7iu57r7IxQNTD9/rB/ouY8PUhD45iii0wy', NULL, NULL, NULL),
(689, 'student 676', '$2a$10$3l47nlYPMlUZov2IOkGtWOVv76/49no.hsDoEm.qUI0614WOFtF.m', NULL, NULL, NULL),
(690, 'student 677', '$2a$10$wqBrsJe8ZfHwv/I7ger8t.zs0IIpYn8rtXkbetcsLE.ClSwqgJkgy', NULL, NULL, NULL),
(691, 'student 678', '$2a$10$mW2FWkcg0SRa0XV/mP54duWFp57W2mN5UujeNC75ivr6ryGWm6MSi', NULL, NULL, NULL),
(692, 'student 679', '$2a$10$RnIcXI1Nu65uXe3zf2CSD.r8RnOwB0Ey7W0Na3mPQAHpX17i59AzO', NULL, NULL, NULL),
(693, 'student 680', '$2a$10$Lv3vksaVRgO2QAcIn0ObZuOJCJ2DS.F8nyUA8Ug6k8R4YumUaeC0q', NULL, NULL, NULL),
(694, 'student 681', '$2a$10$nha/onHUzmSbH8k4IaMWn.WdZ8unLJmx0.As7gzsPxEqRSk5VF70K', NULL, NULL, NULL),
(695, 'student 682', '$2a$10$md.2HmiK7rgsiL7kfbVnd.7LIXrUapIgPf8FQa/dSHrxVxfCwskMq', NULL, NULL, NULL),
(696, 'student 683', '$2a$10$VVm3lL/Z/6SofmhnpBFYu.gou19zq4Ra6hzLwoEGF8itLMhHlwjkm', NULL, NULL, NULL),
(697, 'student 684', '$2a$10$MUFNlms.C8eKOIlwjIUg2u3UXjMC9mM6BBMUxiS6R6jfFgTo7UCgS', NULL, NULL, NULL),
(698, 'student 685', '$2a$10$LZ2dGdJJSqtkXtJap/96g.bL5gUkVHpVNbY4Hj6kPC4U1L60Lt/S.', NULL, NULL, NULL),
(699, 'student 686', '$2a$10$RI/z/cDBps/4Q3usr3Gr6Oh98CAvksu6XpP8cUbYyhLI6vJ3K9MvG', NULL, NULL, NULL),
(700, 'student 687', '$2a$10$VQ0JJ0mLooy0e4804DsH9.ANh3OQxla1unH66liefl.RgH6IbXxQC', NULL, NULL, NULL),
(701, 'student 688', '$2a$10$sHiVvlXA5cwSDXUEXu9efuSpEGpVCa.hYBKDZiutPJvWFPSktgdDG', NULL, NULL, NULL),
(702, 'student 689', '$2a$10$H5bqpZ6gGBF6mf2WMn5Q1equZZtcqnuC4WqTUlSsbQbJKeBO.KCg6', NULL, NULL, NULL),
(703, 'student 690', '$2a$10$.RCEu2m6LdJ8rkYetq/Xc..7yWJBlk28F7ZklDnBeSXDw8sm9AbOO', NULL, NULL, NULL),
(704, 'student 691', '$2a$10$O9LuZNLEZ6mXDnIAGulvBuy63KNRONXSe8NHeIgO7HHmmGQcAb34K', NULL, NULL, NULL),
(705, 'student 692', '$2a$10$TGE38oNqMn.7YYfLfuFRhOnT40YyHPuTOwdK1lMFA2KiW9EbPMmOq', NULL, NULL, NULL),
(706, 'student 693', '$2a$10$67SftAYF47MjnYt2ACTwTOUJlqKzriYFTP2z7zWxYMeHcNeca0OPC', NULL, NULL, NULL),
(707, 'student 694', '$2a$10$pOsBM/0J.VdJkOGh6evTeei2Ad9IHxNkEF8P/EfML1.e4DYtD2ptO', NULL, NULL, NULL),
(708, 'student 695', '$2a$10$K9ZldRFvmhHcz/Mc5b7Uau79cB91xlnL5By2r4BRgrVwjyOYzvIfu', NULL, NULL, NULL),
(709, 'student 696', '$2a$10$ETl/3CIhmcUNKxLaqShcXOL0he5Hoi5pe3gPNDv0wxtztWiVS2fMe', NULL, NULL, NULL),
(710, 'student 697', '$2a$10$cRAWolwDFptIjcGrqk6nMe.IzVx9bNe48cvxZFllee.ZlMUqNk956', NULL, NULL, NULL),
(711, 'student 698', '$2a$10$byysn5cd419zfi71ntNavuzeY2BBENY3Pulwhr2wjFv.aJ.LAF1oi', NULL, NULL, NULL),
(712, 'student 699', '$2a$10$QbpxyHrGOze1ZTmohimrh.or6kv5GJpPTzfy3fkLhr7Hvf4tI67YK', NULL, NULL, NULL),
(713, 'student 700', '$2a$10$uRvQBC2xneQ6cSaX1SwwfOApWjsPtgqgkPDFhybjpbDdxyUw9Yqei', NULL, NULL, NULL),
(714, 'student 701', '$2a$10$Diw30DbNZ4AF1iH10FgxSOaK4Tz3dKLuNjy1FbU3zq3WBgysMj6gm', NULL, NULL, NULL),
(715, 'student 702', '$2a$10$UoyTrFOmd04k6FQ9fBizq.dtgs.7cAeVrKvSljnwYQKwHdml0SsOW', NULL, NULL, NULL),
(716, 'student 703', '$2a$10$6MNSXJVIocIOlEpX0uetF.YS1gkRtiMG.sJQ.gjTTL0adX2/eUNj.', NULL, NULL, NULL),
(717, 'student 704', '$2a$10$IXNvnaYYXuL9JK8XrSBRM.Pk7jsc4zBVAMbI.mJKbKghYGnQOb8m6', NULL, NULL, NULL),
(718, 'student 705', '$2a$10$6qK2ZME0PivN5u1f9ObHtO/9FKflyqNb9urOrd0U4cPJCDFHD4WrO', NULL, NULL, NULL),
(719, 'student 706', '$2a$10$bV8wdVsMBs5SO/BQeQqeMOzOMccuCHngx/7g6J2axY5XZ7eT65u4C', NULL, NULL, NULL),
(720, 'student 707', '$2a$10$JBCeVinOIxOJZrxVygZdGue8X5CO5Cz97mR9OV8kUX/usVwMvOM3W', NULL, NULL, NULL),
(721, 'student 708', '$2a$10$HrLhO5Ei6tuDai484IVVH.wHtXXNzIjwHN6kHcSIiqn/LIbZjBnEa', NULL, NULL, NULL),
(722, 'student 709', '$2a$10$lOWkiDTI5lQfGMo9vuEQH.kzaOMNJYM403JSvCOMZrAvSX6sq2mW.', NULL, NULL, NULL),
(723, 'student 710', '$2a$10$sJcqRyJj/jjSr5eybwzks.YFl/H9/yEwm/9bFVEt0EEfQbnBDmIlC', NULL, NULL, NULL),
(724, 'student 711', '$2a$10$SDBAFFx5IiHA8YmaMQO4PuIymErhNBVL4iR8oztwLEsjNGXtTAe.K', NULL, NULL, NULL),
(725, 'student 712', '$2a$10$P7cNo6ZwjdQBNnw/gZUsm.bcyKr7/VgZRmz9/BRlS4XzQeQS0nESa', NULL, NULL, NULL),
(726, 'student 713', '$2a$10$vqQSZms8.yLOEPGzYugpzef1FAYE4XHJ5jnAfKgkhheMGAG9gjP1O', NULL, NULL, NULL),
(727, 'student 714', '$2a$10$SrFKf9fGslHBs4a5b4/OmueuYMwJCoSF8QJ37zan9LJa9EJBGEN4K', NULL, NULL, NULL),
(728, 'student 715', '$2a$10$dCWDsJgfUsI6SfKTyKYc6u3AyQFqZ0aIq0BTPjO1/0horXqFVSN0O', NULL, NULL, NULL),
(729, 'student 716', '$2a$10$M7wk0kv1vS7v.kN2USobZ.0so0535asr.G2my77dtdRQlRHd6ErKm', NULL, NULL, NULL),
(730, 'student 717', '$2a$10$oJJrXB6/ARM0dEu/ieKUSe.TDgbhjNGUdShjH9.UTweST62H6ieWC', NULL, NULL, NULL),
(731, 'student 718', '$2a$10$pV/exxO43BXPd32ZkdVB8.X5M6BsqEj72dhuOnCSoHeP0E8TSDg5i', NULL, NULL, NULL),
(732, 'student 719', '$2a$10$udxQECOyL2830XPhTAUWi.20bF3T2gA2Qm1JG35eUsl94an18nWBi', NULL, NULL, NULL),
(733, 'student 720', '$2a$10$E.s75MiCohxZEX1GFX1WiugyfIpCCR6eZIoIAIflLX4dLWWYJemjS', NULL, NULL, NULL),
(734, 'student 721', '$2a$10$FQziANIlxwQYH6INajy5z.FtlRps/4xtNYpR58zThcWFQMsbRMk5i', NULL, NULL, NULL),
(735, 'student 722', '$2a$10$Qg12oK1ZncqsxQJvwrdyNucZjnhDbIc8nF.YwYmgFX0Jr2qJSnWya', NULL, NULL, NULL),
(736, 'student 723', '$2a$10$EtwI.pzTnibBYkMAqiDQG.ro0MNNsnNOLkn.1jhI1VSHx6at.dzO6', NULL, NULL, NULL),
(737, 'student 724', '$2a$10$nVVhXXSzwyeYbB9183LF9Oqee97XFcYRBLcxhLnGXcjPpw0Fst39W', NULL, NULL, NULL),
(738, 'student 725', '$2a$10$yTiV6fG1ASJnrPVTMd2U1e1aWWtsTWBlAO5jizGrik3YpaLk3vndC', NULL, NULL, NULL),
(739, 'student 726', '$2a$10$6sHns.bxmJBrmSRbApYWMu5lbj4/MjgQbac3bgRqD3mohMMThfs.a', NULL, NULL, NULL),
(740, 'student 727', '$2a$10$BN37aGT49hsxgjpo85XzNuqYMCj2pknfqV.ErYul/QDEz7JHmianS', NULL, NULL, NULL),
(741, 'student 728', '$2a$10$nKIrAH4OzXQ51z8IfKdC0OI5sN9q.U8YoHHyQhU1TWvtd4QZad1m6', NULL, NULL, NULL),
(742, 'student 729', '$2a$10$3uY/RrBXHkPv65Jl72vMVu8BMm2KWdhGBVD9DF7lQm1QbmwN0ht3i', NULL, NULL, NULL),
(743, 'student 730', '$2a$10$uVNbTmEch3yG8TSiy07xyOxAJNYU492mEhrtALR1DA2D8021xfZfm', NULL, NULL, NULL),
(744, 'student 731', '$2a$10$g3Bxqa8XkNizf/uer6ZHB.vJsLvUsEhM.ApLdmThM7OTWiiMJgtnW', NULL, NULL, NULL),
(745, 'student 732', '$2a$10$erzkEJdGhbQKy0W1tYiLaOOpv.zHyYOynKglY6yoLj9SJ83TK/o2W', NULL, NULL, NULL),
(746, 'student 733', '$2a$10$WX.q71jq1KQvUJorqIcXaulZMrdYpbO0IL3y6CKZ8m9Ob.tYdbxWy', NULL, NULL, NULL),
(747, 'student 734', '$2a$10$1WDDAdtpQrfJmQ3GSGeyieQ8p8P3zqXj0g7vsVkf6jfEJChcnsU8u', NULL, NULL, NULL),
(748, 'student 735', '$2a$10$L544ndrf1/8kjlAcvmFhN.p3ExGntjoptoaCzGNForJZXU2L8UuP.', NULL, NULL, NULL),
(749, 'student 736', '$2a$10$LaPKZZDB0dW3mixcqdWdi.7KKjJWy5kKVO/4TcR5u7EwiYf/r7CaK', NULL, NULL, NULL),
(750, 'student 737', '$2a$10$FAVV4v23MqH3XBPFstzZhOsKFJB0FE4Hjp3LpFDqoKaqWyi9V3yyG', NULL, NULL, NULL),
(751, 'student 738', '$2a$10$XsRO3Y01MlGnBa8JWzAJ4Omy2riMQD6TrikRQ8QTMBJWy42w0w2Z2', NULL, NULL, NULL),
(752, 'student 739', '$2a$10$xgNp5PQWFMP463gYWU0b2eXLv.oN29CtipKX51mf7R1OlPlZ9R/NS', NULL, NULL, NULL),
(753, 'student 740', '$2a$10$QbZSl1t0zeR8h//aJYEHoem/rWj5dRVD7f1EwOLsuadCB/kaXs2pq', NULL, NULL, NULL),
(754, 'student 741', '$2a$10$TsVOKsdQTXFvqMc0quZTU.NNNN2bwgwUe.7QR2ONKDQ1FRCAxKXrO', NULL, NULL, NULL),
(755, 'student 742', '$2a$10$sUKSrOHHQEvCjXi8AwcYQec5LunmwPd1UkJ1awiBQMoKRZF2Evhw6', NULL, NULL, NULL),
(756, 'student 743', '$2a$10$ENpBIUJ.4j9YIESWvKCdaekSsj5jPaL9enKCLGUWVqfRa7mnZb9SC', NULL, NULL, NULL),
(757, 'student 744', '$2a$10$b6/lqOKbjuH1lyyY870yh.k4.FZ8.wpYU2EzqG95pKhTebL/cN.0C', NULL, NULL, NULL),
(758, 'student 745', '$2a$10$S/Flo0GrqpP1h5co4kUPEOOsuCd96XEm9zTMaPg8rmRnirmsvr3mS', NULL, NULL, NULL),
(759, 'student 746', '$2a$10$I7E8SR2f2BHVtSBIzHk0LuXd/tEGlpUTWinSLk5PSkpI94rd8/XA6', NULL, NULL, NULL),
(760, 'student 747', '$2a$10$PPYgbiJSZK6A2Pd/nQJyeuNGPQNeSrRAovg6MgM1IKomft.TwMFzS', NULL, NULL, NULL),
(761, 'student 748', '$2a$10$EcDXoMfOzXTkUlbpVrpEPOfjhYgx9Ev5t5lCo5fB2Ssflzmv6McNK', NULL, NULL, NULL),
(762, 'student 749', '$2a$10$Epi.pabymtgwfZ71Fqte5OhF1R87o4zWyKU2TlY5rybPozPHhWjqS', NULL, NULL, NULL),
(763, 'student 750', '$2a$10$DiN5OsiJF/0pmOkEQYRV5eA70Lsfa.k51ioN7CqXtITkQH2NmKrJK', NULL, NULL, NULL),
(764, 'student 751', '$2a$10$kfJAi/YWQPHwsLL2B/aBg.VRcAPW142jEz.DdnX0o3EfMQN/P20v.', NULL, NULL, NULL),
(765, 'student 752', '$2a$10$W1ynsYcAeubxVkHDC3bXFOjEZODHsAeVqRuEjMCf3WNLGCg730f4C', NULL, NULL, NULL),
(766, 'student 753', '$2a$10$USYXxiLsygYEzcsROTtGZeg/P3Q7cY94WU4Cqm/u44xKX35HKdC1K', NULL, NULL, NULL),
(767, 'student 754', '$2a$10$9.ZscAKLYSz4MnvMBL5lwe7Cw3RPRHfTEscuNiCm6hiYbX7KXorLO', NULL, NULL, NULL),
(768, 'student 755', '$2a$10$VECyVhEztuhlSPdZqVRptuFUx/dG9h3qYOyJKJ7DUgt7Gk0dn2E0u', NULL, NULL, NULL),
(769, 'student 756', '$2a$10$smWtBo9tcB.7acjhiMrjH.v32z784CHtRgQCiqEJZjuT69/iT4Pra', NULL, NULL, NULL),
(770, 'student 757', '$2a$10$xsXm99g4McsQt8OwaFcHeuxtIkKKmWmXAy/eV/Obw3hj9U9zHMkUO', NULL, NULL, NULL),
(771, 'student 758', '$2a$10$vbpa5M66iu8Lqc4es/itNu2wR0jIHiAYXM5jVLSymE.sON7/6tszC', NULL, NULL, NULL),
(772, 'student 759', '$2a$10$Iak7c1sPinlCz0vcs1q0DOWlgHLtT0fXXdjX3KH3V7maLlA5MGzX6', NULL, NULL, NULL),
(773, 'student 760', '$2a$10$t8EU.sdHUleycH704J4z7Oex7A/RIC.C3tgTTP54n3vVMCPdd5nWS', NULL, NULL, NULL),
(774, 'student 761', '$2a$10$TWKkD5MlNzfjwd27rH.kpeC9bU0H33wUQeAbZ4MOlo9XK9TQm.UNW', NULL, NULL, NULL),
(775, 'student 762', '$2a$10$oTTtrBmGfKa2u/s4Vs6BJOYYR4t7qnLJVHD0AQQxuJSzo5EPwDKka', NULL, NULL, NULL),
(776, 'student 763', '$2a$10$6cP4LgjbfUGuBVWH2oqxqeyYfyg/Lt/84L/cYLne2HHhKeLgWdas2', NULL, NULL, NULL),
(777, 'student 764', '$2a$10$BgYSQZ1RD.Whnc4lNGE1eOYdbifgW.CJXavRirIKVQZS4762T5scm', NULL, NULL, NULL),
(778, 'student 765', '$2a$10$QaSW7q8ZekfhTRyEsiOfMui2ArBwSChGknY84o3UeH0H1g9XKqPJC', NULL, NULL, NULL),
(779, 'student 766', '$2a$10$zCeNoCPxk2Xg1AMynoCTH.AUEDsxyzZmLNbiDozcIqhOogvrwdRJi', NULL, NULL, NULL),
(780, 'student 767', '$2a$10$3oQ710IWbM1CsPSJiaupG.M2RXtcdYY/fyhT6TNCTGno3q47mS.XG', NULL, NULL, NULL),
(781, 'student 768', '$2a$10$kYtpmccT6w/k/0tiXmd9HeETHfC1T2.FgZp..TrXjNYiWHNQEN1i2', NULL, NULL, NULL),
(782, 'student 769', '$2a$10$Fh1uNY1YqJ5ZhQgHOjdyrep57t9ZU3AU9AHFlpRsQxeLcrqxsH6bu', NULL, NULL, NULL),
(783, 'student 770', '$2a$10$KVTjm1J12zuYrhBXG27k6Ogu5NHAc6vyjDCphICAtxolbWliPGs/G', NULL, NULL, NULL),
(784, 'student 771', '$2a$10$6TAL7HQMuCHfxzE8xPLH3u5EUDtKZtMAfWJ9DCoRO52GEwHnPsnnu', NULL, NULL, NULL),
(785, 'student 772', '$2a$10$BUCIBvfDAJZcJ/Os5pFlvuHR4mb7UFePJULkPI82pQWKMpNv2zi.i', NULL, NULL, NULL),
(786, 'student 773', '$2a$10$kM9Ma5ruXzJsgLo1Ab.kzOoUj.0hCnxiaeVSvFOkvHuF9R5hNNysG', NULL, NULL, NULL),
(787, 'student 774', '$2a$10$fvu1LM.2c/1/2JE5IVRaPO9m.FhLB7k4HeS4.aN8/Xs26ZUxBbQyC', NULL, NULL, NULL),
(788, 'student 775', '$2a$10$zt8Y1ui.LwMj85zp1l7CJe5mx4Y/WuQMjZod180aADWMtErxnAdRy', NULL, NULL, NULL),
(789, 'student 776', '$2a$10$tBuwiTwS6Dz2thvVIG/8KOxLCeGAXmIzFr.pCPUVYQm/T2BAriSzm', NULL, NULL, NULL),
(790, 'student 777', '$2a$10$JFIk5/LN62fdwMFysrumtOOfOF2USRci56e1g9z6XDSkk4NrugdJi', NULL, NULL, NULL),
(791, 'student 778', '$2a$10$zNKQgxb/Y1D5zoIn6e9Jp.iC673hC59yNVWNrWIO/483TkFvOm7OO', NULL, NULL, NULL),
(792, 'student 779', '$2a$10$LVH/BgD3hE9d0xdqg1n2BuD/MXsPh/4RLL000feXSHlCYnh1MGlL6', NULL, NULL, NULL),
(793, 'student 780', '$2a$10$7reFVNbZieVzQjLwFtHOJuANwEx3i6WzoVMDrxGG0goX9MvVA/Tlm', NULL, NULL, NULL),
(794, 'student 781', '$2a$10$XiQ5BdMa7lUAwpHbcfcgiuXrTBhGl0a9drKd5FDyiOUSJ12akVlLe', NULL, NULL, NULL),
(795, 'student 782', '$2a$10$IALO90E1OHh.Ja3beC206uLrVrQtiNs/NSL1JyCLTrhYHPVLx6YTq', NULL, NULL, NULL),
(796, 'student 783', '$2a$10$u9LdbLRiZYQVbxKBbn3kCuyNsDKWSOlaLjX26XafajZ/oyNfovzUS', NULL, NULL, NULL),
(797, 'student 784', '$2a$10$3UcoY5fl1ioY9cNzGuVELOqLjEJaqynAPuGxlHsOEcVzx5ZU2QHIK', NULL, NULL, NULL),
(798, 'student 785', '$2a$10$0wvyEWNyhiMohrV/EApIx.9Iy0Sl7p2DMK6mtRTMYHHI6O2XXZmse', NULL, NULL, NULL),
(799, 'student 786', '$2a$10$joV7D94ZcL8FFpzCiZMi4eY40C6MwWPOHeV5wjSAXR2skbVRTddFi', NULL, NULL, NULL),
(800, 'student 787', '$2a$10$UTZdp0tJqG2mrBu/WDSqvOXlClUSHm9pr2vCVZjK6GIYiN7B7sbOu', NULL, NULL, NULL),
(801, 'student 788', '$2a$10$rzWTPKMr7nHmUlxonTzijuzt2XTdorJXDHd5qSblzn1sOWyfoLl/m', NULL, NULL, NULL),
(802, 'student 789', '$2a$10$zoTcLfc5wWpFKISZSZJDEue24Y7vLcxv2guoMQloNZxBONUrDvWHS', NULL, NULL, NULL),
(803, 'student 790', '$2a$10$bR4wzORZ7IsJyQEaTrQGHOGaCcHISowoaDTGNoz0jPL2FM9bcZ3WK', NULL, NULL, NULL),
(804, 'student 791', '$2a$10$JkC8N8fDnxpAcjpPx6138umJBDuvlIFoQlsfJoaR50UQ2O2GJBgC.', NULL, NULL, NULL),
(805, 'student 792', '$2a$10$TS.eJKKgXb42A3zMqD3Wb.uyAgXV5HMnFjY0MF3urNKUmJlI6ZUZ6', NULL, NULL, NULL),
(806, 'student 793', '$2a$10$QjcBc.JJ4Qs6wW5NFdLmtehcKADNJvm6kMpqYTTJRbg6sUAq/cW6W', NULL, NULL, NULL),
(807, 'student 794', '$2a$10$HB.OBMbT63x9YNEKj0iN3OrUii74dUKtpxsBtPnB3b1xxu4ClWyIO', NULL, NULL, NULL),
(808, 'student 795', '$2a$10$BQ2zJfSScXQrqreSl1FdpeXPsgLTLZ.tM8ch3zk0xDG6TU6MI6VaC', NULL, NULL, NULL),
(809, 'student 796', '$2a$10$B2J2pQWg1nGd0HG2tMFMQeunKK1FsD.VcCBXhS1hVSLLOZ0jwwFZi', NULL, NULL, NULL),
(810, 'student 797', '$2a$10$yn905Lw6UlpklzZrpOsZpeDkfg2df4E8xMjPGrBDRakWOvcsy.qQK', NULL, NULL, NULL),
(811, 'student 798', '$2a$10$VhJQVCz5Cxt2ue/3b.bB/..bVAdJgGDKKMtx/L4WT0BDvHHqjEKky', NULL, NULL, NULL),
(812, 'student 799', '$2a$10$zpdWtDSx63fdJKIu3Ma3A.YDv50mEevzI2VPSHpMTo62ERJ.w89PC', NULL, NULL, NULL),
(813, 'student 800', '$2a$10$vxssKhpXXLvYpUJneCxZf.lAyVz.yZq4/kFG7l7lujb3hEnycMxqC', NULL, NULL, NULL),
(814, 'student 801', '$2a$10$GbrxwIqQ/Jlqgy0ZCA7XbeMfcOU5USl2aN4iHL4d5eOftgs/y1BIm', NULL, NULL, NULL),
(815, 'student 802', '$2a$10$jZguvAAQIgkvXqv51GxXzeT.b88iDDuyEr92LfgukwID7hFarcmje', NULL, NULL, NULL),
(816, 'student 803', '$2a$10$zpbWBQ..jBI80R9b0zXK0.qOdNC0LeS2uRhvsMMuasMv8OGpvmIvq', NULL, NULL, NULL),
(817, 'student 804', '$2a$10$5qoop3Zf8AIvvCjrlgCHcu6K3fxdQ5mH6LQDhkTUIjIQSw2b.Bjki', NULL, NULL, NULL),
(818, 'student 805', '$2a$10$chLkvhgAfErTISsmLtLpm.nUIBUe8eq8H9KzzumAOrtvK0Pf52Dh6', NULL, NULL, NULL),
(819, 'student 806', '$2a$10$sPs4lI4Jp6dsahd2C6bjn.TRlC2ese36zluzI2h1bKmaM2efSx5p2', NULL, NULL, NULL),
(820, 'student 807', '$2a$10$znwvPvw23GL31i1icH.wkuD6hK.eweGQVNIhlmVqgh.6TLp5ZxMYC', NULL, NULL, NULL),
(821, 'student 808', '$2a$10$Wbzwp7ICzCnENKV/RAcju.PWktCYZ4gioNa6jd42h5CDNLuqxsB72', NULL, NULL, NULL),
(822, 'student 809', '$2a$10$pXA165ylPn6qGbqh0xOUOOP4Acq7cEZkmwAFyT/a3kPvK0CXMdj1C', NULL, NULL, NULL),
(823, 'student 810', '$2a$10$CQrS8NYfX5nW8NhQpD8QyesD2Qy/uMuPl9xYRmH.RFgusYzfii7yi', NULL, NULL, NULL),
(824, 'student 811', '$2a$10$tbZYy4jKLTjRlXplKIEC1Ob2MF2nzWrMJg9cH46dlgtqITb89lHOy', NULL, NULL, NULL),
(825, 'student 812', '$2a$10$IP.LVockfWMBYLrA/nKmmusW0TAxlAPXcjfCgy63v9Nlv7heSjq3.', NULL, NULL, NULL),
(826, 'student 813', '$2a$10$bNDgW9zevZZG4N.qSGIHQeUvW.SmTpoGHSkbtmtr8K7bi2W/tAGsi', NULL, NULL, NULL),
(827, 'student 814', '$2a$10$3Txja7BOhPpIk0HxX2/FUeLcJYb1Pg1D5b2Dx5RL/CaZCg.shi9Pq', NULL, NULL, NULL),
(828, 'student 815', '$2a$10$q3xRWTvaT0yLmvDlfGBBIe84cEB4GBHXQ1W6zUCPoMTJJAaJOHYrq', NULL, NULL, NULL),
(829, 'student 816', '$2a$10$XpVsEazCa2ztvQHycm9ZGOGOIbjleFpVYasx5q1HqQukTqbv0p5Y2', NULL, NULL, NULL),
(830, 'student 817', '$2a$10$HvKUjjNLbCUIf2iPwycDeOmyiDKzOPtHn0UMfv/SPzeivrkYyZETm', NULL, NULL, NULL),
(831, 'student 818', '$2a$10$aqy2FLP6.bazhiOkccDWoeaHBzXnTxSUf9i.ntYtPxdR4ZVC1Q7iy', NULL, NULL, NULL),
(832, 'student 819', '$2a$10$MoTXAXxl902VCBjY3K26bOASG/qO4tpkkb1exQ2YCue4.BXZxnwLm', NULL, NULL, NULL),
(833, 'student 820', '$2a$10$JR3wj4mbb0aTwCodp.UWK.M238z1k4yY5jmS3tnANZkbUjRUzyEzW', NULL, NULL, NULL),
(834, 'student 821', '$2a$10$1PPS0lz9QvpWjl0AabEtO.oQ8t8Axf2A4IyfzKBWAYiZnxnCkrpRe', NULL, NULL, NULL),
(835, 'student 822', '$2a$10$KJCUJ1zfRKTfAAqFhAuTw.6BqIahKmjwgQupXDvf3gTJMJOiaDtdO', NULL, NULL, NULL),
(836, 'student 823', '$2a$10$XmsjXsztq5kl8ERWpkoz3esFzG5jGQnHg8NIaHvkLDknbT7vqqnO6', NULL, NULL, NULL),
(837, 'student 824', '$2a$10$kxSJDYLyvVE0K6pHDvMTJOTdwzkUznMfXh7t.KVBMkhN3926q0WAa', NULL, NULL, NULL),
(838, 'student 825', '$2a$10$XbtzfZJyCToYsNSaT8OhF.6zOSrL.bFhN6iu0DO3Bfy58vlzStho6', NULL, NULL, NULL),
(839, 'student 826', '$2a$10$TJh/vzZVsmV4M.d8XrfWoOoY6GRjvEBzOf04z28V/unwcxcg5Y8li', NULL, NULL, NULL),
(840, 'student 827', '$2a$10$2e3b3ykSVvnHrqE/wG101O.Cr8M3u9ky4I2hpJJafZTitz/eno0.G', NULL, NULL, NULL),
(841, 'student 828', '$2a$10$.PeqO0qSYgtE2kz0eyXKGO3k7yAteeS4WRL4p2KezXZ2OkU1r91JW', NULL, NULL, NULL),
(842, 'student 829', '$2a$10$68fIug60j.2hbYueul5Hye4qekAkuIVXaUdXuFQLVIbulH0hhgW2O', NULL, NULL, NULL),
(843, 'student 830', '$2a$10$kEs4jueFhzo/iiFTcNVojOdwFCj1kxRHWnYOk20qmeK0/rHvr8vGu', NULL, NULL, NULL),
(844, 'student 831', '$2a$10$iVDkBJihSDNBNMVaOiz9ceKX.lmnxLyUdTNT/1CG.7sUJDS4fj3uW', NULL, NULL, NULL),
(845, 'student 832', '$2a$10$kH8ZZ3XZYWAE507t9da3AehXPP9gsGnR9GEtyg/A2b7OsAF6lo4kG', NULL, NULL, NULL),
(846, 'student 833', '$2a$10$mxVsR6ZdzrUW45BnDiKBleXXoisTvZEITNi56PDMEMLcdmIXGOlv6', NULL, NULL, NULL),
(847, 'student 834', '$2a$10$tgsoGLEIBu2vkzBHe90qTuYJ0/DOsO9RuSku7Zl42uPsKEIKeRNK2', NULL, NULL, NULL),
(848, 'student 835', '$2a$10$gblx0OgH2oTWn64HQ1Cx.euxRDevfNrCzUbK.Ii6ivQmnTpHUoEYS', NULL, NULL, NULL),
(849, 'student 836', '$2a$10$Fj/rtzY/BT3GKPp0U2y8nO9H7uiF09NYxvVmeBctScboHwiUpBhpK', NULL, NULL, NULL),
(850, 'student 837', '$2a$10$nHq2nIEBNcLUtZ7cs7KoC..6ZE4j3FZPjvQ7.byRipn7LxOqguE1e', NULL, NULL, NULL),
(851, 'student 838', '$2a$10$5ACUpZnJbN8vV9gIV0wBVeHTIu0s97NygVD4nxworcjAXS2wStim2', NULL, NULL, NULL),
(852, 'student 839', '$2a$10$J4F36h5ncxdwOapPN5lPuO2pB37at1JbyAWuEE7QALMTGwPMrRp3e', NULL, NULL, NULL),
(853, 'student 840', '$2a$10$fFn5wZL5O.WCkeqGyv9h.ui96IdxGQQz3DGQAhyuhAIdZfAP1.Lwu', NULL, NULL, NULL),
(854, 'student 841', '$2a$10$TYOqMPvLi54IdYvncsc.7.GpxKVIQvGO34NoqEDDPpjnZifE3e.DC', NULL, NULL, NULL),
(855, 'student 842', '$2a$10$5Fxy0JXkKDzCVbLBs3Y.5uQFKE7MtmrzyBqfn5fVlBsu6sKp36dN.', NULL, NULL, NULL),
(856, 'student 843', '$2a$10$Hv1F1H9Z4oBo4RDG44TBA.ShJAZVygNRLKhaShzpabKn7cMHxJUJi', NULL, NULL, NULL),
(857, 'student 844', '$2a$10$QBjQVwdcDc10ttiU4r1Hwu7TizYOtmhcoE9sXooj5CPtY52uo/mQG', NULL, NULL, NULL),
(858, 'student 845', '$2a$10$ObK4L505H6f4qPe.wvIw/.QTm0Z6wjAQ72Na5g9aRdYqufqCbCILq', NULL, NULL, NULL),
(859, 'student 846', '$2a$10$EEKVXHn8Ukx72Gqxi9E6mujBMDaNnZRx/OjAr9x3yHjflvgPZQPXW', NULL, NULL, NULL),
(860, 'student 847', '$2a$10$/vW68DRemlN1IU7ojjttf.N7EHDUpvUlxByZxuckm88G91WT1Rn1O', NULL, NULL, NULL),
(861, 'student 848', '$2a$10$I0jKnrK.dd3uSjOLuC1IX.bpLEJ/S8Cb8VhcD9tYVkxr6W82mioza', NULL, NULL, NULL),
(862, 'student 849', '$2a$10$WeOxbhccJ1ddku6ywVxf5elCA7TjEg1wS8KsuH.C5Zvtg1fCp.vo.', NULL, NULL, NULL),
(863, 'student 850', '$2a$10$ROPuEJJmJ7tfvyGAvqHYzu5qwhsCIoaYFT5TmOsxFiq6clp.Ieceq', NULL, NULL, NULL),
(864, 'student 851', '$2a$10$cNr7j3h2659C6CGm6a.pdO03zhuJae07paxQitv4uT64uS9PRED8K', NULL, NULL, NULL),
(865, 'student 852', '$2a$10$ehTqszqF/gHoLVQ1bngiwO75h3edaDZQkoHZLmWSXx7zfomQ/Jx1S', NULL, NULL, NULL),
(866, 'student 853', '$2a$10$dJCTU.CkYV0pczIiAwGD5eVj0xvWN26V1aRPPCaXNFE2StcKiOwXi', NULL, NULL, NULL),
(867, 'student 854', '$2a$10$XXr3i3RI5AfssEfa2L30d.MXbNO1OAp0bTZ14jYIG3rC4ikRRrFaa', NULL, NULL, NULL),
(868, 'student 855', '$2a$10$vl8Id252rVtO5l48WkMc6.xoMN9VD6sSQ/5P7zX44VU4pB6UmQtVS', NULL, NULL, NULL),
(869, 'student 856', '$2a$10$wMjWUtxCMCwKyTpue4I3dunKspLf76Zl9jp8U3iaiTBBO14yFfdHO', NULL, NULL, NULL),
(870, 'student 857', '$2a$10$kKgzP/x/PzhvXUIY0RJAi.5J7C0KIrlwcNfpT/FnYkdwH3eyxH4ue', NULL, NULL, NULL),
(871, 'student 858', '$2a$10$NXWD2M1ptrN3awoBoMAAj.//uiVhRRB37LWaIcxtH2oqOqZ/yyqs.', NULL, NULL, NULL),
(872, 'student 859', '$2a$10$mws6UPcvigfP.mz71G8sveiqyKT8glVdXwk5lgoD1lG3yPl5pb1y.', NULL, NULL, NULL),
(873, 'student 860', '$2a$10$y2a8UdrZ6el3lleapOzOD.zq56bFXciMtEo8nTY631L.85vB5rBBO', NULL, NULL, NULL),
(874, 'student 861', '$2a$10$o/ALulPZt9Osb2iJD2oALe/Abr6AP4ZTflOHIdRJZd1900cgHjYe6', NULL, NULL, NULL),
(875, 'student 862', '$2a$10$jv8n2X0OCfF7Jf.2nvz1fu/8UwHWL3Mqdi39y1Cyo1MliRIDBsk2u', NULL, NULL, NULL),
(876, 'student 863', '$2a$10$Y5jdeSkywgqrWBaGnsfbkOewsCX3G9BaQtO8vpyxvsW2u3EDkHuVO', NULL, NULL, NULL),
(877, 'student 864', '$2a$10$Od9IvAPvZ0vpQieJ2ykik.iWpqcET.NtcWjMOEYJ3ioV93yRewErq', NULL, NULL, NULL),
(878, 'student 865', '$2a$10$gI1OIqK9Yb4GX8o2sU0vneDqzlwDELF0Pe4xNr0bSrrv3VuFtksYe', NULL, NULL, NULL),
(879, 'student 866', '$2a$10$Vop2iSiT2jZyyDQzTIiR8eM/XPHuMtVcwdCjv7e7VLajyVfBMkYXa', NULL, NULL, NULL),
(880, 'student 867', '$2a$10$.ecBkjluqfa8qVOltel0Ve6Ar7CNyhBPjAXBfd3gH87x9hL1l5klq', NULL, NULL, NULL),
(881, 'student 868', '$2a$10$yolqz093mnYvf1sqZ2PwQeWq/8XhN1U5cbbyh5fG/91QVIPlH.9gG', NULL, NULL, NULL),
(882, 'student 869', '$2a$10$PDy7MIiUafxpKOveCTB/muzT.AcmLpLaZzWOD937LICiN49/E3Fem', NULL, NULL, NULL),
(883, 'student 870', '$2a$10$QIvOy1g9/o0hl878gUPzgeqWl7zYThZsSPaMNA9/2kdrSDk4obiUq', NULL, NULL, NULL),
(884, 'student 871', '$2a$10$jAt7m1BJ3rIs8rToFljAr.vJ4rBThr68fuBCvMzSFHlsTYRN5rpmS', NULL, NULL, NULL),
(1035, 'lecturer2', '$2a$10$sll.q9UL0Qbi.sJ3hL5Tz.ccqG0kEO7tCAsb66up4kXB6dI/hDsAC', NULL, NULL, NULL),
(1036, 'lecturer3', '$2a$10$AJEQ3cFkYzDs.NsPGpyBzub5rMudVVe7mH6XYj4IfrAFeNH7QxdGa', NULL, NULL, NULL),
(1037, 'lecturer4', '$2a$10$FZp9mqBtApgdyDxlq0pvkufx5DTgKFbSnUnDb7NahjQjMW3CEcyoW', NULL, NULL, NULL),
(1038, 'lecturer5', '$2a$10$OAkqlK06SOuzv39GfmaQ..j82HBTN4343YB2K/3MnXsR4x/Sc5XFi', NULL, NULL, NULL),
(1039, 'lecturer6', '$2a$10$esZVyGrdeSu51035AsoNyOiAyAYRnvAy7QkzfFV7HmpAz53g0bskS', NULL, NULL, NULL),
(1040, 'lecturer7', '$2a$10$fZA9Dkd5XjFBX5JN.vckZer/LAKqjPSHMRLbVbknfHkJlPTBXMc7C', NULL, NULL, NULL),
(1041, 'lecturer8', '$2a$10$7B5uaQgd8AEeYcH9POncm.UehmEZ59psIySYx/tMCYY54z3FJ6mBi', NULL, NULL, NULL),
(1042, 'lecturer9', '$2a$10$vt9sJBzKKLplqrIcf/ZksusSmafMSnzjiAKAIuPaibCZa81Hy/6ii', NULL, NULL, NULL),
(1043, 'lecturer10', '$2a$10$O62qnh4rLsINGgvknh7IYeCAwxGROCUxyw40g42jLSdVYCOsViQo.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_learningoutcome`
--

CREATE TABLE `user_learningoutcome` (
  `id_user_learning_outcome` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_learningoutcome` int(11) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `evaluate` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_learningoutcome`
--

INSERT INTO `user_learningoutcome` (`id_user_learning_outcome`, `id_user`, `id_learningoutcome`, `percent`, `evaluate`) VALUES
(1, 10, 1, 100, 'Đạt'),
(2, 10, 2, 10, 'Chưa đạt'),
(3, 10, 3, 69, 'Đạt'),
(4, 10, 4, 96, 'Đạt'),
(5, 10, 5, 96, 'Đạt'),
(6, 10, 6, 10, 'Chưa đạt'),
(7, 10, 7, 50, 'Đạt'),
(8, 10, 8, 40, 'Chưa đạt'),
(9, 10, 9, 30, 'Chưa đạt'),
(10, 10, 10, 69, 'Đạt'),
(11, 14, 1, 100, 'dat'),
(12, 14, 2, 49, 'chua dat'),
(13, 14, 3, 100, NULL),
(14, 14, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_user`, `id_role`) VALUES
(10, 1),
(11, 2),
(12, 3),
(13, 2),
(13, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1),
(456, 1),
(457, 1),
(458, 1),
(459, 1),
(460, 1),
(461, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(469, 1),
(470, 1),
(471, 1),
(472, 1),
(473, 1),
(474, 1),
(475, 1),
(476, 1),
(477, 1),
(478, 1),
(479, 1),
(480, 1),
(481, 1),
(482, 1),
(483, 1),
(484, 1),
(485, 1),
(486, 1),
(487, 1),
(488, 1),
(489, 1),
(490, 1),
(491, 1),
(492, 1),
(493, 1),
(494, 1),
(495, 1),
(496, 1),
(497, 1),
(498, 1),
(499, 1),
(500, 1),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(715, 1),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(730, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(762, 1),
(763, 1),
(764, 1),
(765, 1),
(766, 1),
(767, 1),
(768, 1),
(769, 1),
(770, 1),
(771, 1),
(772, 1),
(773, 1),
(774, 1),
(775, 1),
(776, 1),
(777, 1),
(778, 1),
(779, 1),
(780, 1),
(781, 1),
(782, 1),
(783, 1),
(784, 1),
(785, 1),
(786, 1),
(787, 1),
(788, 1),
(789, 1),
(790, 1),
(791, 1),
(792, 1),
(793, 1),
(794, 1),
(795, 1),
(796, 1),
(797, 1),
(798, 1),
(799, 1),
(800, 1),
(801, 1),
(802, 1),
(803, 1),
(804, 1),
(805, 1),
(806, 1),
(807, 1),
(808, 1),
(809, 1),
(810, 1),
(811, 1),
(812, 1),
(813, 1),
(814, 1),
(815, 1),
(816, 1),
(817, 1),
(818, 1),
(819, 1),
(820, 1),
(821, 1),
(822, 1),
(823, 1),
(824, 1),
(825, 1),
(826, 1),
(827, 1),
(828, 1),
(829, 1),
(830, 1),
(831, 1),
(832, 1),
(833, 1),
(834, 1),
(835, 1),
(836, 1),
(837, 1),
(838, 1),
(839, 1),
(840, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 1),
(845, 1),
(846, 1),
(847, 1),
(848, 1),
(849, 1),
(850, 1),
(851, 1),
(852, 1),
(853, 1),
(854, 1),
(855, 1),
(856, 1),
(857, 1),
(858, 1),
(859, 1),
(860, 1),
(861, 1),
(862, 1),
(863, 1),
(864, 1),
(865, 1),
(866, 1),
(867, 1),
(868, 1),
(869, 1),
(870, 1),
(871, 1),
(872, 1),
(873, 1),
(874, 1),
(875, 1),
(876, 1),
(877, 1),
(878, 1),
(879, 1),
(880, 1),
(881, 1),
(882, 1),
(883, 1),
(884, 1),
(885, 1),
(886, 1),
(887, 1),
(888, 1),
(1013, 1),
(1035, 2),
(1036, 2),
(1037, 2),
(1038, 2),
(1039, 2),
(1040, 2),
(1041, 2),
(1042, 2),
(1043, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_subject`
--

CREATE TABLE `user_subject` (
  `id_user` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_subject`
--

INSERT INTO `user_subject` (`id_user`, `id_monhoc`) VALUES
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(11, 2),
(11, 3),
(11, 4),
(11, 8),
(11, 9),
(13, 1),
(13, 3),
(13, 4),
(14, 2),
(15, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_subject_coursesgoal`
--

CREATE TABLE `user_subject_coursesgoal` (
  `id_user_subject_coursesgoal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL,
  `id_coursesgoal` int(11) NOT NULL,
  `percent` float DEFAULT '0',
  `evaluate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_subject_coursesgoal`
--

INSERT INTO `user_subject_coursesgoal` (`id_user_subject_coursesgoal`, `id_user`, `id_subject`, `id_coursesgoal`, `percent`, `evaluate`) VALUES
(1, 10, 5, 1, 100, 'Đạt'),
(2, 10, 5, 2, 100, 'Đạt'),
(3, 10, 5, 3, 69, 'Đạt'),
(4, 10, 5, 4, 96, 'Đạt'),
(5, 10, 5, 5, 30, 'Chưa đạt'),
(6, 14, 6, 1, 100, 'Đạt'),
(7, 10, 6, 6, 100, 'Đạt'),
(8, 10, 2, 1, 100, 'Đạt'),
(9, 10, 2, 2, 69, 'Đạt'),
(10, 10, 2, 3, 30, 'Chưa đạt'),
(11, 10, 2, 4, 96, 'Đạt'),
(12, 10, 2, 5, 0, 'Chưa đạt'),
(13, 10, 3, 5, 99.9, 'Đạt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id_answer`),
  ADD KEY `fk_cauhoi_dethi_idx` (`id_testsubject`);

--
-- Indexes for table `answer_coursesgoal`
--
ALTER TABLE `answer_coursesgoal`
  ADD PRIMARY KEY (`id_answer`,`id_coursesgoal`),
  ADD KEY `fk_asfwerwerdsfs` (`id_coursesgoal`);

--
-- Indexes for table `coursegoal`
--
ALTER TABLE `coursegoal`
  ADD PRIMARY KEY (`id_course_goal`),
  ADD KEY `fk_chuanmh_mh_idx` (`id_subject`);

--
-- Indexes for table `coursesgoal_learningoutcome`
--
ALTER TABLE `coursesgoal_learningoutcome`
  ADD PRIMARY KEY (`id_courses_goal`,`id_learning_outcome`),
  ADD KEY `fk_idcdr_idx` (`id_learning_outcome`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id_khoa`),
  ADD KEY `fk_truong_khoa_idx` (`id_user_truong_khoa`);

--
-- Indexes for table `learningoutcome`
--
ALTER TABLE `learningoutcome`
  ADD PRIMARY KEY (`id_chuandaura`),
  ADD KEY `fk_chuandaura_khoa_idx` (`id_khoa`);

--
-- Indexes for table `lopsinhoat`
--
ALTER TABLE `lopsinhoat`
  ADD PRIMARY KEY (`id_lopsinhhoat`),
  ADD KEY `fk_covanhoctap_idx` (`id_user_covanhoctap`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id_bangdiem`),
  ADD KEY `fk_diem_monhoc_idx` (`id_monhoc`),
  ADD KEY `fk_user_idx` (`id_user`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id_monhoc`);

--
-- Indexes for table `testsubject`
--
ALTER TABLE `testsubject`
  ADD PRIMARY KEY (`id_testsubject`),
  ADD KEY `fk_dethi_monhoc_idx` (`id_subject`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_learningoutcome`
--
ALTER TABLE `user_learningoutcome`
  ADD PRIMARY KEY (`id_user_learning_outcome`),
  ADD KEY `fk_asdfasdfasdf_idx` (`id_learningoutcome`),
  ADD KEY `fk_asdfsadf_idx` (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user`,`id_role`),
  ADD KEY `fk_role_idx` (`id_role`);

--
-- Indexes for table `user_subject`
--
ALTER TABLE `user_subject`
  ADD PRIMARY KEY (`id_user`,`id_monhoc`),
  ADD KEY `fk_monhoc_usermonhoc_idx` (`id_monhoc`);

--
-- Indexes for table `user_subject_coursesgoal`
--
ALTER TABLE `user_subject_coursesgoal`
  ADD PRIMARY KEY (`id_user_subject_coursesgoal`),
  ADD KEY `fk_subject_idsubject_idx` (`id_subject`),
  ADD KEY `fk_coursesgoal_idx` (`id_coursesgoal`),
  ADD KEY `fk_asdf_idx` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursegoal`
--
ALTER TABLE `coursegoal`
  MODIFY `id_course_goal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id_khoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `learningoutcome`
--
ALTER TABLE `learningoutcome`
  MODIFY `id_chuandaura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `lopsinhoat`
--
ALTER TABLE `lopsinhoat`
  MODIFY `id_lopsinhhoat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id_bangdiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id_monhoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `testsubject`
--
ALTER TABLE `testsubject`
  MODIFY `id_testsubject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT for table `user_learningoutcome`
--
ALTER TABLE `user_learningoutcome`
  MODIFY `id_user_learning_outcome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_subject_coursesgoal`
--
ALTER TABLE `user_subject_coursesgoal`
  MODIFY `id_user_subject_coursesgoal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_cauhoi_dethi` FOREIGN KEY (`id_testsubject`) REFERENCES `testsubject` (`id_testsubject`);

--
-- Constraints for table `answer_coursesgoal`
--
ALTER TABLE `answer_coursesgoal`
  ADD CONSTRAINT `fk_asdfasdfsadf` FOREIGN KEY (`id_answer`) REFERENCES `answer` (`id_answer`),
  ADD CONSTRAINT `fk_asfwerwerdsfs` FOREIGN KEY (`id_coursesgoal`) REFERENCES `coursegoal` (`id_course_goal`);

--
-- Constraints for table `coursegoal`
--
ALTER TABLE `coursegoal`
  ADD CONSTRAINT `fk_cmh_mh` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id_monhoc`);

--
-- Constraints for table `coursesgoal_learningoutcome`
--
ALTER TABLE `coursesgoal_learningoutcome`
  ADD CONSTRAINT `fk_idcdr` FOREIGN KEY (`id_learning_outcome`) REFERENCES `learningoutcome` (`id_chuandaura`),
  ADD CONSTRAINT `fk_idcnh_cmh` FOREIGN KEY (`id_courses_goal`) REFERENCES `coursegoal` (`id_course_goal`);

--
-- Constraints for table `khoa`
--
ALTER TABLE `khoa`
  ADD CONSTRAINT `fk_truong_khoa` FOREIGN KEY (`id_user_truong_khoa`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `learningoutcome`
--
ALTER TABLE `learningoutcome`
  ADD CONSTRAINT `fk_chuandaura_khoa` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id_khoa`);

--
-- Constraints for table `lopsinhoat`
--
ALTER TABLE `lopsinhoat`
  ADD CONSTRAINT `fk_covanhoctap` FOREIGN KEY (`id_user_covanhoctap`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `fk_bangdiem_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_diem_monhoc` FOREIGN KEY (`id_monhoc`) REFERENCES `subject` (`id_monhoc`);

--
-- Constraints for table `testsubject`
--
ALTER TABLE `testsubject`
  ADD CONSTRAINT `fk_dethi_monhoc` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id_monhoc`);

--
-- Constraints for table `user_learningoutcome`
--
ALTER TABLE `user_learningoutcome`
  ADD CONSTRAINT `fk_asdfsadf` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `sdfsadf` FOREIGN KEY (`id_learningoutcome`) REFERENCES `learningoutcome` (`id_chuandaura`);

--
-- Constraints for table `user_subject_coursesgoal`
--
ALTER TABLE `user_subject_coursesgoal`
  ADD CONSTRAINT `fk_asdf` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `sadf` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id_monhoc`),
  ADD CONSTRAINT `sadfsdf` FOREIGN KEY (`id_coursesgoal`) REFERENCES `coursegoal` (`id_course_goal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
