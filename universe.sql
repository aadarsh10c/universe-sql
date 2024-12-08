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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying NOT NULL,
    size text,
    galaxy_id integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackgole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackgole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackgole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackgole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackgole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    shapes text,
    size numeric
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
    name character varying NOT NULL,
    planet_id integer,
    has_water boolean,
    distance_from_planet numeric
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    moons integer NOT NULL,
    has_life boolean,
    star_id integer
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
    name character varying NOT NULL,
    planets integer NOT NULL,
    age_in_million_years numeric,
    has_planets boolean,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackgole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Milky Way Black Hole', 'Supermassive', 1);
INSERT INTO public.blackhole VALUES (2, 'Andromeda Black Hole', 'Supermassive', 2);
INSERT INTO public.blackhole VALUES (3, 'Sombrero Galaxy Black Hole', 'Intermediate', 3);
INSERT INTO public.blackhole VALUES (4, 'Whirlpool Galaxy Black Hole', 'Intermediate', 4);
INSERT INTO public.blackhole VALUES (5, 'Triangulum Galaxy Black Hole', 'Stellar', 5);
INSERT INTO public.blackhole VALUES (6, 'Centaurus A Black Hole', 'Supermassive', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'Description 1', 'circular', 10.5);
INSERT INTO public.galaxy VALUES (2, 'andomeda', 'Description 2', 'spiral', 20.0);
INSERT INTO public.galaxy VALUES (3, 'starfall', 'Description 3', 'sphere', 15.75);
INSERT INTO public.galaxy VALUES (4, 'sector236', 'Description 4', 'square', 20);
INSERT INTO public.galaxy VALUES (5, 'lemonWall', 'Description 5', 'trapezium', 25.5);
INSERT INTO public.galaxy VALUES (6, 'karlSea', 'Description 6', 'random', 30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, true, 384400);
INSERT INTO public.moon VALUES (2, 'Europa', 1, true, 670900);
INSERT INTO public.moon VALUES (4, 'sbara', 2, false, 384400);
INSERT INTO public.moon VALUES (5, 'jona', 2, false, 670900);
INSERT INTO public.moon VALUES (6, 'cobra', 2, false, 222000);
INSERT INTO public.moon VALUES (7, 'tobas', 3, false, 367400);
INSERT INTO public.moon VALUES (9, 'eskna', 4, false, 384400);
INSERT INTO public.moon VALUES (10, 'ravi', 4, true, 343500);
INSERT INTO public.moon VALUES (11, 'shukla', 5, false, 222000);
INSERT INTO public.moon VALUES (12, 'somer', 5, true, 384400);
INSERT INTO public.moon VALUES (13, 'nema', 6, true, 60900);
INSERT INTO public.moon VALUES (14, 'chain', 6, true, 22000);
INSERT INTO public.moon VALUES (15, 'train', 7, true, 384400);
INSERT INTO public.moon VALUES (16, 'egg', 7, true, 232300);
INSERT INTO public.moon VALUES (17, 'jumla', 7, true, 410400);
INSERT INTO public.moon VALUES (18, 'stun', 8, false, 384400);
INSERT INTO public.moon VALUES (19, 'chunk', 9, true, 232300);
INSERT INTO public.moon VALUES (20, 'peepla', 10, false, 410400);
INSERT INTO public.moon VALUES (21, 'ken', 11, false, 334400);
INSERT INTO public.moon VALUES (22, 'tokan', 11, true, 34500);
INSERT INTO public.moon VALUES (23, 'alpha', 12, false, 292000);
INSERT INTO public.moon VALUES (24, 'semer', 12, true, 382400);
INSERT INTO public.moon VALUES (25, 'cdawg', 12, false, 60800);
INSERT INTO public.moon VALUES (26, 'jemen', 13, true, 27000);
INSERT INTO public.moon VALUES (27, 'carl', 13, true, 232000);
INSERT INTO public.moon VALUES (29, 'strek', 14, false, 34400);
INSERT INTO public.moon VALUES (30, 'ruin', 14, true, 134500);
INSERT INTO public.moon VALUES (31, 'jimna', 14, true, 2492000);
INSERT INTO public.moon VALUES (32, 'renden', 15, true, 3400);
INSERT INTO public.moon VALUES (33, 'kales', 15, false, 160800);
INSERT INTO public.moon VALUES (34, 'tokja', 15, true, 26000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aetheris', 2, false, 1);
INSERT INTO public.planet VALUES (2, 'Thalassia', 3, true, 1);
INSERT INTO public.planet VALUES (3, 'Luminara', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'jocko', 2, false, 2);
INSERT INTO public.planet VALUES (5, 'thonp', 2, false, 3);
INSERT INTO public.planet VALUES (6, 'hydra', 2, false, 5);
INSERT INTO public.planet VALUES (7, 'komostos', 3, true, 5);
INSERT INTO public.planet VALUES (8, 'sindra', 1, true, 5);
INSERT INTO public.planet VALUES (9, 'zen', 1, true, 5);
INSERT INTO public.planet VALUES (10, 'allsight', 1, false, 5);
INSERT INTO public.planet VALUES (11, 'duplesi', 2, false, 8);
INSERT INTO public.planet VALUES (12, 'stefan', 3, true, 8);
INSERT INTO public.planet VALUES (13, 'rupa', 2, false, 9);
INSERT INTO public.planet VALUES (14, 'tell', 3, true, 9);
INSERT INTO public.planet VALUES (15, 'grogan', 3, true, 9);
INSERT INTO public.planet VALUES (16, 'jena', 0, false, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 3, 4.37, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 1, 200, true, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 4.85, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 0, 10, false, 3);
INSERT INTO public.star VALUES (5, 'Vega', 5, 450, true, 4);
INSERT INTO public.star VALUES (6, 'Rigel', 0, 8.5, false, 3);
INSERT INTO public.star VALUES (7, 'Aldebaran', 0, 65, false, 5);
INSERT INTO public.star VALUES (8, 'Antares', 2, 12.5, true, 6);
INSERT INTO public.star VALUES (9, 'Spica', 3, 11.4, true, 6);
INSERT INTO public.star VALUES (10, 'Pollux', 1, 33.7, true, 5);


--
-- Name: blackhole_blackgole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackgole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

