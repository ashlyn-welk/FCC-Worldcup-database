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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(255) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 1098, 417, 4, 2, 1097);
INSERT INTO public.games VALUES (2018, 'Third Place', 1100, 418, 2, 0, 1099);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1100, 419, 2, 1, 1098);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1099, 420, 1, 0, 1097);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 1101, 421, 3, 2, 1098);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 1102, 422, 2, 0, 1100);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 1103, 423, 2, 1, 1099);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 1104, 424, 2, 0, 1097);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1105, 425, 2, 1, 1100);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1106, 426, 1, 0, 1102);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1107, 427, 3, 2, 1099);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1108, 428, 2, 0, 1103);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1109, 429, 2, 1, 1098);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1110, 430, 2, 1, 1101);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1111, 431, 2, 1, 1104);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1112, 432, 4, 3, 1097);
INSERT INTO public.games VALUES (2014, 'Final', 1112, 433, 1, 0, 1113);
INSERT INTO public.games VALUES (2014, 'Third Place', 1103, 434, 3, 0, 1114);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1114, 435, 1, 0, 1112);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1103, 436, 7, 1, 1113);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1115, 437, 1, 0, 1114);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1099, 438, 1, 0, 1112);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1105, 439, 2, 1, 1103);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1097, 440, 1, 0, 1113);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1116, 441, 2, 1, 1103);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1104, 442, 2, 0, 1105);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1117, 443, 2, 0, 1097);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1118, 444, 2, 1, 1113);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1108, 445, 2, 1, 1114);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1119, 446, 2, 1, 1115);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1106, 447, 1, 0, 1112);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1120, 448, 2, 1, 1099);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 1097);
INSERT INTO public.teams VALUES ('Croatia', 1098);
INSERT INTO public.teams VALUES ('Belgium', 1099);
INSERT INTO public.teams VALUES ('England', 1100);
INSERT INTO public.teams VALUES ('Russia', 1101);
INSERT INTO public.teams VALUES ('Sweden', 1102);
INSERT INTO public.teams VALUES ('Brazil', 1103);
INSERT INTO public.teams VALUES ('Uruguay', 1104);
INSERT INTO public.teams VALUES ('Colombia', 1105);
INSERT INTO public.teams VALUES ('Switzerland', 1106);
INSERT INTO public.teams VALUES ('Japan', 1107);
INSERT INTO public.teams VALUES ('Mexico', 1108);
INSERT INTO public.teams VALUES ('Denmark', 1109);
INSERT INTO public.teams VALUES ('Spain', 1110);
INSERT INTO public.teams VALUES ('Portugal', 1111);
INSERT INTO public.teams VALUES ('Argentina', 1112);
INSERT INTO public.teams VALUES ('Germany', 1113);
INSERT INTO public.teams VALUES ('Netherlands', 1114);
INSERT INTO public.teams VALUES ('Costa Rica', 1115);
INSERT INTO public.teams VALUES ('Chile', 1116);
INSERT INTO public.teams VALUES ('Nigeria', 1117);
INSERT INTO public.teams VALUES ('Algeria', 1118);
INSERT INTO public.teams VALUES ('Greece', 1119);
INSERT INTO public.teams VALUES ('United States', 1120);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1120, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

