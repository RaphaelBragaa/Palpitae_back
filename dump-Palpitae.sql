toc.dat                                                                                             0000600 0004000 0002000 00000006001 14334236341 0014437 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           4            
    z            Palpitae %   12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)    14.2     s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         v           1262    81920    Palpitae    DATABASE     [   CREATE DATABASE "Palpitae" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE "Palpitae";
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false         w           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3         ?            1259    81935    palpitae    TABLE     ?   CREATE TABLE public.palpitae (
    id integer NOT NULL,
    nome text NOT NULL,
    partida text NOT NULL,
    placar text NOT NULL,
    acertou boolean DEFAULT false NOT NULL
);
    DROP TABLE public.palpitae;
       public         heap    postgres    false    3         ?            1259    81933    palpitae_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.palpitae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.palpitae_id_seq;
       public          postgres    false    3    203         x           0    0    palpitae_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.palpitae_id_seq OWNED BY public.palpitae.id;
          public          postgres    false    202         ?
           2604    81938    palpitae id    DEFAULT     j   ALTER TABLE ONLY public.palpitae ALTER COLUMN id SET DEFAULT nextval('public.palpitae_id_seq'::regclass);
 :   ALTER TABLE public.palpitae ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         p          0    81935    palpitae 
   TABLE DATA           F   COPY public.palpitae (id, nome, partida, placar, acertou) FROM stdin;
    public          postgres    false    203       2928.dat y           0    0    palpitae_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.palpitae_id_seq', 2, true);
          public          postgres    false    202         ?
           2606    81944    palpitae palpitae_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.palpitae
    ADD CONSTRAINT palpitae_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.palpitae DROP CONSTRAINT palpitae_pkey;
       public            postgres    false    203                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       2928.dat                                                                                            0000600 0004000 0002000 00000000055 14334236341 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Rafael Bolonha	Brasil x Jamaica	0/2	f
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000006017 14334236341 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 14.2

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

DROP DATABASE "Palpitae";
--
-- Name: Palpitae; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Palpitae" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE "Palpitae" OWNER TO postgres;

\connect "Palpitae"

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: palpitae; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.palpitae (
    id integer NOT NULL,
    nome text NOT NULL,
    partida text NOT NULL,
    placar text NOT NULL,
    acertou boolean DEFAULT false NOT NULL
);


ALTER TABLE public.palpitae OWNER TO postgres;

--
-- Name: palpitae_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.palpitae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.palpitae_id_seq OWNER TO postgres;

--
-- Name: palpitae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.palpitae_id_seq OWNED BY public.palpitae.id;


--
-- Name: palpitae id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palpitae ALTER COLUMN id SET DEFAULT nextval('public.palpitae_id_seq'::regclass);


--
-- Data for Name: palpitae; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.palpitae (id, nome, partida, placar, acertou) FROM stdin;
\.
COPY public.palpitae (id, nome, partida, placar, acertou) FROM '$$PATH$$/2928.dat';

--
-- Name: palpitae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.palpitae_id_seq', 2, true);


--
-- Name: palpitae palpitae_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palpitae
    ADD CONSTRAINT palpitae_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 