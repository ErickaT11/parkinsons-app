DROP DATABASE AppKinsonDB;

CREATE DATABASE AppKinsonDB;


USE AppKinsonDB;

CREATE TABLE users(
    ID INT(11) NOT NULL AUTO_INCREMENT,
    EMAIL VARCHAR(50) NOT NULL,
    PASSWORD VARCHAR(60) NOT NULL,
    TYPE VARCHAR(60) NOT NULL,
    PRIMARY KEY (ID_USER)
);

CREATE TABLE doctors(
    ID_USER INT(11) NOT NULL,
    NAME VARCHAR(50),
    PHOTOPATH VARCHAR(255),
    FOREIGN KEY (ID_USER) REFERENCES users(ID)
);

CREATE TABLE patients(
    ID_USER INT(11) NOT NULL,
    NAME VARCHAR(50),
    PHOTOPATH VARCHAR(255),
    FOREIGN KEY (ID) REFERENCES users(ID)
);

CREATE TABLE carers(
    ID_USER INT(11) NOT NULL,
    NAME VARCHAR(50),
    PHOTOPATH VARCHAR(255),
    FOREIGN KEY (ID_USER) REFERENCES users(ID)
);