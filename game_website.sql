--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: turns; Type: TABLE; Schema: public; Owner: Guest; Tablespace: 
--

CREATE TABLE turns (
    id integer NOT NULL,
    comp_turn character varying,
    user_turn character varying
);


ALTER TABLE turns OWNER TO "Guest";

--
-- Name: turns_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE turns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE turns_id_seq OWNER TO "Guest";

--
-- Name: turns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE turns_id_seq OWNED BY turns.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY turns ALTER COLUMN id SET DEFAULT nextval('turns_id_seq'::regclass);


--
-- Data for Name: turns; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY turns (id, comp_turn, user_turn) FROM stdin;
\.


--
-- Name: turns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('turns_id_seq', 1, false);


--
-- Name: turns_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest; Tablespace: 
--

ALTER TABLE ONLY turns
    ADD CONSTRAINT turns_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: epicodus
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM epicodus;
GRANT ALL ON SCHEMA public TO epicodus;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

