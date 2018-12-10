## 1.0.0

- Initial version, created by Stagehand

## 建表SQL:
CREATE TABLE student (id BIGINT NOT NULL, name VARCHAR(255), 
      sex VARCHAR(10), PRIMARY KEY (id));
INSERT INTO student (id,name,sex) VALUES(10164507101,"No.1","男");
INSERT INTO student (id,name,sex) VALUES(10164507102,"No.2","女");
INSERT INTO student (id,name,sex) VALUES(10164507103,"No.3","女");
INSERT INTO student (id,name,sex) VALUES(10164507104,"No.4","男");
INSERT INTO student (id,name,sex) VALUES(10164507105,"No.5","女");
INSERT INTO student (id,name,sex) VALUES(10164507106,"No.6","女");
INSERT INTO student (id,name,sex) VALUES(10164507107,"No.7","男");
INSERT INTO student (id,name,sex) VALUES(10164507108,"No.8","女");
INSERT INTO student (id,name,sex) VALUES(10164507109,"No.9","男");
INSERT INTO student (id,name,sex) VALUES(10164507110,"No.10","女");
INSERT INTO student (id,name,sex) VALUES(10164507111,"No.11","女");
INSERT INTO student (id,name,sex) VALUES(10164507112,"No.12","男");

## 路由信息
- localhost:8002/students 显示数据库中所有的学生信息
- localhost:8002/students/[:num] 显示数据库中随机的num个学生信息
- user: "root",
    password: "hello",
    host: "localhost",
    port: 3306,
    db: "example"