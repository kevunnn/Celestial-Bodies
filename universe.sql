--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    is_spherical boolean,
    size_in_light_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    nebulae_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulae_nebulae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulae_nebulae_id_seq OWNER TO freecodecamp;

--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulae_nebulae_id_seq OWNED BY public.nebulae.nebulae_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebulae nebulae_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae ALTER COLUMN nebulae_id SET DEFAULT nextval('public.nebulae_nebulae_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Spiral galaxy, nearest large galaxy to the Milky Way', 10000, false, false, 220000);
INSERT INTO public.galaxy VALUES (2, 'Cartwheel Galaxy', 'Ring galaxy formed by a collision', 500, false, false, 150000);
INSERT INTO public.galaxy VALUES (3, 'Comet Galaxy', 'Irregular galaxy with a bright core', 4500, false, false, 15000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Grand-design spiral galaxy', 400, false, false, 76000);
INSERT INTO public.galaxy VALUES (5, 'Milky Way Galaxy', 'The home galaxy of Earth', 13600, true, false, 76000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Galaxy with a bright central bulge, resembling a hat', 13000, false, false, 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna (Moon)', 'Earths natural satellite', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular moon of Mars', 4500, 0, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Small moon of Mars', 4500, 0, false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon of Jupiter', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon in the solar system', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Ancient cratered moon of Jupiter', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (7, 'Titan', 'Moon with thick atmosphere and liquid lakes', 4500, 0, false, true, 8);
INSERT INTO public.moon VALUES (8, 'Triton', 'Neptune largest moon', 4500, 0, false, true, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon with plumes of water vapor', 4500, 0, false, true, 9);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Uranus outer moon', 4500, 0, false, true, 9);
INSERT INTO public.moon VALUES (11, 'Charon', 'Largest moon of Pluto', 4500, 0, false, true, 3);
INSERT INTO public.moon VALUES (12, 'Miranda', 'Uranus small and battered moon', 4500, 0, false, true, 3);
INSERT INTO public.moon VALUES (13, 'Europa', 'Subsurface ocean moon of Jupiter', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (14, 'Rhea', 'Saturn second largest moon', 4500, 0, false, true, 1);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Irregular moon of Saturn', 4500, 0, false, false, 2);
INSERT INTO public.moon VALUES (16, 'Dione', 'Moon with icy cliffs', 4500, 0, false, true, 2);
INSERT INTO public.moon VALUES (17, 'Mimas', 'Small moon with giant crater', 4500, 0, false, true, 3);
INSERT INTO public.moon VALUES (18, 'Tethys', 'Saturn moon with a large crater', 4500, 0, false, true, 3);
INSERT INTO public.moon VALUES (19, 'Amalthea', 'Jupiters small irregular moon', 4500, 0, false, false, 5);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Neptunes irregular moon', 4500, 0, false, false, 5);


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES (1, 'Orion Nebula', 'Star-forming region in the Milky Way', 1, 1350, false, false);
INSERT INTO public.nebulae VALUES (2, 'Eagle Nebula', 'Star-forming region famous for the Pillars of Creation', 1, 7000, false, false);
INSERT INTO public.nebulae VALUES (3, 'Lagoon Nebula', 'Large star-forming region', 1, 4000, false, false);
INSERT INTO public.nebulae VALUES (4, 'Crab Nebula', 'Remnant of a supernova explosion', 950, 6500, false, false);
INSERT INTO public.nebulae VALUES (5, 'Ring Nebula', 'Planetary nebula in Lyra', 1, 2300, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Only known planet with life', 4500, 0, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Rocky Planet with a thin atmosphere', 4600, 0, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 'Potentially habitable exoplanet', 4800, 4, false, true, 2);
INSERT INTO public.planet VALUES (4, 'Kepler-22b', 'Exoplanet in the habitable zone of its star', 6000, 620, false, true, 2);
INSERT INTO public.planet VALUES (5, 'Gliese 581g', 'Candidate for habitability', 7000, 20, false, true, 3);
INSERT INTO public.planet VALUES (6, 'Kepler-62f', 'Earth-like exoplanet', 7200, 1200, false, true, 3);
INSERT INTO public.planet VALUES (7, 'Titan', 'Largest moon of Saturn, potentially life', 4500, 0, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Europa', 'Icy moon of Jupiter, potential subsurface ocean', 4500, 0, false, true, 1);
INSERT INTO public.planet VALUES (9, 'HD 209458b', 'First exoplanet with atmosphere detected', 4800, 150, false, true, 5);
INSERT INTO public.planet VALUES (10, 'Luyten b', 'Close to its star, could support life', 7500, 12, false, true, 5);
INSERT INTO public.planet VALUES (11, 'GJ 1214b', 'A water-rich exoplanet', 5500, 40, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Venus', 'Dense atmosphere, volcanic activity', 4500, 0, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star at the center of our solar system', 4600, 0, false, true, 4);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Massive red supergiant in Orion', 10, 642, false, true, 4);
INSERT INTO public.star VALUES (3, 'Vega', 'Brightest star in the Lyra constellation', 455, 25, false, true, 4);
INSERT INTO public.star VALUES (4, 'Altair', 'Bright star in Aquila constellation', 1200, 17, false, true, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'Brightest star in the night sky', 242, 9, false, true, 4);
INSERT INTO public.star VALUES (6, 'Rigel', 'Massive blue supergiant in Orion', 8, 860, false, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebulae_nebulae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulae_nebulae_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebulae nebulae_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_name_key UNIQUE (name);


--
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

