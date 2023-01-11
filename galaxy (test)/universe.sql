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
    name character varying(30) NOT NULL,
    number_of_stars integer,
    light_years_diameter numeric(10,2),
    column1 integer
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
-- Name: galaxy_map; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_map (
    galaxy_map_id integer NOT NULL,
    name character varying(20) NOT NULL,
    place character varying(50) NOT NULL
);


ALTER TABLE public.galaxy_map OWNER TO freecodecamp;

--
-- Name: galaxy_map_galaxy_map_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_map_galaxy_map_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_map_galaxy_map_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_map_galaxy_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_map_galaxy_map_id_seq OWNED BY public.galaxy_map.galaxy_map_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    column1 integer,
    column2 integer
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
    name character varying(30) NOT NULL,
    number_of_satellites integer,
    has_life boolean,
    planet_hightlight text,
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
    alive boolean,
    galaxy_id integer,
    column1 integer
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
-- Name: galaxy_map galaxy_map_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_map ALTER COLUMN galaxy_map_id SET DEFAULT nextval('public.galaxy_map_galaxy_map_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky wa', 10000, 50000.00, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 3000, 9999.00, NULL);
INSERT INTO public.galaxy VALUES (3, 'centaurio', 5462546, 5629.00, NULL);
INSERT INTO public.galaxy VALUES (6, 'totoro2', 216125, 115342.00, 41);
INSERT INTO public.galaxy VALUES (7, 'totoro3', 7625, 431342.00, 42);
INSERT INTO public.galaxy VALUES (8, 'totoro4', 2141265, 32342.00, 45);
INSERT INTO public.galaxy VALUES (9, 'totoro5', 2141245, 2342.00, 46);


--
-- Data for Name: galaxy_map; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_map VALUES (1, 'yatama', 'yutimoto');
INSERT INTO public.galaxy_map VALUES (2, 'santol', 'putahendo');
INSERT INTO public.galaxy_map VALUES (3, 'sandia', 'yolanda');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'artificial_stallit1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'artificial_stallit2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'artificial sat1', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'artificial sat2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'artificial sat3', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'artificial sat4', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'artificial sat5', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'artificial sat6', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'artificial sat7', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'artificial sat8', 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'artificial sat9', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'artificial sat10', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'artificial sat11', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'artificial sat12', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'artificial sat13', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'artificial sat14', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'artificial sat15', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'artificial sat16', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'artificial sat17', 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'artificial sat18', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, true, 'lots of water', 1);
INSERT INTO public.planet VALUES (2, 'earth2', 3, false, 'lots of water', 1);
INSERT INTO public.planet VALUES (3, 'jupyter', 4, false, 'lots of nitrogen', 1);
INSERT INTO public.planet VALUES (4, 'pluton', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (5, 'plutonic', 3, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (6, 'saturn', 4, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (7, 'neptune', 7, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (8, 'pluton2', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (9, 'pluton3', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (10, 'pluton4', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (11, 'pluton5', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (12, 'pluton6', 1, false, ' lots of somthing ', 1);
INSERT INTO public.planet VALUES (13, 'pluton7', 1, false, ' lots of somthing ', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'red giant', false, 1, NULL);
INSERT INTO public.star VALUES (3, 'white giant', false, 1, NULL);
INSERT INTO public.star VALUES (4, 'white giant2', false, 1, NULL);
INSERT INTO public.star VALUES (5, 'white giant4', false, 1, NULL);
INSERT INTO public.star VALUES (6, 'white giant6', false, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: galaxy_map_galaxy_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_map_galaxy_map_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_map galaxy_map_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_map
    ADD CONSTRAINT galaxy_map_name_key UNIQUE (name);


--
-- Name: galaxy_map galaxy_map_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_map
    ADD CONSTRAINT galaxy_map_pkey PRIMARY KEY (galaxy_map_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

