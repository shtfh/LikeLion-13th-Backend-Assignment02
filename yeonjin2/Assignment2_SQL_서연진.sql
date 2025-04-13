USE assignment2;

CREATE TABLE Student (
    student_id INT PRIMARY KEY, -- PRIMARY KEY 학생의 고유 아이디
    name VARCHAR(50) NOT NULL, -- NOT NULL 이름을 안쓰면 안되죵
    email VARCHAR(100) UNIQUE -- UNIQUE 이메일의 중복을 막기 위해
);

CREATE TABLE Book (
    book_id INT PRIMARY KEY, -- PRIMARY KEY 책의 고유 아이디
    title VARCHAR(100) NOT NULL, -- NOT NULL 책 제목은 꼭 써야죠
    author VARCHAR(50),
    borrower_id INT, -- 학생 테이블을 참조하는 외래키

    FOREIGN KEY (borrower_id) REFERENCES Student(student_id)
    ON DELETE SET NULL -- 학생 정보가 삭제되면 빌린 정보만 NULL 처리 할 수 있도록
);

USE assignment2;
INSERT INTO Student (student_id, name, email)
VALUES
(1, '김멋사', 'kim@example.com'),
(2, '이멋사', 'lee@example.com'),
(3, '박멋사', 'park@example.com');

USE assignment2;
INSERT INTO Book (book_id, title, author, borrower_id)
VALUES
(101, '누가 내 머리에 똥 쌌어', '베르너', 1),
(102, '혼자 공부하는 파이썬', '윤인성', 2),
(103, '강아지 똥', '권정생', 3);


USE assignment2;
SELECT s.name AS 학생이름, b.title AS 책제목
FROM Student s
JOIN Book b ON s.student_id = b.borrower_id;
