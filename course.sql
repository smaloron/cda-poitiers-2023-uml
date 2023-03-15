CREATE DATABASE IF NOT EXISTS course_chevaux
DEFAULT CHARACTER SET utf8;

USE course_chevaux;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS cheval;
CREATE TABLE cheval(
	id INT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS jockey;
CREATE TABLE jockey(
	id INT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS champ_de_course;
CREATE TABLE champ_de_course(
	id INT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS course;
CREATE TABLE course(
	id INT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    id_lieu INT UNSIGNED NOT NULL,
    date_course DATE NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT course_to_champ_de_course
		FOREIGN KEY(id_lieu)
        REFERENCES champ_de_course(id)
);

DROP TABLE IF EXISTS participation;
CREATE TABLE participation(
	dossard TINYINT UNSIGNED NOT NULL,
    id_cheval INT UNSIGNED,
    id_jockey INT UNSIGNED,
    id_course INT UNSIGNED,
    PRIMARY KEY(id_cheval, id_jockey, id_course),
    CONSTRAINT participation_to_cheval
		FOREIGN KEY (id_cheval)
        REFERENCES cheval(id),
	CONSTRAINT participation_to_jockey
		FOREIGN KEY (id_kockey)
        REFERENCES jockey(id),
	CONSTRAINT participation_to_course
		FOREIGN KEY (id_course)
        REFERENCES course(id)
);


SET foreign_key_checks = 1;