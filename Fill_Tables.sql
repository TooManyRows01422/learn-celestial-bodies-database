INSERT INTO galaxy (name, type, age, discovered, description) VALUES
('Milky Way', 'Spiral', 13700.00, TRUE, 'The galaxy that contains our Solar System.'),
('Andromeda', 'Spiral', 10000.00, FALSE, 'Nearest spiral galaxy to the Milky Way.'),
('Triangulum', 'Spiral', 12000.00, TRUE, 'A member of the Local Group.'),
('Whirlpool', 'Spiral', 6000.00, FALSE, 'Also known as M51, a classic spiral galaxy.'),
('Sombrero', 'Elliptical', 9000.00, TRUE, 'Named for its resemblance to a sombrero hat.'),
('Cartwheel', 'Lenticular', 14000.00, FALSE, 'A ring galaxy with a striking appearance.');

INSERT INTO star (name, galaxy_id, mass, temperature, is_visible) VALUES
('Sun', 1, 1.989E30, 5778, TRUE),
('Proxima Centauri', 2, 2.446E29, 3042, TRUE),
('Sirius', 3, 3.978E30, 9940, TRUE),
('Betelgeuse', 4, 1.368E31, 3500, FALSE),
('Alpha Centauri A', 1, 2.188E30, 5790, TRUE),
('Alpha Centauri B', 1, 2.015E30, 5260, TRUE);

INSERT INTO planet (name, star_id, distance_from_star, has_life, atmosphere_type) VALUES
('Earth', 1, 149600000, TRUE, 'Nitrogen-Oxygen'),        -- Planet in the Solar System (Sun)
('Mars', 1, 227940000, FALSE, 'Carbon Dioxide'),         -- Planet in the Solar System (Sun)
('Jupiter', 1, 778330000, FALSE, 'Hydrogen-Helium'),     -- Planet in the Solar System (Sun)
('Proxima b', 2, 7500000, FALSE, 'Unknown'),             -- Planet orbiting Proxima Centauri
('Sirius B1', 3, 200000000, FALSE, 'Unknown'),           -- Planet orbiting Sirius
('Sirius B2', 3, 220000000, FALSE, 'Unknown'),           -- Another planet orbiting Sirius
('Alpha Centauri Bb', 5, 37000000, FALSE, 'Unknown'),    -- Planet orbiting Alpha Centauri A
('Betelgeuse I', 4, 80000000, FALSE, 'Helium-Hydrogen'), -- Planet orbiting Betelgeuse
('Betelgeuse II', 4, 150000000, FALSE, 'Helium-Hydrogen'),-- Another planet orbiting Betelgeuse
('Alpha Centauri Ab', 6, 34000000, FALSE, 'Unknown'),    -- Planet orbiting Alpha Centauri B
('Alpha Centauri Cc', 6, 38000000, FALSE, 'Unknown'),    -- Renamed duplicate to Alpha Centauri Cc
('Cartwheel I', 6, 120000000, FALSE, 'Unknown');         -- Planet orbiting Cartwheel Galaxy's star

INSERT INTO moon (name, planet_id, diameter, is_habitable, composition) VALUES
('Moon', 1, 3474, FALSE, 'Rocky'),                    -- Moon of Earth
('Phobos', 2, 22, FALSE, 'Rocky'),                    -- Moon of Mars
('Deimos', 2, 12, FALSE, 'Rocky'),                    -- Another moon of Mars
('Ganymede', 3, 5262, FALSE, 'Ice'),                  -- Moon of Jupiter
('Europa', 3, 3122, FALSE, 'Ice'),                    -- Another moon of Jupiter
('Io', 3, 3643, FALSE, 'Volcanic'),                   -- Another moon of Jupiter
('Callisto', 3, 4820, FALSE, 'Ice'),                  -- Another moon of Jupiter
('Triton', 4, 2706, FALSE, 'Ice'),                    -- Moon of Proxima b
('Charon', 4, 1212, FALSE, 'Ice'),                    -- Another moon of Proxima b
('Sirius B1 Moon 1', 5, 500, FALSE, 'Unknown'),       -- Moon of Sirius B1
('Sirius B1 Moon 2', 5, 600, FALSE, 'Unknown'),       -- Another moon of Sirius B1
('Sirius B2 Moon 1', 6, 700, FALSE, 'Unknown'),       -- Moon of Sirius B2
('Alpha Centauri Bb Moon 1', 7, 1000, FALSE, 'Unknown'), -- Moon of Alpha Centauri Bb
('Alpha Centauri Bb Moon 2', 7, 1200, FALSE, 'Unknown'), -- Another moon of Alpha Centauri Bb
('Betelgeuse I Moon 1', 8, 1300, FALSE, 'Unknown'),   -- Moon of Betelgeuse I
('Betelgeuse II Moon 1', 9, 1400, FALSE, 'Unknown'),  -- Moon of Betelgeuse II
('Alpha Centauri Ab Moon 1', 10, 1500, FALSE, 'Unknown'), -- Moon of Alpha Centauri Ab
('Alpha Centauri Cc Moon 1', 11, 1600, FALSE, 'Unknown'), -- Renamed duplicate moon of Alpha Centauri Cc
('Cartwheel I Moon 1', 12, 1700, FALSE, 'Unknown'),   -- Moon of Cartwheel I
('Cartwheel I Moon 2', 12, 1800, FALSE, 'Unknown');   -- Another moon of Cartwheel I


INSERT INTO asteroid_belt (name, planet_id, total_asteroids, width, is_explored) VALUES
('Main Belt', 1, 1000000, 200000000.00, TRUE),
('Kuiper Belt', 3, 70000, 1000000000.00, FALSE),
('Asteroid Belt X', 6, 50000, 500000000.00, FALSE);
