--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: crud_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crud_producto (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    categoria character varying(50) NOT NULL,
    descripcion text,
    stock bigint NOT NULL,
    precio numeric(10,2) NOT NULL,
    fecha_vencimiento date,
    trial146 character(1)
);


ALTER TABLE public.crud_producto OWNER TO postgres;

--
-- Name: crud_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.crud_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crud_producto_id_seq OWNER TO postgres;

--
-- Name: crud_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.crud_producto_id_seq OWNED BY public.crud_producto.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp(6) without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag integer NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp(6) without time zone NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp(6) without time zone NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: usuarios_customuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp(6) without time zone,
    is_superuser smallint NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff smallint NOT NULL,
    is_active smallint NOT NULL,
    date_joined timestamp(6) without time zone NOT NULL,
    role character varying(10) NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.usuarios_customuser OWNER TO postgres;

--
-- Name: usuarios_customuser_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.usuarios_customuser_groups OWNER TO postgres;

--
-- Name: usuarios_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_customuser_groups_id_seq OWNER TO postgres;

--
-- Name: usuarios_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_customuser_groups_id_seq OWNED BY public.usuarios_customuser_groups.id;


--
-- Name: usuarios_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_customuser_id_seq OWNER TO postgres;

--
-- Name: usuarios_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_customuser_id_seq OWNED BY public.usuarios_customuser.id;


--
-- Name: usuarios_customuser_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL,
    trial146 character(1)
);


ALTER TABLE public.usuarios_customuser_user_permissions OWNER TO postgres;

--
-- Name: usuarios_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_customuser_user_permissions_id_seq OWNER TO postgres;

--
-- Name: usuarios_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_customuser_user_permissions_id_seq OWNED BY public.usuarios_customuser_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: crud_producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crud_producto ALTER COLUMN id SET DEFAULT nextval('public.crud_producto_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: usuarios_customuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser ALTER COLUMN id SET DEFAULT nextval('public.usuarios_customuser_id_seq'::regclass);


--
-- Name: usuarios_customuser_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.usuarios_customuser_groups_id_seq'::regclass);


--
-- Name: usuarios_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuarios_customuser_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name, trial146) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id, trial146) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename, trial146) FROM stdin;
1	Can add log entry	1	add_logentry	T
2	Can change log entry	1	change_logentry	T
3	Can delete log entry	1	delete_logentry	T
4	Can view log entry	1	view_logentry	T
5	Can add permission	2	add_permission	T
6	Can change permission	2	change_permission	T
7	Can delete permission	2	delete_permission	T
8	Can view permission	2	view_permission	T
9	Can add group	3	add_group	T
10	Can change group	3	change_group	T
11	Can delete group	3	delete_group	T
12	Can view group	3	view_group	T
13	Can add content type	4	add_contenttype	T
14	Can change content type	4	change_contenttype	T
15	Can delete content type	4	delete_contenttype	T
16	Can view content type	4	view_contenttype	T
17	Can add session	5	add_session	T
18	Can change session	5	change_session	T
19	Can delete session	5	delete_session	T
20	Can view session	5	view_session	T
21	Can add user	6	add_customuser	T
22	Can change user	6	change_customuser	T
23	Can delete user	6	delete_customuser	T
24	Can view user	6	view_customuser	T
25	Can add producto	7	add_producto	T
26	Can change producto	7	change_producto	T
27	Can delete producto	7	delete_producto	T
28	Can view producto	7	view_producto	T
\.


--
-- Data for Name: crud_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.crud_producto (id, nombre, categoria, descripcion, stock, precio, fecha_vencimiento, trial146) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id, trial146) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model, trial146) FROM stdin;
1	admin	logentry	T
2	auth	permission	T
3	auth	group	T
4	contenttypes	contenttype	T
5	sessions	session	T
6	usuarios	customuser	T
7	crud	producto	T
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied, trial146) FROM stdin;
1	contenttypes	0001_initial	2024-12-13 23:27:02.206992	T
2	contenttypes	0002_remove_content_type_name	2024-12-13 23:27:02.301991	T
3	auth	0001_initial	2024-12-13 23:27:02.543993	T
4	auth	0002_alter_permission_name_max_length	2024-12-13 23:27:02.598993	T
5	auth	0003_alter_user_email_max_length	2024-12-13 23:27:02.605993	T
6	auth	0004_alter_user_username_opts	2024-12-13 23:27:02.625992	T
7	auth	0005_alter_user_last_login_null	2024-12-13 23:27:02.632993	T
8	auth	0006_require_contenttypes_0002	2024-12-13 23:27:02.634992	T
9	auth	0007_alter_validators_add_error_messages	2024-12-13 23:27:02.640993	T
10	auth	0008_alter_user_username_max_length	2024-12-13 23:27:02.646992	T
11	auth	0009_alter_user_last_name_max_length	2024-12-13 23:27:02.651993	T
12	auth	0010_alter_group_name_max_length	2024-12-13 23:27:02.665991	T
13	auth	0011_update_proxy_permissions	2024-12-13 23:27:02.671992	T
14	auth	0012_alter_user_first_name_max_length	2024-12-13 23:27:02.678993	T
15	usuarios	0001_initial	2024-12-13 23:27:03.065992	T
16	admin	0001_initial	2024-12-13 23:27:03.196993	T
17	admin	0002_logentry_remove_auto_add	2024-12-13 23:27:03.204993	T
18	admin	0003_logentry_add_action_flag_choices	2024-12-13 23:27:03.212993	T
19	crud	0001_initial	2024-12-13 23:27:03.251991	T
20	sessions	0001_initial	2024-12-13 23:27:03.354992	T
21	usuarios	0002_producto	2024-12-13 23:27:03.372992	T
22	usuarios	0003_delete_producto	2024-12-13 23:27:03.386991	T
23	usuarios	0004_alter_customuser_role	2024-12-13 23:27:03.454992	T
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date, trial146) FROM stdin;
\.


