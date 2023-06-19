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
    name character varying(20) NOT NULL,
    age_million_years integer,
    distance_light_years numeric,
    description text,
    dblack_hole boolean,
    spiral boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_description_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_description_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_description_seq OWNER TO freecodecamp;

--
-- Name: galaxy_description_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_description_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_million_years integer,
    distance_from_earth numeric,
    description text,
    solar_system boolean,
    livable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_distance_from_earth_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_distance_from_earth_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_distance_from_earth_seq OWNER TO freecodecamp;

--
-- Name: moon_distance_from_earth_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_distance_from_earth_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_million_years integer,
    ratio numeric,
    description text,
    solar_system boolean,
    livable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_solar_system_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_solar_system_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_solar_system_seq OWNER TO freecodecamp;

--
-- Name: planet_solar_system_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_solar_system_seq OWNED BY public.planet.planet_id;


--
-- Name: planets_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_type (
    planets_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planets_type OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_million_years integer,
    planets_around numeric,
    description text,
    white_dwarf boolean,
    supernova boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_types_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_seq OWNER TO freecodecamp;

--
-- Name: star_types_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_description_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_distance_from_earth_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_solar_system_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_types_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22000, 2537000, 'Galaxia vecina', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', 40000, 3000000, 'Galaxia cercana', false, true);
INSERT INTO public.galaxy VALUES (4, 'Cigarro', 5000, 11700000, 'Galaxia alargada', true, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 12000, 28000000, 'Galaxia en forma de sombrero', false, true);
INSERT INTO public.galaxy VALUES (6, 'Remolino', 10000, 31000000, 'Galaxia espiral', false, true);
INSERT INTO public.galaxy VALUES (1, 'Via lactea', 13000, 0, 'Nuestra galaxia', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4600, 384400, 'Nuestra luna', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Triton', 4500, 3548000, 'La mayor luna de neptuno', true, false, 4);
INSERT INTO public.moon VALUES (3, 'Polaris1M', 100, 50000, 'Pequeña luna', false, false, 5);
INSERT INTO public.moon VALUES (4, 'Polaris2M', 100, 78000, 'Llena de crateres', false, false, 6);
INSERT INTO public.moon VALUES (5, 'Sirius1M', 200, 420000, 'Luna de hielo', false, false, 7);
INSERT INTO public.moon VALUES (6, 'Sirius2M', 200, 620000, 'Superficie rocosa', false, false, 8);
INSERT INTO public.moon VALUES (7, 'Betel1M', 800, 80000, 'Luna con actividad volcanica', false, false, 9);
INSERT INTO public.moon VALUES (8, 'Betel2M', 800, 120000, 'Rodeada de polvo espacial', false, false, 10);
INSERT INTO public.moon VALUES (9, 'Vega1M', 600, 180000, 'Luna con formaciones geologicas', false, false, 11);
INSERT INTO public.moon VALUES (10, 'Vega2M', 600, 240000, 'Oceanos liquidos y vida microscopica', false, false, 12);
INSERT INTO public.moon VALUES (11, 'Antares1M', 1000, 90000, 'Luna con actividad sismica', false, false, 13);
INSERT INTO public.moon VALUES (12, 'Antares2M', 1000, 150000, 'Superficie arida y desolada', false, false, 14);
INSERT INTO public.moon VALUES (13, 'Ganimedes', 4500, 1070412, 'Luna mas pequeña de neptuno', true, false, 4);
INSERT INTO public.moon VALUES (14, 'Calisto', 4500, 1882709, 'Llena de crateres y superficie helada', true, false, 4);
INSERT INTO public.moon VALUES (15, 'Caronte', 4600, 19591, 'Luna con atmosfera', false, false, 5);
INSERT INTO public.moon VALUES (16, 'Oberon', 4600, 583520, 'Superficie con grietas y cañones', false, false, 6);
INSERT INTO public.moon VALUES (17, 'Mirand', 4600, 129390, 'Superficie geologicamente diversa', false, false, 7);
INSERT INTO public.moon VALUES (18, 'Dione', 4700, 377400, 'Con acantilados y montañas', false, false, 8);
INSERT INTO public.moon VALUES (19, 'Encelado', 300, 238020, 'Llena de geiseres', false, false, 11);
INSERT INTO public.moon VALUES (20, 'Titania', 400, 436300, 'Superficie marcada por cañones y grietas', false, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 4600, 6371, 'Nuestro planeta', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Neptuno', 4600, 24622, 'Gigante gaseoso', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Polaris 1', 18000, 8240, 'Planeta helado', false, false, 34);
INSERT INTO public.planet VALUES (6, 'Polaris 2', 18000, 7321, 'Con densas nubes', false, false, 34);
INSERT INTO public.planet VALUES (7, 'Sirius 1', 200, 12350, 'Con abundante agua', false, true, 35);
INSERT INTO public.planet VALUES (8, 'Sirius 2', 200, 9850, 'Con tmosfera toxica', false, false, 35);
INSERT INTO public.planet VALUES (9, 'Betel 1', 800, 19000, 'Gigante rojo y volatil', false, false, 36);
INSERT INTO public.planet VALUES (10, 'Betel 2', 800, 15600, 'Planeta con tormentas', false, false, 36);
INSERT INTO public.planet VALUES (11, 'Vega 1', 600, 9780, 'Planeta con fuertes vientos', false, false, 37);
INSERT INTO public.planet VALUES (12, 'Vega 2', 600, 7500, 'Rodeado por asteroides', false, false, 37);
INSERT INTO public.planet VALUES (13, 'Antares 1', 1500, 15300, 'Planeta con atmosfera venenosa', false, false, 38);
INSERT INTO public.planet VALUES (14, 'Antares 2', 1500, 11750, 'Con actividad vocanica', false, false, 38);


--
-- Data for Name: planets_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_type VALUES (1, 'Rocosos', 'Con superficie solida de rocas y minerales');
INSERT INTO public.planets_type VALUES (2, 'Gaseosos', 'Compuestos de gases como hidrogeno y helio');
INSERT INTO public.planets_type VALUES (3, 'Helados', 'Con temperaturas extremadamente frías y superficies congeladas');
INSERT INTO public.planets_type VALUES (4, 'Gigantes gaseosos', 'Masivos compuestos por gases y superficies solidas');
INSERT INTO public.planets_type VALUES (5, 'Templados', 'Con temperatura moderada y potencialmente habitables');
INSERT INTO public.planets_type VALUES (6, 'Deserticos', 'Con vastas regiones deserticas y escasa vegetación');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4600, 8, 'Nuestra estrella', false, false, 1);
INSERT INTO public.star VALUES (34, 'Polaris', 70, 3, 'Estrella polar', false, false, 2);
INSERT INTO public.star VALUES (35, 'Sirius', 200, 4, 'Estrella brillante', false, false, 3);
INSERT INTO public.star VALUES (36, 'Betelgeuse', 9, 0, 'Supergigante roja', false, false, 4);
INSERT INTO public.star VALUES (37, 'Vega', 455, 2, 'Estrella brillante', false, false, 5);
INSERT INTO public.star VALUES (38, 'Antares', 12, 0, 'Supergigante roja', false, false, 6);


--
-- Name: galaxy_description_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_description_seq', 6, true);


--
-- Name: moon_distance_from_earth_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_distance_from_earth_seq', 20, true);


--
-- Name: planet_solar_system_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_solar_system_seq', 14, true);


--
-- Name: star_types_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_seq', 38, true);


--
-- Name: galaxy clave_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT clave_galaxy UNIQUE (galaxy_id);


--
-- Name: moon clave_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT clave_moon UNIQUE (moon_id);


--
-- Name: planet clave_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT clave_planet UNIQUE (planet_id);


--
-- Name: star clave_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT clave_star UNIQUE (star_id);


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
-- Name: planets_type planets_type_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_type
    ADD CONSTRAINT planets_type_description_key UNIQUE (description);


--
-- Name: planets_type planets_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_type
    ADD CONSTRAINT planets_type_name_key UNIQUE (name);


--
-- Name: planets_type planets_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_type
    ADD CONSTRAINT planets_type_pkey PRIMARY KEY (planets_type_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

