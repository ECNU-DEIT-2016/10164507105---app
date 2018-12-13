## 1.0.0

- Initial version, created by Stagehand

## 建表SQL:
CREATE TABLE student (id BIGINT NOT NULL, name VARCHAR(255), 
      sex VARCHAR(10), PRIMARY KEY (id));
INSERT INTO student (id,name,sex) VALUES(10164507101,"李典康","男");
INSERT INTO student (id,name,sex) VALUES(10164507102,"陈瑶","女");
INSERT INTO student (id,name,sex) VALUES(10164507103,"蔡心蕊","女");
INSERT INTO student (id,name,sex) VALUES(10164507104,"戚晓颖","女");
INSERT INTO student (id,name,sex) VALUES(10164507105,"张静雅","女");
INSERT INTO student (id,name,sex) VALUES(10164507106,"龙晶毅","女");
INSERT INTO student (id,name,sex) VALUES(10164507107,"郑可欣","女");
INSERT INTO student (id,name,sex) VALUES(10164507108,"唐莉雯","女");
INSERT INTO student (id,name,sex) VALUES(10164507109,"周嘉翔","男");
INSERT INTO student (id,name,sex) VALUES(10164507110,"赵世宇","男");
INSERT INTO student (id,name,sex) VALUES(10164507111,"朱子恒","男");
INSERT INTO student (id,name,sex) VALUES(10164507112,"吴松二","女");

## 路由信息
- localhost:8002/students 显示数据库中所有的学生信息
- localhost:8002/students/[:num] 显示数据库中随机的num个学生信息
- user: "root",
    password: "hello",
    host: "localhost",
    port: 3306,
    db: "example"