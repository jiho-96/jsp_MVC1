CREATE DATABASE mytestone;
USE mytestone;

DROP TABLE IF EXISTS member;
CREATE TABLE member(
                       id varchar(10) NOT NULL,
                       pass varchar(10) NOT NULL,
                       name varchar(10) NOT NULL,
                       regidate date DEFAULT (current_date) NOT NULL,
                       PRIMARY key(id)
);

DROP TABLE IF EXISTS board;
CREATE TABLE board(
                      num int PRIMARY KEY AUTO_INCREMENT,
                      title varchar(20) NOT NULL,
                      content varchar(200) NOT NULL,
                      id varchar(10) NOT NULL,
                      postdate date DEFAULT (current_date) NOT NULL,
                      visitcount decimal(6)
);

ALTER TABLE board
    ADD CONSTRAINT board_mem_fk FOREIGN KEY (id)
        REFERENCES MEMBER (id);

INSERT INTO member(id, pass, name) values('musthave', '1234', '머스트해브');
SELECT * FROM MEMBER;


INSERT INTO board(title, content, id, visitcount) values('제목1입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목2입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목3입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목4입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목5입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목6입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목7입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목8입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목9입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목10입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목11입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목12입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목13입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목14입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목15입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목16입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목17입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목18입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목19입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목20입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목21입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목22입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목23입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목24입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목25입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목26입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목27입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목28입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목29입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목30입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목31입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목32입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목33입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목34입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목35입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목36입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목37입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목38입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목39입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목40입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목41입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목42입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목43입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목44입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목45입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목46입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목47입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목48입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목49입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목50입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목51입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목52입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목53입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목54입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목55입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목56입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목57입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목58입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목59입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목60입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목61입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목62입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목63입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목64입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목65입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목66입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목67입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목68입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목69입니다.', '내용입니다.','musthave', 0);
INSERT INTO board(title, content, id, visitcount) values('제목70입니다.', '내용입니다.','musthave', 0);
