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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 706);
INSERT INTO public.games VALUES (2, 1, 936);
INSERT INTO public.games VALUES (3, 2, 884);
INSERT INTO public.games VALUES (4, 2, 108);
INSERT INTO public.games VALUES (5, 1, 89);
INSERT INTO public.games VALUES (6, 1, 642);
INSERT INTO public.games VALUES (7, 1, 666);
INSERT INTO public.games VALUES (8, 3, 196);
INSERT INTO public.games VALUES (9, 3, 713);
INSERT INTO public.games VALUES (10, 4, 696);
INSERT INTO public.games VALUES (11, 4, 119);
INSERT INTO public.games VALUES (12, 3, 787);
INSERT INTO public.games VALUES (13, 3, 248);
INSERT INTO public.games VALUES (14, 3, 419);
INSERT INTO public.games VALUES (15, 5, 500);
INSERT INTO public.games VALUES (16, 5, 412);
INSERT INTO public.games VALUES (17, 6, 477);
INSERT INTO public.games VALUES (18, 6, 908);
INSERT INTO public.games VALUES (19, 5, 214);
INSERT INTO public.games VALUES (20, 5, 314);
INSERT INTO public.games VALUES (21, 5, 454);
INSERT INTO public.games VALUES (22, 7, 472);
INSERT INTO public.games VALUES (23, 7, 51);
INSERT INTO public.games VALUES (24, 8, 910);
INSERT INTO public.games VALUES (25, 8, 922);
INSERT INTO public.games VALUES (26, 7, 305);
INSERT INTO public.games VALUES (27, 7, 730);
INSERT INTO public.games VALUES (28, 7, 897);
INSERT INTO public.games VALUES (29, 9, 807);
INSERT INTO public.games VALUES (30, 9, 997);
INSERT INTO public.games VALUES (31, 10, 127);
INSERT INTO public.games VALUES (32, 10, 456);
INSERT INTO public.games VALUES (33, 9, 851);
INSERT INTO public.games VALUES (34, 9, 486);
INSERT INTO public.games VALUES (35, 9, 393);
INSERT INTO public.games VALUES (36, 11, 231);
INSERT INTO public.games VALUES (37, 11, 843);
INSERT INTO public.games VALUES (38, 12, 925);
INSERT INTO public.games VALUES (39, 12, 584);
INSERT INTO public.games VALUES (40, 11, 343);
INSERT INTO public.games VALUES (41, 11, 161);
INSERT INTO public.games VALUES (42, 11, 596);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1720347878758');
INSERT INTO public.users VALUES (2, 'user_1720347878757');
INSERT INTO public.users VALUES (3, 'user_1720347925248');
INSERT INTO public.users VALUES (4, 'user_1720347925247');
INSERT INTO public.users VALUES (5, 'user_1720347955393');
INSERT INTO public.users VALUES (6, 'user_1720347955392');
INSERT INTO public.users VALUES (7, 'user_1720347988651');
INSERT INTO public.users VALUES (8, 'user_1720347988650');
INSERT INTO public.users VALUES (9, 'user_1720347992230');
INSERT INTO public.users VALUES (10, 'user_1720347992229');
INSERT INTO public.users VALUES (11, 'user_1720348044768');
INSERT INTO public.users VALUES (12, 'user_1720348044767');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

