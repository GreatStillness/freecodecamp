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
    age numeric(18,3),
    description text,
    additional_info text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight integer,
    planet_id integer,
    additional_info text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight integer,
    has_water boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_system (
    planet_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    additional_info text
);


ALTER TABLE public.planet_system OWNER TO freecodecamp;

--
-- Name: planet_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_system_id_seq OWNER TO freecodecamp;

--
-- Name: planet_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_system_id_seq OWNED BY public.planet_system.planet_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    additional_info_1 text,
    additional_info_2 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet_system planet_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_system ALTER COLUMN planet_system_id SET DEFAULT nextval('public.planet_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'n1', 1.000, 'd1', NULL);
INSERT INTO public.galaxy VALUES (2, 'n2', 1.000, 'd1', NULL);
INSERT INTO public.galaxy VALUES (3, 'n3', 1.000, 'd1', NULL);
INSERT INTO public.galaxy VALUES (4, 'n4', 1.000, 'd1', NULL);
INSERT INTO public.galaxy VALUES (5, 'n5', 1.000, 'd1', NULL);
INSERT INTO public.galaxy VALUES (6, 'n6', 1.000, 'd1', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (9, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (11, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (12, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (13, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (14, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (15, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (16, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (17, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (18, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (20, 'm1', NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'p1', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (20, 'p1', NULL, NULL, NULL, 1);


--
-- Data for Name: planet_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_system VALUES (1, 'ps1', NULL);
INSERT INTO public.planet_system VALUES (2, 'ps2', NULL);
INSERT INTO public.planet_system VALUES (3, 'ps3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'n1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'n1', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'n1', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'n1', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'n1', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'n1', 1, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: planet_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_system_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: planet_system planet_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_system
    ADD CONSTRAINT planet_system_pkey PRIMARY KEY (planet_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq1 UNIQUE (name);


--
-- Name: moon uq1_m; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq1_m UNIQUE (additional_info);


--
-- Name: planet uq1_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq1_p UNIQUE (weight);


--
-- Name: planet_system uq1_ps; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_system
    ADD CONSTRAINT uq1_ps UNIQUE (additional_info);


--
-- Name: star uq1_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq1_s UNIQUE (additional_info_1);


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

