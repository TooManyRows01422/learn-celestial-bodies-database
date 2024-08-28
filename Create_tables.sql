CREATE TABLE if not exists galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    type VARCHAR(50) NOT NULL,
    age NUMERIC(10, 2) NOT NULL,
    discovered BOOLEAN NOT NULL,
    description TEXT
);

CREATE TABLE if not exists star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    galaxy_id INT REFERENCES galaxy(galaxy_id),
    mass NUMERIC(40,5) NOT NULL,
    temperature INT NOT NULL,
    is_visible BOOLEAN NOT NULL
);

CREATE TABLE if not exists planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    star_id INT REFERENCES star(star_id),
    distance_from_star INT NOT NULL,
    has_life BOOLEAN NOT NULL,
    atmosphere_type VARCHAR(50) NOT NULL
);

CREATE TABLE if not exists moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    planet_id INT REFERENCES planet(planet_id),
    diameter INT NOT NULL,
    is_habitable BOOLEAN NOT NULL,
    composition TEXT
);

CREATE TABLE if not exists asteroid_belt (
    asteroid_belt_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    planet_id INT REFERENCES planet(planet_id),
    total_asteroids INT NOT NULL,
    width NUMERIC(40, 2) NOT NULL,
    is_explored BOOLEAN NOT NULL
);


