USE aud2;

CREATE TABLE users (
	userid INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(60) NOT NULL,
	password VARCHAR(100) NOT NULL
);

CREATE TABLE songs (
	songid INT PRIMARY KEY AUTO_INCREMENT,
	userid INT NOT NULL,
	songpath VARCHAR(255) NOT NULL,
	artist VARCHAR(50) NULL,
	title VARCHAR(50) NOT NULL,
	album VARCHAR(50) NULL,
	track VARCHAR(50) NULL,
	genre VARCHAR(50) NULL,
	year VARCHAR(50) NULL
);

CREATE TABLE playlists (
	playlistid INT PRIMARY KEY AUTO_INCREMENT,
	userid INT NOT NULL,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE playlistsongs (
	psid INT PRIMARY KEY AUTO_INCREMENT,
	playlistid INT NOT NULL,
	songid INT NOT NULL
);