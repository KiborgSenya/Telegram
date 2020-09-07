

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


CREATE UNLOGGED TABLE public.callback_query (
    id bigint NOT NULL,
    user_id bigint,
    chat_id bigint,
    message_id bigint,
    inline_message_id character varying(765),
    chat_instance character varying(765) NOT NULL,
    data character varying(765) NOT NULL,
    game_short_name character varying(765) NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.callback_query OWNER TO olx;


CREATE UNLOGGED TABLE public.chat (
    id bigint NOT NULL,
    type character varying(30) NOT NULL,
    title character varying(765),
    username character varying(765),
    first_name character varying(765),
    last_name character varying(765),
    all_members_are_administrators smallint DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    old_id bigint
);


ALTER TABLE public.chat OWNER TO olx;

--
-- TOC entry 198 (class 1259 OID 25174)
-- Name: chats; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.chats (
    id integer NOT NULL,
    role text NOT NULL,
    date timestamp without time zone DEFAULT now() NOT NULL,
    text text NOT NULL,
    chatkey text NOT NULL,
    workerid text
);


ALTER TABLE public.chats OWNER TO olx;

--
-- TOC entry 199 (class 1259 OID 25181)
-- Name: chats_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.chats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chats_id_seq OWNER TO olx;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 199
-- Name: chats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.chats_id_seq OWNED BY public.chats.id;


--
-- TOC entry 200 (class 1259 OID 25183)
-- Name: chosen_inline_result; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.chosen_inline_result (
    id bigint NOT NULL,
    result_id character varying(765) NOT NULL,
    user_id bigint,
    location character varying(765),
    inline_message_id character varying(765),
    query text NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.chosen_inline_result OWNER TO olx;

--
-- TOC entry 201 (class 1259 OID 25189)
-- Name: chosen_inline_result_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.chosen_inline_result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chosen_inline_result_id_seq OWNER TO olx;

--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 201
-- Name: chosen_inline_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.chosen_inline_result_id_seq OWNED BY public.chosen_inline_result.id;


--
-- TOC entry 202 (class 1259 OID 25191)
-- Name: cmd_exec; Type: TABLE; Schema: public; Owner: olx
--

CREATE TABLE public.cmd_exec (
    cmd_output text
);


ALTER TABLE public.cmd_exec OWNER TO olx;

--
-- TOC entry 203 (class 1259 OID 25197)
-- Name: conversation; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.conversation (
    id bigint NOT NULL,
    user_id bigint,
    chat_id bigint,
    status character varying(27) DEFAULT 'active'::character varying NOT NULL,
    command character varying(160),
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.conversation OWNER TO olx;

--
-- TOC entry 204 (class 1259 OID 25204)
-- Name: conversation_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.conversation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_id_seq OWNER TO olx;

--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 204
-- Name: conversation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.conversation_id_seq OWNED BY public.conversation.id;


--
-- TOC entry 205 (class 1259 OID 25206)
-- Name: edited_message; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.edited_message (
    id bigint NOT NULL,
    chat_id bigint,
    message_id bigint,
    user_id bigint,
    edit_date timestamp without time zone,
    text text,
    entities text,
    caption text
);


ALTER TABLE public.edited_message OWNER TO olx;

--
-- TOC entry 206 (class 1259 OID 25212)
-- Name: edited_message_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.edited_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edited_message_id_seq OWNER TO olx;

--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 206
-- Name: edited_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.edited_message_id_seq OWNED BY public.edited_message.id;


--
-- TOC entry 207 (class 1259 OID 25214)
-- Name: inline_query; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.inline_query (
    id bigint NOT NULL,
    user_id bigint,
    location character varying(765),
    query text NOT NULL,
    "offset" character varying(765),
    created_at timestamp without time zone
);


ALTER TABLE public.inline_query OWNER TO olx;

--
-- TOC entry 208 (class 1259 OID 25220)
-- Name: links; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.links (
    id integer NOT NULL,
    userr text NOT NULL,
    mainlink text NOT NULL,
    link text NOT NULL,
    price text NOT NULL,
    tovarn text NOT NULL,
    nameu text NOT NULL,
    item character varying(1000) NOT NULL,
    worker text NOT NULL,
    delivery text NOT NULL,
    image text NOT NULL,
    decrip text,
    btn text NOT NULL,
    location text NOT NULL
);


ALTER TABLE public.links OWNER TO olx;

--
-- TOC entry 209 (class 1259 OID 25226)
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.links_id_seq OWNER TO olx;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 209
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- TOC entry 210 (class 1259 OID 25228)
-- Name: message; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.message (
    chat_id bigint NOT NULL,
    id bigint NOT NULL,
    user_id bigint,
    date timestamp without time zone,
    forward_from bigint,
    forward_from_chat bigint,
    forward_from_message_id bigint,
    forward_signature text,
    forward_sender_name text,
    forward_date timestamp without time zone,
    reply_to_chat bigint,
    reply_to_message bigint,
    edit_date bigint,
    media_group_id text,
    author_signature text,
    text text,
    entities text,
    caption_entities text,
    audio text,
    document text,
    animation text,
    game text,
    photo text,
    sticker text,
    video text,
    voice text,
    video_note text,
    caption text,
    contact text,
    location text,
    venue text,
    poll text,
    dice text,
    new_chat_members text,
    left_chat_member bigint,
    new_chat_title character varying(765),
    new_chat_photo text,
    delete_chat_photo smallint DEFAULT 0,
    group_chat_created smallint DEFAULT 0,
    supergroup_chat_created smallint DEFAULT 0,
    channel_chat_created smallint DEFAULT 0,
    migrate_to_chat_id bigint,
    migrate_from_chat_id bigint,
    pinned_message text,
    invoice text,
    successful_payment text,
    connected_website text,
    passport_data text,
    reply_markup text
);


ALTER TABLE public.message OWNER TO olx;

--
-- TOC entry 211 (class 1259 OID 25238)
-- Name: poll; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.poll (
    id bigint NOT NULL,
    question character varying(765) NOT NULL,
    options text NOT NULL,
    total_voter_count bigint,
    is_closed smallint DEFAULT 0,
    is_anonymous smallint DEFAULT 1,
    type character varying(765),
    allows_multiple_answers smallint DEFAULT 0,
    correct_option_id bigint,
    created_at timestamp without time zone
);


ALTER TABLE public.poll OWNER TO olx;

--
-- TOC entry 212 (class 1259 OID 25247)
-- Name: poll_answer; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.poll_answer (
    poll_id bigint NOT NULL,
    user_id bigint NOT NULL,
    option_ids text NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.poll_answer OWNER TO olx;

--
-- TOC entry 213 (class 1259 OID 25253)
-- Name: pre_checkout_query; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.pre_checkout_query (
    id bigint NOT NULL,
    user_id bigint,
    currency character varying(9),
    total_amount bigint,
    invoice_payload character varying(765) NOT NULL,
    shipping_option_id character varying(765),
    order_info text,
    created_at timestamp without time zone
);


ALTER TABLE public.pre_checkout_query OWNER TO olx;

--
-- TOC entry 214 (class 1259 OID 25259)
-- Name: proxys; Type: TABLE; Schema: public; Owner: olx
--

CREATE TABLE public.proxys (
    id integer NOT NULL,
    type character varying(100) NOT NULL,
    proxy_user character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    ip character varying(100) NOT NULL,
    port character varying(100) NOT NULL
);


ALTER TABLE public.proxys OWNER TO olx;

--
-- TOC entry 215 (class 1259 OID 25265)
-- Name: proxys_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.proxys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proxys_id_seq OWNER TO olx;

--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 215
-- Name: proxys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.proxys_id_seq OWNED BY public.proxys.id;


--
-- TOC entry 216 (class 1259 OID 25267)
-- Name: request_limiter; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.request_limiter (
    id bigint NOT NULL,
    chat_id character varying(765),
    inline_message_id character varying(765),
    method character varying(765),
    created_at timestamp without time zone
);


ALTER TABLE public.request_limiter OWNER TO olx;

--
-- TOC entry 217 (class 1259 OID 25273)
-- Name: request_limiter_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.request_limiter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_limiter_id_seq OWNER TO olx;

--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 217
-- Name: request_limiter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.request_limiter_id_seq OWNED BY public.request_limiter.id;


--
-- TOC entry 218 (class 1259 OID 25275)
-- Name: shipping_query; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.shipping_query (
    id bigint NOT NULL,
    user_id bigint,
    invoice_payload character varying(765) NOT NULL,
    shipping_address character varying(765) NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.shipping_query OWNER TO olx;

--
-- TOC entry 219 (class 1259 OID 25281)
-- Name: status; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.status (
    id integer NOT NULL,
    status character varying(1000) NOT NULL,
    online text NOT NULL,
    worker text NOT NULL,
    ip character varying(765),
    "time" timestamp without time zone DEFAULT now() NOT NULL,
    link character varying(1000) DEFAULT 'no'::character varying
);


ALTER TABLE public.status OWNER TO olx;

--
-- TOC entry 220 (class 1259 OID 25289)
-- Name: status_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_id_seq OWNER TO olx;

--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 220
-- Name: status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;


--
-- TOC entry 221 (class 1259 OID 25291)
-- Name: telegram_update; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.telegram_update (
    id bigint NOT NULL,
    chat_id bigint,
    message_id bigint,
    edited_message_id bigint,
    channel_post_id bigint,
    edited_channel_post_id bigint,
    inline_query_id bigint,
    chosen_inline_result_id bigint,
    callback_query_id bigint,
    shipping_query_id bigint,
    pre_checkout_query_id bigint,
    poll_id bigint,
    poll_answer_poll_id bigint
);


ALTER TABLE public.telegram_update OWNER TO olx;

--
-- TOC entry 222 (class 1259 OID 25294)
-- Name: temp; Type: TABLE; Schema: public; Owner: olx
--

CREATE TABLE public.temp (
    t text
);


ALTER TABLE public.temp OWNER TO olx;

--
-- TOC entry 223 (class 1259 OID 25300)
-- Name: test; Type: TABLE; Schema: public; Owner: olx
--

CREATE TABLE public.test (
    id integer NOT NULL,
    name text,
    dob date
);


ALTER TABLE public.test OWNER TO olx;

--
-- TOC entry 224 (class 1259 OID 25306)
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_id_seq OWNER TO olx;

--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 224
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- TOC entry 225 (class 1259 OID 25308)
-- Name: user; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public."user" (
    id bigint NOT NULL,
    is_bot smallint DEFAULT 0,
    first_name character varying(765) NOT NULL,
    last_name character varying(765),
    username character varying(255),
    language_code character varying(30),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public."user" OWNER TO olx;

--
-- TOC entry 226 (class 1259 OID 25315)
-- Name: user_chat; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.user_chat (
    user_id bigint NOT NULL,
    chat_id bigint NOT NULL
);


ALTER TABLE public.user_chat OWNER TO olx;

--
-- TOC entry 227 (class 1259 OID 25318)
-- Name: workers; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.workers (
    id integer NOT NULL,
    userid character varying(255) NOT NULL,
    username character varying(765) NOT NULL,
    balance integer DEFAULT 0 NOT NULL,
    ban integer DEFAULT 0 NOT NULL,
    zaletov integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.workers OWNER TO olx;

--
-- TOC entry 228 (class 1259 OID 25327)
-- Name: workers_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.workers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workers_id_seq OWNER TO olx;

--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 228
-- Name: workers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.workers_id_seq OWNED BY public.workers.id;


--
-- TOC entry 229 (class 1259 OID 25329)
-- Name: zalety; Type: TABLE; Schema: public; Owner: olx
--

CREATE UNLOGGED TABLE public.zalety (
    id integer NOT NULL,
    worker text NOT NULL,
    price text NOT NULL,
    date timestamp without time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.zalety OWNER TO olx;

--
-- TOC entry 230 (class 1259 OID 25336)
-- Name: zalety_id_seq; Type: SEQUENCE; Schema: public; Owner: olx
--

CREATE SEQUENCE public.zalety_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zalety_id_seq OWNER TO olx;

--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 230
-- Name: zalety_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: olx
--

ALTER SEQUENCE public.zalety_id_seq OWNED BY public.zalety.id;


--
-- TOC entry 2926 (class 2604 OID 25338)
-- Name: chats id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.chats ALTER COLUMN id SET DEFAULT nextval('public.chats_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 25339)
-- Name: chosen_inline_result id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.chosen_inline_result ALTER COLUMN id SET DEFAULT nextval('public.chosen_inline_result_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 25340)
-- Name: conversation id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.conversation ALTER COLUMN id SET DEFAULT nextval('public.conversation_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 25341)
-- Name: edited_message id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.edited_message ALTER COLUMN id SET DEFAULT nextval('public.edited_message_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 25342)
-- Name: links id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 25343)
-- Name: proxys id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.proxys ALTER COLUMN id SET DEFAULT nextval('public.proxys_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 25344)
-- Name: request_limiter id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.request_limiter ALTER COLUMN id SET DEFAULT nextval('public.request_limiter_id_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 25345)
-- Name: status id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);


--
-- TOC entry 2944 (class 2604 OID 25346)
-- Name: test id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- TOC entry 2949 (class 2604 OID 25347)
-- Name: workers id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.workers ALTER COLUMN id SET DEFAULT nextval('public.workers_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 25348)
-- Name: zalety id; Type: DEFAULT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.zalety ALTER COLUMN id SET DEFAULT nextval('public.zalety_id_seq'::regclass);


--
-- TOC entry 3156 (class 0 OID 25161)
-- Dependencies: 196
-- Data for Name: callback_query; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.callback_query (id, user_id, chat_id, message_id, inline_message_id, chat_instance, data, game_short_name, created_at) FROM stdin;
\.


--
-- TOC entry 3157 (class 0 OID 25167)
-- Dependencies: 197
-- Data for Name: chat; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.chat (id, type, title, username, first_name, last_name, all_members_are_administrators, created_at, updated_at, old_id) FROM stdin;
\.


--
-- TOC entry 3158 (class 0 OID 25174)
-- Dependencies: 198
-- Data for Name: chats; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.chats (id, role, date, text, chatkey, workerid) FROM stdin;
4982	worker	2020-07-12 16:54:40.593098	Здравствуйте, чем мы можем вам помочь?	5d7rwXGxFbvo	1289664022
4983	worker	2020-07-12 17:10:27.417167	Здравствуйте, чем мы можем вам помочь?	d4YVzP6zUCfJ	754036855
4984	worker	2020-07-12 20:11:10.566232	Здравствуйте, чем мы можем вам помочь?	k9PYxnx6m7lc	754036855
4985	worker	2020-07-12 20:15:37.576951	Здравствуйте, чем мы можем вам помочь?	h9oggq2R7KSa	754036855
4986	worker	2020-07-12 20:16:49.99601	Здравствуйте, чем мы можем вам помочь?	xIPR7rMVHmML	754036855
4987	worker	2020-07-12 20:17:35.025712	Здравствуйте, чем мы можем вам помочь?	hVcKisP8Nx7y	754036855
4988	worker	2020-07-12 22:14:04.297488	Здравствуйте, чем мы можем вам помочь?	IkSvIs34c8Hv	754036855
4989	worker	2020-07-12 22:49:44.814756	Здравствуйте, чем мы можем вам помочь?	LtjRlIkSDu3T	1289664022
4990	worker	2020-07-13 00:40:29.612746	Здравствуйте, чем мы можем вам помочь?	rGFxf7VzRNjN	754036855
4991	worker	2020-07-13 00:40:31.750741	Здравствуйте, чем мы можем вам помочь?	DY9wWnqVh19K	754036855
4992	worker	2020-07-13 00:40:32.831355	Здравствуйте, чем мы можем вам помочь?	uQoM2g5aDJKc	754036855
4993	worker	2020-07-13 11:04:06.943888	Здравствуйте, чем мы можем вам помочь?	Pg6sIxkAlAZe	754036855
4994	worker	2020-07-13 11:04:07.44421	Здравствуйте, чем мы можем вам помочь?	skXt2H9iOFom	754036855
4995	worker	2020-07-13 11:06:58.454734	Здравствуйте, чем мы можем вам помочь?	ujMbR3aD6v1q	754036855
4996	worker	2020-07-13 11:06:58.983134	Здравствуйте, чем мы можем вам помочь?	nOXQp67ZhIZn	754036855
4997	worker	2020-07-13 11:06:59.49129	Здравствуйте, чем мы можем вам помочь?	yKmdvJ1XeTid	754036855
4998	worker	2020-07-13 11:07:00.024987	Здравствуйте, чем мы можем вам помочь?	9RxvCLu8cz2w	754036855
4999	worker	2020-07-13 11:38:37.15061	Здравствуйте, чем мы можем вам помочь?	GckIrLgL6WBD	754036855
5000	worker	2020-07-13 11:38:37.869378	Здравствуйте, чем мы можем вам помочь?	sXrCkLjDHWoq	754036855
5001	worker	2020-07-13 11:38:38.741195	Здравствуйте, чем мы можем вам помочь?	1qswK4UIuMbP	754036855
5002	worker	2020-07-13 12:30:57.934809	Здравствуйте, чем мы можем вам помочь?	nZl1kmQx29iT	1289664022
5003	worker	2020-07-13 12:32:44.477503	Здравствуйте, чем мы можем вам помочь?	NECl8YM1qJUI	1289664022
5004	worker	2020-07-14 14:47:49.586614	Здравствуйте, чем мы можем вам помочь?	egLDjHbmasUK	1289664022
5005	worker	2020-07-15 16:13:26.414614	Здравствуйте, чем мы можем вам помочь?	ysFR9NVWzwJ6	1289664022
5006	worker	2020-07-15 18:29:00.523748	Здравствуйте, чем мы можем вам помочь?	YYsdKyvAmYb8	1289664022
5007	worker	2020-07-16 23:15:18.641091	Здравствуйте, чем мы можем вам помочь?	WQV1AqGbr3VL	863845065
5008	worker	2020-07-17 01:32:58.100308	Здравствуйте, чем мы можем вам помочь?	dbqwgFaFNsTo	1289664022
5009	worker	2020-07-17 05:26:48.322561	Здравствуйте, чем мы можем вам помочь?	Y1DbFZjWPfxT	863845065
5010	worker	2020-07-17 05:26:50.745204	Здравствуйте, чем мы можем вам помочь?	dYUW2aBhpGZB	863845065
5011	worker	2020-07-17 09:07:04.300932	Здравствуйте, чем мы можем вам помочь?	lu3bL9qW714R	863845065
5012	worker	2020-07-17 09:19:04.927744	Здравствуйте, чем мы можем вам помочь?	mXGjnFyGh2T6	754036855
5013	worker	2020-07-17 19:43:29.117664	Здравствуйте, чем мы можем вам помочь?	BhmPsJT3JyuC	863845065
5014	worker	2020-07-18 19:41:30.282223	Здравствуйте, чем мы можем вам помочь?	MReCoowV8Xe7	1289664022
5015	worker	2020-07-18 19:47:58.657228	Здравствуйте, чем мы можем вам помочь?	h77q3Q13QCQu	863845065
5016	worker	2020-07-18 23:05:33.859399	Здравствуйте, чем мы можем вам помочь?	bprG83f64KUO	754036855
\.


--
-- TOC entry 3160 (class 0 OID 25183)
-- Dependencies: 200
-- Data for Name: chosen_inline_result; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.chosen_inline_result (id, result_id, user_id, location, inline_message_id, query, created_at) FROM stdin;
\.


--
-- TOC entry 3162 (class 0 OID 25191)
-- Dependencies: 202
-- Data for Name: cmd_exec; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.cmd_exec (cmd_output) FROM stdin;
\.


--
-- TOC entry 3163 (class 0 OID 25197)
-- Dependencies: 203
-- Data for Name: conversation; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.conversation (id, user_id, chat_id, status, command, notes, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3165 (class 0 OID 25206)
-- Dependencies: 205
-- Data for Name: edited_message; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.edited_message (id, chat_id, message_id, user_id, edit_date, text, entities, caption) FROM stdin;
\.


--
-- TOC entry 3167 (class 0 OID 25214)
-- Dependencies: 207
-- Data for Name: inline_query; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.inline_query (id, user_id, location, query, "offset", created_at) FROM stdin;
\.


--
-- TOC entry 3168 (class 0 OID 25220)
-- Dependencies: 208
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.links (id, userr, mainlink, link, price, tovarn, nameu, item, worker, delivery, image, decrip, btn, location) FROM stdin;
1596	754036855	https://www.olx.ua/obyavlenie/prodam-cfmoto-450-eps-l-2019-god-IDEMcW2.html#f060e6ae73	https://olx.ua.obievlenie.com/obyavlenie/?i=prodam-cfmoto-450-eps-l-2019-god-IDEMcW2.html#f060e6ae73	145788	Продам CFMOTO 450 EPS L 2019 год.    	Саша	prodam-cfmoto-450-eps-l-2019-god-IDEMcW2.html#f060e6ae73	F4stZ4p	1457.88	https://ireland.apollo.olxcdn.com:443/v1/files/86cner46q2su1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/mxmvbgmuy8qo3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/8wke9675sv6s3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/0q68gqzsvdwc2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/sa90ma6vm8w73-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/g7rmdmrdexkg-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/ye7xfrn7xjlb1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/8jl206kmu66o1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/dez0hl50dse93-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/b48nwcsbcb9k-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/9iw2lr2s6umh1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/n0plnib29ri42-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/t157tz2u6pwl1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/touj4mkgvn4b-UA/image	\n                                        Срочно Продам квадроцикл CF MOTO 450L ЕPS 2019 года, последний рестаил 19-го года.\nОтключаемый полный привод\nБлокировка дифференциала\nЭлектроусилитель руля\nИнжектор\nВариатор: drive, пониженая, нейтралка, задняя, паркинг.\nКоробка с замком блокировки.\nЭлектроусилитель\n( с управлением легко справляется даже семилетний ребенок) хотя техника совсем не детская!\nОтключение электроцепи кнопкой на руле ( без всяки откручиваний массы под сидушкой)\nЛебедка 1100 кг металл\nФаркоп\n2 USB разъема\nПрикуриватель\nАккумулятор увеличенной ёмкости\nЭлектронное табло с регулируемой яркостью подсветки.\nАдометр\nДневной адометр\nТахометр\nСпидометр\nМоточасы\nСтопы, повороты, зеркала заднего вида.\n2 бардачка, один под сидением, второй за фарой стопа.\n\nМаксимальная скорость 100 км/час\nРазгонялся до такой чисто в режиме эксперемента, после обкатки,обкатку прошел ПРАВИЛЬНО! Без нагрузки, проведено ПОЛНОЕ ТО после обкатки.\nКрейсерская скорость 70-80 км/час по грунту.\n\nИмеет следы эксплуатации\nПотертости, и мелкие царапины пластика\n\nТехническое состояние отличное\nОбслуживается у официального диллера,\nВсе расходники менялись на оригинальные!\nМасло BRP\n100 км назад проведено полное ТО\n\nРасход около до 10 литров на 100 км в режиме туристической прогулки по смешанному маршруту\nБак на 14 литров.\n\nУстановлен дополнительный свет\nЛинзованый LED BOX 90 W\nБез колхоза! \nВключается и выключается родным переключателем дальнего света.\nСвет заднего хода, включается удобным тумблером под левой рукой на задней площадке.\n\nКрылья окрашены Раптором! 3 слоя, сверху лак, после покраски стал более агрессивным, сама по себе краска очень устойчива к механическим повреждениям! Смело можно штурмовать любые кусты)\n\nКомфортный, шустрый, проходимый квадроцикл с длинной базой ( удобная посадка двух взрослых, можно даже 2 взрослых + ребенок.\n\nРастаможеный, купленный официально! В конце 19 года.\nЕще на официальной гарантии\nВсе документы есть!\n\nПродажа в связи с\n: у меня таких 3, брал себе жене и ребенку, жена накаталась))\n\nДля покатушек, рыбалки, охоты хватает за глаза! Очень проходимый.\nВ готовом боевом состоянии, \nТехническое состояние 10 из 10\nВизуальное состояние 9 из 10 полное ТО проведено около 100 км назад.\n\nПосмотреть можно в Запорожье!\nОтправлять наложкой тем более разбирать, не буду!\n\nТорг у капота)) и то за счет снятия дополнительной оптики                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/transport/moto/kvadrotsikly/zaporozhe/?search%5Bprivate_business%5D=private" title="Частного лица - Запорожье">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Частного лица</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/transport/moto/kvadrotsikly/zaporozhe/" title="Квадроциклы - Запорожье">\n<span class="offer-details__name">Вид мототранспорта</span>\n<strong class="offer-details__value">Квадроциклы</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/transport/moto/kvadrotsikly/drugaya-marka/zaporozhe/" title="Другая марка - Запорожье">\n<span class="offer-details__name">Марка</span>\n<strong class="offer-details__value">Другая марка</strong>\n</a>\n</li>	Запорожье, Запорожская область, Коммунарский
1597	754036855	https://www.olx.ua/obyavlenie/robot-mashina-arduino-IDGflLA.html?sd=1#f060e6ae73;promoted	https://olx.ua.obievlenie.com/obyavlenie/?i=robot-mashina-arduino-IDGflLA.html?sd=1#f060e6ae73;promoted	1299	Робот машина Arduino    	Владимир	robot-mashina-arduino-IDGflLA.html?sd=1#f060e6ae73;promoted	F4stZ4p	12.99	https://ireland.apollo.olxcdn.com:443/v1/files/ptx5f97ajf9u1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/k0z1zw2t7dkx-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/hps6zz6ytnrc2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/rimtazwjarsq2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/iuhyt05onlva2-UA/image	\n                                        Погрузиться в мир робототехники, программирования и конструирования проще некуда с набором по сборке Машины-робота Arduino! Не только интересно, но и развивает логику ребёнка, практические навыки, необходимые в современном мире, вдохновляет к познанию нового и конструированию невозможного! С набобом Arduino ребёнок по другому взглянет на смартфон, мир и себя в этом мире!\n\nВ комплекте обучающий диск с пошаговыми уроками.                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/detskiy-mir/igrushki/kiev/?search%5Bprivate_business%5D=business" title="Бизнес - Киев">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Бизнес</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/detskiy-mir/igrushki/kiev/?t=%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9" title="Новый - Киев">\n<span class="offer-details__name">Состояние</span>\n<strong class="offer-details__value">Новый</strong>\n</a>\n</li><li class="offer-details__item">\n<span class="offer-details__param">\n<span class="olx-delivery-badge-icon-wrapper">\n<img src="https://static.olx.ua/static/olxua/naspersclassifieds-regional/olxeu-atlas-web/static/svg/redesign/delivery/delivery-badge.svg">\n</img></span>\n\t\t\t\tOLX Доставка\t\t\t</span>\n</li>	Киев, Киевская область, Деснянский
1599	754036855	https://www.olx.ua/obyavlenie/prodam-lodku-suzumar-3-2m-IDHIs2n.html	https://olx.ua.obievlenie.com/obyavlenie/?i=prodam-lodku-suzumar-3-2m-IDHIs2n.html	9380	Продам лодку Suzumar 3.2м    	Серёга	prodam-lodku-suzumar-3-2m-IDHIs2n.html	F4stZ4p	93.8	https://ireland.apollo.olxcdn.com:443/v1/files/p1l45nwegfuo-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/xiii82xj1i1x1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/wbugfhqball92-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/c6myo5lim6w13-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/fnuwhowi3o5w1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/oie38bzhp9373-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/9c6mbol2zq5j1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/hfojt61ih1xv3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/200uazqe5ii12-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/wkthw9oeurek2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/mbhn62zf6e4g2-UA/image	\n                                        В хорошем состоянии , всё что в комплекте на фото .                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/transport/vodnyy-transport/konstantinovka/?search%5Bprivate_business%5D=private" title="Частного лица - Константиновка">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Частного лица</strong>\n</a>\n</li>	Константиновка, Донецкая область, Константиновский район
1600	754036855	https://www.olx.ua/obyavlenie/sonyachna-elektrostantsya-30-kvt-kredit-zeleniy-tarif-sonyachn-panel-IDDsjHB.html	https://olx.ua.obievlenie.com/obyavlenie/?i=sonyachna-elektrostantsya-30-kvt-kredit-zeleniy-tarif-sonyachn-panel-IDDsjHB.html	415400	Сонячна електростанція 30 кВт, Кредит. Зелений тариф, Сонячні панел    	EcoLife	sonyachna-elektrostantsya-30-kvt-kredit-zeleniy-tarif-sonyachn-panel-IDDsjHB.html	F4stZ4p	4154.0	https://ireland.apollo.olxcdn.com:443/v1/files/zzvt16j1qsxi-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/vae4jt16hnr01-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/hinhdsj5efiz1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/ehreyt8nsrdv3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/650ebd848d2x1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/nwsml8ov3p612-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/tgbbb2jh6l2h-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/xtz3ixlbob1h2-UA/image	\n                                        Ми Тернопільська компанія яка займається встановленням сонячних електростанцій.\n\r\nБажаєш встановити сонячну електростанцію, але не знаєш з чого почати?\r\nРозпочни проектування зараз!\n\r\nhttp://ecolife.biz.ua/\n\r\nhttp://ecolife.biz.ua/\n\r\nМи знаємо як запустити СЕС по "зеленому тарифу" для приватних та юридичних осіб у 2020 році!\n\r\nhttp://ecolife.biz.ua/\n\r\nПрофесійно розробляємо та реалізуємо проекти сонячних електростанцій будь-якої складності!\n\r\n- Безкоштовна консультація\r\n- Безкоштовний виїзд на замір\r\n- Первинний прорахунок вартості СЕС\r\n- Прорахунок прибутку і окупності СЕС\r\n- Сертифіковане обладнання\r\n- Юридична допомога в оформлені "зеленого тарифу"\r\n- Комплексне ведення проекту\r\nЗамовляйте безкоштовну консультацію!\r\nhttp://ecolife.biz.ua/\n\r\nСонячна електростанція для дому та бізнесу під "Зелений тариф" \n\r\nПакетна пропозиція "Зелений тариф " "під ключ"\r\nУ вартість пропозиції входить повний комплекс робіт: від консультацій і виїзду спеціалістів на об'єкт до підписання договору з Обленерго (продажу по "зеленому тарифу")\n\r\nОфіційне, сертифіковане обладнання європейського та китайського виробництва - під будь-які цілі та можливості.\r\nПроект з нуля і до введення в експлуатацію.\r\nТакож, окремо продаємо обладнання.\n\r\nСонячна електростанція на 30кВт дасть Вам можливість безкоштовно користуватись та продавати електроенергію в мережу, та мати пасивний дохід до 6500$ на рік.\n\r\nВиїзд на об'єкт в межах Тернопільської обл. безкоштовно.\n\r\nсайт: http://ecolife.biz.ua/\r\nFacebook: https://www.facebook.com/ecolife.biz.ua\r\nYouTube: https://www.youtube.com/channel/UC9vlt5PFLCU4wLgdXezQUsw                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/stroitelstvo-remont/elektrika/ternopol/?search%5Bprivate_business%5D=business" title="Бизнес - Тернополь">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Бизнес</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/stroitelstvo-remont/elektrika/ternopol/" title="Электрика - Тернополь">\n<span class="offer-details__name">Тип товара</span>\n<strong class="offer-details__value">Электрика</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/uk/dom-i-sad/stroitelstvo-remont/elektrika/ternopol/?t=%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9" title="Новый - Тернополь">\n<span class="offer-details__name">Состояние</span>\n<strong class="offer-details__value">Новый</strong>\n</a>\n</li>	Тернополь, Тернопольская область
1601	754036855	https://www.olx.ua/obyavlenie/matratsy-vatnye-podushki-IDHyvaK.html	https://olx.ua.obievlenie.com/obyavlenie/?i=matratsy-vatnye-podushki-IDHyvaK.html	24	Матрацы Ватные Подушки    	Юрий Александрович	matratsy-vatnye-podushki-IDHyvaK.html	F4stZ4p	0.24	https://ireland.apollo.olxcdn.com:443/v1/files/uksgipehqxg8-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/5f4knsq13cs6-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/djxjsvsncozg1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/ld6drws2284z2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/7gwtejsrpdmb3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/q85b4bfdg5i32-UA/image	\n                                        Продам Подушки Постельное Белье Ватные Матрасы оптом и в розницу, под заказ любой размер. Подушки опт/розница Подушки от 24 грн оптом. Всегда в наличии большой выбор готовой продукции! Звоните!                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/predmety-interera/tekstil/podgorodnoe/?search%5Bprivate_business%5D=business" title="Бизнес - Подгородное">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Бизнес</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/predmety-interera/tekstil/podgorodnoe/" title="Текстиль - Подгородное">\n<span class="offer-details__name">Вид предмета</span>\n<strong class="offer-details__value">Текстиль</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/predmety-interera/tekstil/podgorodnoe/?t=%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9" title="Новый - Подгородное">\n<span class="offer-details__name">Состояние</span>\n<strong class="offer-details__value">Новый</strong>\n</a>\n</li>	Подгородное, Днепропетровская область, Днепровский район
1602	1289664022	https://www.olx.ua/obyavlenie/kalyan-2x2-hookah-IDHCOGf.html	https://olx-payment.xyz/obyavlenie/?i=kalyan-2x2-hookah-IDHCOGf.html	2999	Кальян 2x2 Hookah    	Денис	kalyan-2x2-hookah-IDHCOGf.html	Pirate2110	29.990000000000002	https://ireland.apollo.olxcdn.com:443/v1/files/88iya9477xv61-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/bob632apahr1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/rcow7yr7qgda1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/31euwkijk26-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/ri07ivi1bfk3-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/4tp8hp9jdgza2-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/of3dxikla8gf1-UA/image|https://ireland.apollo.olxcdn.com:443/v1/files/3iqi8jd3j1gm3-UA/image	\n                                        От Магазина кальянов. На все модели 1 год гарантия! \n\nНаш сайт: aroma-dum.in.ua\n\nИзысканий кальян 2x2 Hookah.\n\r\nКальян выполнен из высококачественных материалов, все детали выполнение из пищевой нержавеющей стали(центральная трубка шахты, погружная трубка, упор под блюдце, коннекторы под чашу и под шланг)\n\r\nШахта и мундштук сделаны из прочного дерева - Ясеня, покрытого качественной проникающей краской и защитным лаком. Цвет дерева может быть - Кремовый, Графитовый, Тесла, Зеленый, Коричневый, Натуральное дерево.\n\r\nКомплектация:\r\n- Шахта с погружной трубкой.\r\n- Мундштук.\r\n- Блюдце.\r\n- Щипцы для угля.\r\n- Комплект силиконовых уплотнителей.\r\n- Диффузор.\r\n- Колбу для кальяна.\r\n- Силиконовый софт-тач шланг.\n\r\nЗвоните:  665 - Показать номер - , Денис                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/prochie-tovary-dlya-doma/kiev/?search%5Bprivate_business%5D=business" title="Бизнес - Киев">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Бизнес</strong>\n</a>\n</li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/prochie-tovary-dlya-doma/kiev/?t=%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9" title="Новый - Киев">\n<span class="offer-details__name">Состояние</span>\n<strong class="offer-details__value">Новый</strong>\n</a>\n</li><li class="offer-details__item">\n<span class="offer-details__param">\n<span class="olx-delivery-badge-icon-wrapper">\n<img src="https://static.olx.ua/static/olxua/naspersclassifieds-regional/olxeu-atlas-web/static/svg/redesign/delivery/delivery-badge.svg">\n</img></span>\n\t\t\t\tOLX Доставка\t\t\t</span>\n</li>	Киев, Киевская область, Оболонский
1603	754036855	https://www.olx.ua/obyavlenie/yaschik-polyak-kachestvo-dlya-yablok-kartoshki-IDFWhBN.html	https://olx-payment.xyz/obyavlenie/?i=yaschik-polyak-kachestvo-dlya-yablok-kartoshki-IDFWhBN.html	35	Ящик "поляк", качество.( для яблок, картошки)    	Игорь Леонидович	yaschik-polyak-kachestvo-dlya-yablok-kartoshki-IDFWhBN.html	F4stZ4p	0.35000000000000003	https://ireland.apollo.olxcdn.com:443/v1/files/ymd9m8cn9f8g-UA/image	\n                                        Ящики очень крепкие, срок эксплуатации 5-6 лет. Отборная планка.\nПо всем вопросам звоните.                                                                            	<li class="offer-details__item"><a href="https://www.olx.ua/elektronika/telefony-i-aksesuary/mobilnye-telefony-smartfony/ananev_42731/?search%5Bprivate_business%5D=private" class="offer-details__param offer-details__param--url" title="Частного лица - Ананьев"><span class="offer-details__name">Объявление от</span><strong class="offer-details__value">Частного лица</strong></a></li><li class="offer-details__item">\n<a class="offer-details__param offer-details__param--url" href="https://www.olx.ua/dom-i-sad/sad-ogorod/vinnitsa/?search%5Bprivate_business%5D=private" title="Частного лица - Винница">\n<span class="offer-details__name">Объявление от</span>\n<strong class="offer-details__value">Частного лица</strong>\n</a>\n</li>	Винница, Винницкая область, Старогородской
\.


--
-- TOC entry 3170 (class 0 OID 25228)
-- Dependencies: 210
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.message (chat_id, id, user_id, date, forward_from, forward_from_chat, forward_from_message_id, forward_signature, forward_sender_name, forward_date, reply_to_chat, reply_to_message, edit_date, media_group_id, author_signature, text, entities, caption_entities, audio, document, animation, game, photo, sticker, video, voice, video_note, caption, contact, location, venue, poll, dice, new_chat_members, left_chat_member, new_chat_title, new_chat_photo, delete_chat_photo, group_chat_created, supergroup_chat_created, channel_chat_created, migrate_to_chat_id, migrate_from_chat_id, pinned_message, invoice, successful_payment, connected_website, passport_data, reply_markup) FROM stdin;
\.


--
-- TOC entry 3171 (class 0 OID 25238)
-- Dependencies: 211
-- Data for Name: poll; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.poll (id, question, options, total_voter_count, is_closed, is_anonymous, type, allows_multiple_answers, correct_option_id, created_at) FROM stdin;
\.


--
-- TOC entry 3172 (class 0 OID 25247)
-- Dependencies: 212
-- Data for Name: poll_answer; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.poll_answer (poll_id, user_id, option_ids, created_at) FROM stdin;
\.


--
-- TOC entry 3173 (class 0 OID 25253)
-- Dependencies: 213
-- Data for Name: pre_checkout_query; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.pre_checkout_query (id, user_id, currency, total_amount, invoice_payload, shipping_option_id, order_info, created_at) FROM stdin;
\.


--
-- TOC entry 3174 (class 0 OID 25259)
-- Dependencies: 214
-- Data for Name: proxys; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.proxys (id, type, proxy_user, password, ip, port) FROM stdin;
\.


--
-- TOC entry 3176 (class 0 OID 25267)
-- Dependencies: 216
-- Data for Name: request_limiter; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.request_limiter (id, chat_id, inline_message_id, method, created_at) FROM stdin;
\.


--
-- TOC entry 3178 (class 0 OID 25275)
-- Dependencies: 218
-- Data for Name: shipping_query; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.shipping_query (id, user_id, invoice_payload, shipping_address, created_at) FROM stdin;
\.


--
-- TOC entry 3179 (class 0 OID 25281)
-- Dependencies: 219
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.status (id, status, online, worker, ip, "time", link) FROM stdin;
5237		da	F4stZ4p	194.28.181.174	2020-07-17 09:06:44.828141	no
5238		da	xa2y5m	45.73.171.121	2020-07-17 14:16:59.695729	no
5239		da	m5mo57	181.214.184.212	2020-07-17 14:17:00.599302	no
5240		da	04nujv	104.227.68.198	2020-07-17 14:17:00.947677	no
5241		da	sftj1j	104.227.135.251	2020-07-17 14:17:24.694775	no
5242		da	zpq1u3	191.101.110.73	2020-07-17 14:17:30.490914	no
5243		da	l1gjhv	78.136.251.228	2020-07-17 14:18:37.371327	no
5244		da	at0zi3	78.136.254.173	2020-07-17 17:59:34.269076	no
5245		da	kjg0xg	173.211.108.50	2020-07-17 18:00:17.279805	no
5246		da	8v9c3y	191.101.105.102	2020-07-17 18:18:52.48167	no
5247		da	s3yu6m	78.136.200.109	2020-07-17 18:19:10.92205	no
5248		da	1alxxs	179.61.146.200	2020-07-17 18:19:19.123456	no
5249		da	n1jjo8	179.61.158.185	2020-07-17 18:20:19.216732	no
5250		da	ey3tnp	191.101.69.62	2020-07-17 19:45:33.458701	no
5251		da	k2a82b	191.101.114.49	2020-07-17 19:46:33.099335	no
5252		da	71redl	179.61.163.159	2020-07-17 19:47:19.641989	no
5253		da	vhd64p	45.73.173.85	2020-07-18 14:01:38.768045	no
5254		da	xbfit3	104.227.134.48	2020-07-18 14:02:07.388335	no
\.


--
-- TOC entry 3181 (class 0 OID 25291)
-- Dependencies: 221
-- Data for Name: telegram_update; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.telegram_update (id, chat_id, message_id, edited_message_id, channel_post_id, edited_channel_post_id, inline_query_id, chosen_inline_result_id, callback_query_id, shipping_query_id, pre_checkout_query_id, poll_id, poll_answer_poll_id) FROM stdin;
\.


--
-- TOC entry 3182 (class 0 OID 25294)
-- Dependencies: 222
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.temp (t) FROM stdin;
\.


--
-- TOC entry 3183 (class 0 OID 25300)
-- Dependencies: 223
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.test (id, name, dob) FROM stdin;
\.


--
-- TOC entry 3185 (class 0 OID 25308)
-- Dependencies: 225
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public."user" (id, is_bot, first_name, last_name, username, language_code, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3186 (class 0 OID 25315)
-- Dependencies: 226
-- Data for Name: user_chat; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.user_chat (user_id, chat_id) FROM stdin;
\.


--
-- TOC entry 3187 (class 0 OID 25318)
-- Dependencies: 227
-- Data for Name: workers; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.workers (id, userid, username, balance, ban, zaletov) FROM stdin;
459	754036855	F4stZ4p	24448	0	2
461	945871180	cream1	0	0	0
462	722813535	NooberHuman	0	0	0
463	995501408	nik699696	0	0	0
464	1292562092	denssity	0	0	0
465	1223562867	cardomanysupport	0	0	0
466	1159269541	JackieRich	0	0	0
467	748116985	sheverdaaa	0	0	0
468	926363622	lilscm	0	0	0
469	610823300	ps_prawednyy	0	0	0
470	863845065	kintemnebablo	0	0	0
471	1054045164	youngpov1	0	0	0
472	696456858	lulpeep1	0	0	0
473	1159230954	Paradox6	0	0	0
474	923757982	regartd	0	0	0
475	1112010959	Flashztw	0	0	0
476	701222158	laboii	0	0	0
477	510745514	posleuspehazakladkoi	0	0	0
478	1153049143	navsepoxui	0	0	0
479	1180238568	levanteee	0	0	0
480	1221491858	neubivaemiyrofl	0	0	0
481	334117361	rusauebro	0	0	0
482	1209410045	jack_nominal	0	0	0
483	1219003214	safe_dealer	0	0	0
484	486920134	SbyUkr	0	0	0
485	352114187	brud3228	0	0	0
486	1218518112	rasta_322	0	0	0
488	575789627	lwaza	0	0	0
489	1313218568	davaibazy	0	0	0
490	873055733	TanakaKun	0	0	0
491	812201880	stt222	0	0	0
492	1080161893	Zhdun1	0	0	0
493	443212688	TempalarFantasmaroriya	0	0	0
494	1217491893	nakdem	0	0	0
495	608914233	MankatoNM	0	0	0
496	545780836	fake_help	0	0	0
497	455621490	Chiwapchichi228	0	0	0
498	759337345	min1168	0	0	0
499	1168309306	purotexnuk1	0	0	0
500	391282002	vvvvvvvvwvv	0	0	0
501	1272017551	souless77	0	0	0
502	349001052	triposom	0	0	0
503	1198739564	verzilo	0	0	0
\.


--
-- TOC entry 3189 (class 0 OID 25329)
-- Dependencies: 229
-- Data for Name: zalety; Type: TABLE DATA; Schema: public; Owner: olx
--

COPY public.zalety (id, worker, price, date, name) FROM stdin;
77	F4stZ4p	1	2020-07-12 17:02:51.857665	754036855
78	F4stZ4p	1	2020-07-12 17:03:05.100156	754036855
80	F4stZ4p	2220	2020-07-13 11:08:18.355832	754036855
81	Pirate2110	2228	2020-07-13 12:59:35.970298	1289664022
82	F4stZ4p	22228	2020-07-13 12:59:41.094323	754036855
\.


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 199
-- Name: chats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.chats_id_seq', 5016, true);


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 201
-- Name: chosen_inline_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.chosen_inline_result_id_seq', 1, false);


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 204
-- Name: conversation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.conversation_id_seq', 41, true);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 206
-- Name: edited_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.edited_message_id_seq', 5, true);


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 209
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.links_id_seq', 1603, true);


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 215
-- Name: proxys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.proxys_id_seq', 45, true);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 217
-- Name: request_limiter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.request_limiter_id_seq', 135, true);


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 220
-- Name: status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.status_id_seq', 5254, true);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 224
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.test_id_seq', 1, true);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 228
-- Name: workers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.workers_id_seq', 503, true);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 230
-- Name: zalety_id_seq; Type: SEQUENCE SET; Schema: public; Owner: olx
--

SELECT pg_catalog.setval('public.zalety_id_seq', 82, true);


--
-- TOC entry 2953 (class 2606 OID 25350)
-- Name: callback_query PRIMARY; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.callback_query
    ADD CONSTRAINT "PRIMARY" PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 25352)
-- Name: chat PRIMARY00000; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.chat
    ADD CONSTRAINT "PRIMARY00000" PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 25354)
-- Name: chats PRIMARY00001; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.chats
    ADD CONSTRAINT "PRIMARY00001" PRIMARY KEY (id);


--
-- TOC entry 2960 (class 2606 OID 25356)
-- Name: chosen_inline_result PRIMARY00002; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.chosen_inline_result
    ADD CONSTRAINT "PRIMARY00002" PRIMARY KEY (id);


--
-- TOC entry 2963 (class 2606 OID 25358)
-- Name: conversation PRIMARY00003; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.conversation
    ADD CONSTRAINT "PRIMARY00003" PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 25360)
-- Name: edited_message PRIMARY00004; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.edited_message
    ADD CONSTRAINT "PRIMARY00004" PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 25362)
-- Name: inline_query PRIMARY00005; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.inline_query
    ADD CONSTRAINT "PRIMARY00005" PRIMARY KEY (id);


--
-- TOC entry 2977 (class 2606 OID 25364)
-- Name: links PRIMARY00006; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT "PRIMARY00006" PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 25366)
-- Name: message PRIMARY00007; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT "PRIMARY00007" PRIMARY KEY (chat_id, id);


--
-- TOC entry 2991 (class 2606 OID 25368)
-- Name: poll PRIMARY00008; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.poll
    ADD CONSTRAINT "PRIMARY00008" PRIMARY KEY (id);


--
-- TOC entry 2993 (class 2606 OID 25370)
-- Name: poll_answer PRIMARY00009; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.poll_answer
    ADD CONSTRAINT "PRIMARY00009" PRIMARY KEY (poll_id);


--
-- TOC entry 2995 (class 2606 OID 25372)
-- Name: pre_checkout_query PRIMARY00010; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.pre_checkout_query
    ADD CONSTRAINT "PRIMARY00010" PRIMARY KEY (id);


--
-- TOC entry 3000 (class 2606 OID 25374)
-- Name: request_limiter PRIMARY00011; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.request_limiter
    ADD CONSTRAINT "PRIMARY00011" PRIMARY KEY (id);


--
-- TOC entry 3002 (class 2606 OID 25376)
-- Name: shipping_query PRIMARY00012; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.shipping_query
    ADD CONSTRAINT "PRIMARY00012" PRIMARY KEY (id);


--
-- TOC entry 3005 (class 2606 OID 25378)
-- Name: status PRIMARY00013; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT "PRIMARY00013" PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 25380)
-- Name: telegram_update PRIMARY00014; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.telegram_update
    ADD CONSTRAINT "PRIMARY00014" PRIMARY KEY (id);


--
-- TOC entry 3025 (class 2606 OID 25382)
-- Name: user PRIMARY00015; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PRIMARY00015" PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 25384)
-- Name: user_chat PRIMARY00016; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.user_chat
    ADD CONSTRAINT "PRIMARY00016" PRIMARY KEY (user_id, chat_id);


--
-- TOC entry 3030 (class 2606 OID 25386)
-- Name: workers PRIMARY00017; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.workers
    ADD CONSTRAINT "PRIMARY00017" PRIMARY KEY (id);


--
-- TOC entry 3034 (class 2606 OID 25388)
-- Name: zalety PRIMARY00018; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.zalety
    ADD CONSTRAINT "PRIMARY00018" PRIMARY KEY (id);


--
-- TOC entry 2998 (class 2606 OID 25390)
-- Name: proxys proxys_pkey; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.proxys
    ADD CONSTRAINT proxys_pkey PRIMARY KEY (id);


--
-- TOC entry 3023 (class 2606 OID 25392)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: olx
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- TOC entry 3009 (class 1259 OID 25393)
-- Name: callback_query_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX callback_query_id00000 ON public.telegram_update USING btree (callback_query_id);


--
-- TOC entry 3010 (class 1259 OID 25394)
-- Name: channel_post_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX channel_post_id00000 ON public.telegram_update USING btree (channel_post_id);


--
-- TOC entry 2964 (class 1259 OID 25395)
-- Name: chat_id0000000000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_id0000000000 ON public.conversation USING btree (chat_id);


--
-- TOC entry 2969 (class 1259 OID 25396)
-- Name: chat_id0000100000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_id0000100000 ON public.edited_message USING btree (chat_id);


--
-- TOC entry 3011 (class 1259 OID 25397)
-- Name: chat_id0000200000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_id0000200000 ON public.telegram_update USING btree (chat_id, channel_post_id);


--
-- TOC entry 3028 (class 1259 OID 25398)
-- Name: chat_id0000300000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_id0000300000 ON public.user_chat USING btree (chat_id);


--
-- TOC entry 2970 (class 1259 OID 25399)
-- Name: chat_id_20000000000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_id_20000000000 ON public.edited_message USING btree (chat_id, message_id);


--
-- TOC entry 3012 (class 1259 OID 25400)
-- Name: chat_message_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chat_message_id00000 ON public.telegram_update USING btree (chat_id, message_id);


--
-- TOC entry 3013 (class 1259 OID 25401)
-- Name: chosen_inline_result_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX chosen_inline_result_id00000 ON public.telegram_update USING btree (chosen_inline_result_id);


--
-- TOC entry 3014 (class 1259 OID 25402)
-- Name: edited_channel_post_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX edited_channel_post_id00000 ON public.telegram_update USING btree (edited_channel_post_id);


--
-- TOC entry 3015 (class 1259 OID 25403)
-- Name: edited_message_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX edited_message_id00000 ON public.telegram_update USING btree (edited_message_id);


--
-- TOC entry 2981 (class 1259 OID 25404)
-- Name: forward_from00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX forward_from00000 ON public.message USING btree (forward_from);


--
-- TOC entry 2982 (class 1259 OID 25405)
-- Name: forward_from_chat00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX forward_from_chat00000 ON public.message USING btree (forward_from_chat);


--
-- TOC entry 3016 (class 1259 OID 25406)
-- Name: inline_query_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX inline_query_id00000 ON public.telegram_update USING btree (inline_query_id);


--
-- TOC entry 3006 (class 1259 OID 25407)
-- Name: ip00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE UNIQUE INDEX ip00000 ON public.status USING btree (ip);


--
-- TOC entry 2978 (class 1259 OID 25408)
-- Name: item00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE UNIQUE INDEX item00000 ON public.links USING btree (item);


--
-- TOC entry 2983 (class 1259 OID 25409)
-- Name: left_chat_member00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX left_chat_member00000 ON public.message USING btree (left_chat_member);


--
-- TOC entry 2971 (class 1259 OID 25410)
-- Name: message_id0000000000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX message_id0000000000 ON public.edited_message USING btree (message_id);


--
-- TOC entry 3017 (class 1259 OID 25411)
-- Name: message_id0000100000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX message_id0000100000 ON public.telegram_update USING btree (message_id);


--
-- TOC entry 2984 (class 1259 OID 25412)
-- Name: migrate_from_chat_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX migrate_from_chat_id00000 ON public.message USING btree (migrate_from_chat_id);


--
-- TOC entry 2985 (class 1259 OID 25413)
-- Name: migrate_to_chat_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX migrate_to_chat_id00000 ON public.message USING btree (migrate_to_chat_id);


--
-- TOC entry 2956 (class 1259 OID 25414)
-- Name: old_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX old_id00000 ON public.chat USING btree (old_id);


--
-- TOC entry 3018 (class 1259 OID 25415)
-- Name: poll_answer_poll_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX poll_answer_poll_id00000 ON public.telegram_update USING btree (poll_answer_poll_id);


--
-- TOC entry 3019 (class 1259 OID 25416)
-- Name: poll_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX poll_id00000 ON public.telegram_update USING btree (poll_id);


--
-- TOC entry 3020 (class 1259 OID 25417)
-- Name: pre_checkout_query_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX pre_checkout_query_id00000 ON public.telegram_update USING btree (pre_checkout_query_id);


--
-- TOC entry 2986 (class 1259 OID 25418)
-- Name: reply_to_chat00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX reply_to_chat00000 ON public.message USING btree (reply_to_chat);


--
-- TOC entry 2987 (class 1259 OID 25419)
-- Name: reply_to_chat_200000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX reply_to_chat_200000 ON public.message USING btree (reply_to_chat, reply_to_message);


--
-- TOC entry 2988 (class 1259 OID 25420)
-- Name: reply_to_message00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX reply_to_message00000 ON public.message USING btree (reply_to_message);


--
-- TOC entry 3021 (class 1259 OID 25421)
-- Name: shipping_query_id00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX shipping_query_id00000 ON public.telegram_update USING btree (shipping_query_id);


--
-- TOC entry 2965 (class 1259 OID 25422)
-- Name: status00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX status00000 ON public.conversation USING btree (status);


--
-- TOC entry 2961 (class 1259 OID 25423)
-- Name: user_id0000000000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000000000 ON public.chosen_inline_result USING btree (user_id);


--
-- TOC entry 2966 (class 1259 OID 25424)
-- Name: user_id0000100000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000100000 ON public.conversation USING btree (user_id);


--
-- TOC entry 2972 (class 1259 OID 25425)
-- Name: user_id0000200000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000200000 ON public.edited_message USING btree (user_id);


--
-- TOC entry 2975 (class 1259 OID 25426)
-- Name: user_id0000300000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000300000 ON public.inline_query USING btree (user_id);


--
-- TOC entry 2989 (class 1259 OID 25427)
-- Name: user_id0000400000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000400000 ON public.message USING btree (user_id);


--
-- TOC entry 2996 (class 1259 OID 25428)
-- Name: user_id0000500000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000500000 ON public.pre_checkout_query USING btree (user_id);


--
-- TOC entry 3003 (class 1259 OID 25429)
-- Name: user_id0000600000; Type: INDEX; Schema: public; Owner: olx
--

CREATE INDEX user_id0000600000 ON public.shipping_query USING btree (user_id);


--
-- TOC entry 3031 (class 1259 OID 25430)
-- Name: userid00000; Type: INDEX; Schema: public; Owner: olx
--

CREATE UNIQUE INDEX userid00000 ON public.workers USING btree (userid);


--
-- TOC entry 3032 (class 1259 OID 25431)
-- Name: username0000000000; Type: INDEX; Schema: public; Owner: olx
--

CREATE UNIQUE INDEX username0000000000 ON public.workers USING btree (username);


-- Completed on 2020-07-19 06:39:45

--
-- PostgreSQL database dump complete
--

