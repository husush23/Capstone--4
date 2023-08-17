-- create item table
CREATE TABLE item (
  id SERIAL PRIMARY KEY, 
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL
);

-- create genre table
CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- create author table
CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

-- create source table
CREATE TABLE source (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- create label table
CREATE TABLE label (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL
);

-- create book table
CREATE TABLE book (
  id SERIAL PRIMARY KEY,
  publisher VARCHAR(255) NOT NULL,
  cover_state VARCHAR(255) NOT NULL
);

-- create musicalbum table
CREATE TABLE musicalbum (
  id SERIAL PRIMARY KEY,
  on_spotify BOOLEAN NOT NULL
);

-- create movie table
CREATE TABLE movie (
  id SERIAL PRIMARY KEY,
  silet BOOLEAN NOT NULL
);
-- create game table
CREATE TABLE game (
  id SERIAL PRIMARY KEY,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE
);

-- ADD FOREGN KEYS TO THE ITEM TABLE

-- Add foreign key genre
ALTER TABLE item ADD genre INT  REFERENCES genre(id);

-- Add foreign key genre
ALTER TABLE item ADD author INT  REFERENCES author(id);

-- Add foreign key genre
ALTER TABLE item ADD source INT  REFERENCES source(id);

-- Add foreign key genre
ALTER TABLE item ADD label INT  REFERENCES label(id);
