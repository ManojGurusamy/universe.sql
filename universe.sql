--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    speed_of_galaxy numeric,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL
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
    name character varying(30),
    description text NOT NULL,
    is_round boolean,
    has_life boolean,
    speed_of_moon numeric,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL,
    planet_id integer
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
    name character varying(30),
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean,
    speed_of_planet numeric,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL,
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
    description text NOT NULL,
    is_spherical boolean,
    speed_of_star numeric,
    has_life boolean,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL,
    name character varying(30),
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    is_round boolean,
    has_life boolean,
    speed_of_sun numeric,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Barred Spiral galaxy', true, false, 300.1, 2537, 10);
INSERT INTO public.galaxy VALUES (2, 'Canis', 'Distributed dwarf irregular', false, false, 330.2, 2538, 11);
INSERT INTO public.galaxy VALUES (3, 'Cygnus', 'radio', false, false, 300.3, 2539, 12);
INSERT INTO public.galaxy VALUES (4, 'Maffei', 'Lenticular', false, false, 300.4, 2539, 12);
INSERT INTO public.galaxy VALUES (5, 'Megalinic Clouds', 'two irregular dwarf', true, false, 300.5, 2360, 13);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Spiral galaxy', true, false, 330.6, 2364, 14);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 'white_color', true, true, 1.02, 3844, 10, 3);
INSERT INTO public.moon VALUES (2, 'Moon 2', 'white_color', true, true, 1.02, 3844, 10, 5);
INSERT INTO public.moon VALUES (3, 'Moon 3', 'white_color', true, true, 1.02, 3844, 10, 5);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'white_color', true, true, 1.02, 3844, 10, 1);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'white_color', true, true, 1.02, 3844, 10, 1);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'white_color', true, true, 1.02, 3844, 10, 1);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'white_color', true, true, 1.02, 3844, 10, 9);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'white_color', true, true, 1.02, 3844, 10, 7);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'white_color', true, true, 1.02, 3844, 10, 7);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'white_color', true, true, 1.02, 3844, 10, 7);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'white_color', true, true, 1.02, 3844, 10, 4);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'white_color', true, true, 1.02, 3844, 10, 4);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'white_color', true, true, 1.02, 3844, 10, 4);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'white_color', true, true, 1.02, 3844, 10, 4);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'white_color', true, true, 1.02, 3844, 10, 4);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'white_color', true, true, 1.02, 3844, 10, 7);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'white_color', true, false, 1.02, 3844, 10, 9);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'white_color', true, false, 1.02, 3844, 10, 11);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'white_color', true, false, 1.02, 3844, 10, 11);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'white_color', true, false, 1.02, 3844, 10, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'planet', true, true, 36.5, 100, 800, 2);
INSERT INTO public.planet VALUES (2, 'Mars', 'planet', true, true, 36.5, 100, 800, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'planet', true, true, 36.5, 100, 800, 6);
INSERT INTO public.planet VALUES (4, 'saturn', 'planet', true, true, 36.5, 100, 800, 3);
INSERT INTO public.planet VALUES (5, 'Pluto', 'planet', true, true, 36.5, 100, 800, 3);
INSERT INTO public.planet VALUES (6, 'Mercury', 'planet', false, false, 36.5, 100, 800, 3);
INSERT INTO public.planet VALUES (7, 'Venus', 'planet', true, true, 36.5, 100, 800, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 'planet', true, true, 36.5, 100, 800, 4);
INSERT INTO public.planet VALUES (9, 'Uranus', 'planet', true, true, 36.5, 100, 800, 5);
INSERT INTO public.planet VALUES (10, 'Hip', 'planet', true, true, 36.5, 100, 800, 5);
INSERT INTO public.planet VALUES (11, 'Kepler', 'planet', false, false, 36.5, 100, 800, 5);
INSERT INTO public.planet VALUES (12, 'Kepler2', 'planet', false, false, 36.5, 100, 800, 5);
INSERT INTO public.planet VALUES (13, 'Hip 3 ', 'planet', true, true, 36.5, 100, 800, 3);
INSERT INTO public.planet VALUES (14, 'Hip 4 ', 'planet', true, false, 36.5, 100, 800, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STAR', false, 299, false, 300, 10, 'Lynx', 2);
INSERT INTO public.star VALUES (2, 'STAR', false, 299, false, 300, 10, 'Eridanus', 2);
INSERT INTO public.star VALUES (3, 'STAR', false, 299, false, 300, 10, 'Crux', 1);
INSERT INTO public.star VALUES (4, 'STAR', false, 299, false, 300, 10, 'Leo', 1);
INSERT INTO public.star VALUES (5, 'STAR', false, 299, false, 300, 10, 'Cancer', 3);
INSERT INTO public.star VALUES (6, 'STAR', false, 299, false, 300, 10, 'Lyra', 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun 1', 'rise_in_morning', true, false, 36.5, 151, 1000);
INSERT INTO public.sun VALUES (2, 'sun 2', 'rise_in_morning', true, false, 36.5, 151, 1000);
INSERT INTO public.sun VALUES (3, 'sun 3', 'rise_in_morning', true, false, 36.5, 151, 1000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: star constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