--
-- Data for Name: usuarios_customuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, role, trial146) FROM stdin;
\.


--
-- Data for Name: usuarios_customuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_customuser_groups (id, customuser_id, group_id, trial146) FROM stdin;
\.


--
-- Data for Name: usuarios_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_customuser_user_permissions (id, customuser_id, permission_id, trial146) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: crud_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.crud_producto_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: usuarios_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_customuser_groups_id_seq', 1, false);


--
-- Name: usuarios_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_customuser_id_seq', 1, false);


--
-- Name: usuarios_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_customuser_user_permissions_id_seq', 1, false);


--
-- Name: auth_group pk_auth_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT pk_auth_group PRIMARY KEY (id);


--
-- Name: auth_group_permissions pk_auth_group_permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT pk_auth_group_permissions PRIMARY KEY (id);


--
-- Name: auth_permission pk_auth_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT pk_auth_permission PRIMARY KEY (id);


--
-- Name: crud_producto pk_crud_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crud_producto
    ADD CONSTRAINT pk_crud_producto PRIMARY KEY (id);


--
-- Name: django_admin_log pk_django_admin_log; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT pk_django_admin_log PRIMARY KEY (id);


--
-- Name: django_content_type pk_django_content_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT pk_django_content_type PRIMARY KEY (id);


--
-- Name: django_migrations pk_django_migrations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT pk_django_migrations PRIMARY KEY (id);


--
-- Name: django_session pk_django_session; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT pk_django_session PRIMARY KEY (session_key);


--
-- Name: usuarios_customuser pk_usuarios_customuser; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser
    ADD CONSTRAINT pk_usuarios_customuser PRIMARY KEY (id);


--
-- Name: usuarios_customuser_groups pk_usuarios_customuser_groups; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_groups
    ADD CONSTRAINT pk_usuarios_customuser_groups PRIMARY KEY (id);


--
-- Name: usuarios_customuser_user_permissions pk_usuarios_customuser_user_permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_user_permissions
    ADD CONSTRAINT pk_usuarios_customuser_user_permissions PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_name ON public.auth_group USING btree (name);


--
-- Name: idx_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_username ON public.usuarios_customuser USING btree (username);


--
-- Name: usuarios_customuser_groups_customuser_id_group_id_aace3972_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuarios_customuser_groups_customuser_id_group_id_aace3972_uniq ON public.usuarios_customuser_groups USING btree (customuser_id, group_id);


--
-- Name: usuarios_customuser_user_customuser_id_permission_8dac6e14_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX usuarios_customuser_user_customuser_id_permission_8dac6e14_uniq ON public.usuarios_customuser_user_permissions USING btree (customuser_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_usuarios_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuarios_customuser_id FOREIGN KEY (user_id) REFERENCES public.usuarios_customuser(id);


--
-- Name: usuarios_customuser_groups usuarios_customuser__customuser_id_9e05d670_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_groups
    ADD CONSTRAINT usuarios_customuser__customuser_id_9e05d670_fk_usuarios_ FOREIGN KEY (customuser_id) REFERENCES public.usuarios_customuser(id);


--
-- Name: usuarios_customuser_user_permissions usuarios_customuser__customuser_id_c016378e_fk_usuarios_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_user_permissions
    ADD CONSTRAINT usuarios_customuser__customuser_id_c016378e_fk_usuarios_ FOREIGN KEY (customuser_id) REFERENCES public.usuarios_customuser(id);


--
-- Name: usuarios_customuser_user_permissions usuarios_customuser__permission_id_9a10b097_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_user_permissions
    ADD CONSTRAINT usuarios_customuser__permission_id_9a10b097_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: usuarios_customuser_groups usuarios_customuser_groups_group_id_155d554c_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_customuser_groups
    ADD CONSTRAINT usuarios_customuser_groups_group_id_155d554c_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- PostgreSQL database dump complete
--

