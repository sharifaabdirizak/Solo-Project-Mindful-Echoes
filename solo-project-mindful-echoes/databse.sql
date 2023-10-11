-- CREATE DATABASE "solo_project"
-- Set up database in postico

CREATE TABLE "users" (
    id serial PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15),
    password VARCHAR(255)
);

CREATE TABLE journal_entries (
    id serial PRIMARY KEY,
    date DATE,
    content TEXT,
    daily_affirmation VARCHAR(255),
    user_id INTEGER,
    is_related_to_love BOOLEAN,
    is_related_to_confidence BOOLEAN,
    is_related_to_self_esteem BOOLEAN,
    is_related_to_relationship BOOLEAN,
    is_related_to_attitude BOOLEAN,
    is_related_to_health BOOLEAN,
    is_related_to_gratitude BOOLEAN,
    is_related_to_exercise BOOLEAN,
    is_related_to_forgiveness BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
