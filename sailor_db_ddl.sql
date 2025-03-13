CREATE TABLE sailors(
    sid INT PRIMARY KEY ,
    sname VARCHAR(50),
    rating INT,
    age FLOAT
);

CREATE TABLE boats(
    bid INT PRIMARY KEY ,
    bname VARCHAR(50),
    color VARCHAR(20)
);

CREATE TABLE reserves(
    sid INT REFERENCES sailors(sid),
    bid INT REFERENCES boats(bid),
    day DATE ,
    PRIMARY KEY (sid,bid,day)
);
SELECT * FROM sailors;
SELECT * FROM boats;
SELECT * FROM reserves;