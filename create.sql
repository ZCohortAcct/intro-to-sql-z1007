CREATE TABLE "albums" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title"	TEXT NOT NULL,
  "number_of_tracks" INTEGER,
	"artist_id"	INTEGER
);

CREATE TABLE "artists" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT NOT NULL,
	"genre_id"	INTEGER
);

CREATE TABLE "fans" (
	"id"	INTEGER,
	"name"	TEXT,
	"artist_id"	INTEGER,
	PRIMARY KEY("id")
);

CREATE TABLE "genres" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT
);