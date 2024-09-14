--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

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
-- Name: abonne; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.abonne (
    "idAb" integer NOT NULL,
    "emailAbo" character varying(255) DEFAULT NULL::character varying,
    "statusAbo" boolean DEFAULT true
);


ALTER TABLE public.abonne OWNER TO annafanjava;

--
-- Name: abonne_article; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.abonne_article (
    id integer NOT NULL,
    "abonne_idAb" integer,
    "article_idArt" integer,
    "dateLecture" date,
    avis character varying(255)
);


ALTER TABLE public.abonne_article OWNER TO annafanjava;

--
-- Name: abonne_article_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.abonne_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.abonne_article_id_seq OWNER TO annafanjava;

--
-- Name: abonne_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.abonne_article_id_seq OWNED BY public.abonne_article.id;


--
-- Name: abonne_idAb_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."abonne_idAb_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."abonne_idAb_seq" OWNER TO annafanjava;

--
-- Name: abonne_idAb_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."abonne_idAb_seq" OWNED BY public.abonne."idAb";


--
-- Name: actualite; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.actualite (
    "idAct" integer NOT NULL,
    "titreAct" character varying(255) DEFAULT NULL::character varying,
    "dateAct" date,
    "contenuAct" text,
    "categorieAct" character varying(255) DEFAULT NULL::character varying,
    "idGalerie" integer,
    publie boolean,
    "imageAct" uuid
);


ALTER TABLE public.actualite OWNER TO annafanjava;

--
-- Name: actualite_idAct_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."actualite_idAct_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."actualite_idAct_seq" OWNER TO annafanjava;

--
-- Name: actualite_idAct_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."actualite_idAct_seq" OWNED BY public.actualite."idAct";


--
-- Name: article; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.article (
    "idArt" integer NOT NULL,
    "titreArt" character varying(255) DEFAULT NULL::character varying,
    "vuesArt" integer,
    "contenuArt" text,
    publie boolean,
    "datePublicationArt" date,
    "idGalerie" integer,
    "imageArt" uuid,
    auteur integer
);


ALTER TABLE public.article OWNER TO annafanjava;

--
-- Name: article_idArt_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."article_idArt_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."article_idArt_seq" OWNER TO annafanjava;

--
-- Name: article_idArt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."article_idArt_seq" OWNED BY public.article."idArt";


--
-- Name: auteur; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.auteur (
    "idAut" integer NOT NULL,
    "photoAut" uuid,
    "nomPrenomAut" character varying(255),
    "bibliographieAut" text,
    "emailAut" character varying(255)
);


ALTER TABLE public.auteur OWNER TO annafanjava;

--
-- Name: auteur_idAut_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."auteur_idAut_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."auteur_idAut_seq" OWNER TO annafanjava;

--
-- Name: auteur_idAut_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."auteur_idAut_seq" OWNED BY public.auteur."idAut";


--
-- Name: avis; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.avis (
    "idAvis" integer NOT NULL,
    date_created timestamp with time zone,
    "contenuAvis" text,
    "typeAvis" character varying(255)
);


ALTER TABLE public.avis OWNER TO annafanjava;

--
-- Name: avis_idAvis_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."avis_idAvis_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."avis_idAvis_seq" OWNER TO annafanjava;

--
-- Name: avis_idAvis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."avis_idAvis_seq" OWNED BY public.avis."idAvis";


--
-- Name: categorie; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.categorie (
    "idCat" integer NOT NULL,
    "nomCat" character varying(255) DEFAULT NULL::character varying,
    "iconCat" character varying(255) DEFAULT NULL::character varying,
    couleur character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.categorie OWNER TO annafanjava;

--
-- Name: categorie_idCat_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."categorie_idCat_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."categorie_idCat_seq" OWNER TO annafanjava;

--
-- Name: categorie_idCat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."categorie_idCat_seq" OWNED BY public.categorie."idCat";


--
-- Name: concernant; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.concernant (
    "idCon" integer NOT NULL,
    "nomCon" character varying(255) DEFAULT NULL::character varying,
    "descriptionCon" text,
    "visionCon" character varying(255) DEFAULT NULL::character varying,
    "missionCon" character varying(255) DEFAULT NULL::character varying,
    slogan character varying(255) DEFAULT NULL::character varying,
    engagement character varying(255) DEFAULT NULL::character varying,
    "emailCon" character varying(255) DEFAULT NULL::character varying,
    "facebookCon" character varying(255) DEFAULT NULL::character varying,
    "adresseCon" character varying(255) DEFAULT NULL::character varying,
    "contactCon" character varying(255) DEFAULT NULL::character varying,
    "logoCon" uuid
);


ALTER TABLE public.concernant OWNER TO annafanjava;

--
-- Name: concernant_idCon_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."concernant_idCon_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."concernant_idCon_seq" OWNER TO annafanjava;

--
-- Name: concernant_idCon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."concernant_idCon_seq" OWNED BY public.concernant."idCon";


--
-- Name: directus_access; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);


ALTER TABLE public.directus_access OWNER TO annafanjava;

--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);


ALTER TABLE public.directus_activity OWNER TO annafanjava;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_activity_id_seq OWNER TO annafanjava;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(64),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_collections OWNER TO annafanjava;

--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


ALTER TABLE public.directus_dashboards OWNER TO annafanjava;

--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


ALTER TABLE public.directus_extensions OWNER TO annafanjava;

--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


ALTER TABLE public.directus_fields OWNER TO annafanjava;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_fields_id_seq OWNER TO annafanjava;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);


ALTER TABLE public.directus_files OWNER TO annafanjava;

--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(64),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_flows OWNER TO annafanjava;

--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


ALTER TABLE public.directus_folders OWNER TO annafanjava;

--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.directus_migrations OWNER TO annafanjava;

--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


ALTER TABLE public.directus_notifications OWNER TO annafanjava;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_notifications_id_seq OWNER TO annafanjava;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_operations OWNER TO annafanjava;

--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(64) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_panels OWNER TO annafanjava;

--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);


ALTER TABLE public.directus_permissions OWNER TO annafanjava;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_permissions_id_seq OWNER TO annafanjava;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_policies; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_policies OWNER TO annafanjava;

--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(64) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


ALTER TABLE public.directus_presets OWNER TO annafanjava;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_presets_id_seq OWNER TO annafanjava;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


ALTER TABLE public.directus_relations OWNER TO annafanjava;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_relations_id_seq OWNER TO annafanjava;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


ALTER TABLE public.directus_revisions OWNER TO annafanjava;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_revisions_id_seq OWNER TO annafanjava;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);


ALTER TABLE public.directus_roles OWNER TO annafanjava;

--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);


ALTER TABLE public.directus_sessions OWNER TO annafanjava;

--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json
);


ALTER TABLE public.directus_settings OWNER TO annafanjava;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_settings_id_seq OWNER TO annafanjava;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


ALTER TABLE public.directus_shares OWNER TO annafanjava;

--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.directus_translations OWNER TO annafanjava;

--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json
);


ALTER TABLE public.directus_users OWNER TO annafanjava;

--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


ALTER TABLE public.directus_versions OWNER TO annafanjava;

--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);


ALTER TABLE public.directus_webhooks OWNER TO annafanjava;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_webhooks_id_seq OWNER TO annafanjava;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


--
-- Name: equipe; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.equipe (
    "idEqu" integer NOT NULL,
    "photoEqu" uuid,
    "nomEqu" character varying(255),
    "descriptionEqu" text
);


ALTER TABLE public.equipe OWNER TO annafanjava;

--
-- Name: equipe_idEqu_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."equipe_idEqu_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."equipe_idEqu_seq" OWNER TO annafanjava;

--
-- Name: equipe_idEqu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."equipe_idEqu_seq" OWNED BY public.equipe."idEqu";


--
-- Name: evenement; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.evenement (
    "idEve" integer NOT NULL,
    "titreEve" character varying(255),
    "contenuEve" text,
    "photoEve" uuid,
    "datePublicationEve" date,
    publie boolean DEFAULT false
);


ALTER TABLE public.evenement OWNER TO annafanjava;

--
-- Name: evenement_idEve_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."evenement_idEve_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."evenement_idEve_seq" OWNER TO annafanjava;

--
-- Name: evenement_idEve_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."evenement_idEve_seq" OWNED BY public.evenement."idEve";


--
-- Name: fonction; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.fonction (
    "idFon" integer NOT NULL,
    "titreFon" character varying(255),
    "desponibiliteFon" character varying(255),
    equipe integer
);


ALTER TABLE public.fonction OWNER TO annafanjava;

--
-- Name: fonction_idFon_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."fonction_idFon_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."fonction_idFon_seq" OWNER TO annafanjava;

--
-- Name: fonction_idFon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."fonction_idFon_seq" OWNED BY public.fonction."idFon";


--
-- Name: galerie; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.galerie (
    "idGal" integer NOT NULL,
    "titreGal" character varying(255) DEFAULT NULL::character varying,
    "descriptionGal" text,
    "idCon" integer
);


ALTER TABLE public.galerie OWNER TO annafanjava;

--
-- Name: galerie_idGal_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."galerie_idGal_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."galerie_idGal_seq" OWNER TO annafanjava;

--
-- Name: galerie_idGal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."galerie_idGal_seq" OWNED BY public.galerie."idGal";


--
-- Name: image; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.image (
    "idIma" integer NOT NULL,
    "nomIma" character varying(255) DEFAULT NULL::character varying,
    "fichierIma" uuid
);


ALTER TABLE public.image OWNER TO annafanjava;

--
-- Name: image_galerie; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.image_galerie (
    id integer NOT NULL,
    "image_idIma" integer,
    "galerie_idGal" integer
);


ALTER TABLE public.image_galerie OWNER TO annafanjava;

--
-- Name: image_galerie_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.image_galerie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.image_galerie_id_seq OWNER TO annafanjava;

--
-- Name: image_galerie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.image_galerie_id_seq OWNED BY public.image_galerie.id;


--
-- Name: image_idIma_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."image_idIma_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."image_idIma_seq" OWNER TO annafanjava;

--
-- Name: image_idIma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."image_idIma_seq" OWNED BY public.image."idIma";


--
-- Name: partenaire; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.partenaire (
    "idPart" integer NOT NULL,
    "nomPart" character varying(255) DEFAULT NULL::character varying,
    "descriptionPart" text,
    "dateDebutPart" date,
    "contactPart" character varying(255) DEFAULT NULL::character varying,
    "emailPart" character varying(255) DEFAULT NULL::character varying,
    "adressePart" text,
    "siteWebPart" character varying(255) DEFAULT NULL::character varying,
    "nomPrenomResponsablePart" character varying(255) DEFAULT NULL::character varying,
    status boolean,
    "logoPart" uuid,
    "idCon" integer
);


ALTER TABLE public.partenaire OWNER TO annafanjava;

--
-- Name: partenaire_idPart_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."partenaire_idPart_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."partenaire_idPart_seq" OWNER TO annafanjava;

--
-- Name: partenaire_idPart_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."partenaire_idPart_seq" OWNED BY public.partenaire."idPart";


--
-- Name: test; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.test (
    id integer NOT NULL,
    testimg uuid
);


ALTER TABLE public.test OWNER TO annafanjava;

--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_id_seq OWNER TO annafanjava;

--
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- Name: typePartenariat; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public."typePartenariat" (
    "idTypePart" integer NOT NULL,
    "nomTypePart" character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."typePartenariat" OWNER TO annafanjava;

--
-- Name: typePartenariat_idTypePart_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."typePartenariat_idTypePart_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."typePartenariat_idTypePart_seq" OWNER TO annafanjava;

--
-- Name: typePartenariat_idTypePart_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."typePartenariat_idTypePart_seq" OWNED BY public."typePartenariat"."idTypePart";


--
-- Name: typePartenariat_partenaire; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public."typePartenariat_partenaire" (
    id integer NOT NULL,
    "typePartenariat_idTypePart" integer,
    "partenaire_idPart" integer
);


ALTER TABLE public."typePartenariat_partenaire" OWNER TO annafanjava;

--
-- Name: typePartenariat_partenaire_id_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."typePartenariat_partenaire_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."typePartenariat_partenaire_id_seq" OWNER TO annafanjava;

--
-- Name: typePartenariat_partenaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."typePartenariat_partenaire_id_seq" OWNED BY public."typePartenariat_partenaire".id;


--
-- Name: valeur; Type: TABLE; Schema: public; Owner: annafanjava
--

CREATE TABLE public.valeur (
    "idVal" integer NOT NULL,
    "nomVal" character varying(255) DEFAULT NULL::character varying,
    "iconVal" character varying(255) DEFAULT NULL::character varying,
    "idCon" integer
);


ALTER TABLE public.valeur OWNER TO annafanjava;

--
-- Name: valeur_idVal_seq; Type: SEQUENCE; Schema: public; Owner: annafanjava
--

CREATE SEQUENCE public."valeur_idVal_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."valeur_idVal_seq" OWNER TO annafanjava;

--
-- Name: valeur_idVal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annafanjava
--

ALTER SEQUENCE public."valeur_idVal_seq" OWNED BY public.valeur."idVal";


--
-- Name: abonne idAb; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne ALTER COLUMN "idAb" SET DEFAULT nextval('public."abonne_idAb_seq"'::regclass);


--
-- Name: abonne_article id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne_article ALTER COLUMN id SET DEFAULT nextval('public.abonne_article_id_seq'::regclass);


--
-- Name: actualite idAct; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.actualite ALTER COLUMN "idAct" SET DEFAULT nextval('public."actualite_idAct_seq"'::regclass);


--
-- Name: article idArt; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.article ALTER COLUMN "idArt" SET DEFAULT nextval('public."article_idArt_seq"'::regclass);


--
-- Name: auteur idAut; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.auteur ALTER COLUMN "idAut" SET DEFAULT nextval('public."auteur_idAut_seq"'::regclass);


--
-- Name: avis idAvis; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.avis ALTER COLUMN "idAvis" SET DEFAULT nextval('public."avis_idAvis_seq"'::regclass);


--
-- Name: categorie idCat; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.categorie ALTER COLUMN "idCat" SET DEFAULT nextval('public."categorie_idCat_seq"'::regclass);


--
-- Name: concernant idCon; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.concernant ALTER COLUMN "idCon" SET DEFAULT nextval('public."concernant_idCon_seq"'::regclass);


--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


--
-- Name: equipe idEqu; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.equipe ALTER COLUMN "idEqu" SET DEFAULT nextval('public."equipe_idEqu_seq"'::regclass);


--
-- Name: evenement idEve; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.evenement ALTER COLUMN "idEve" SET DEFAULT nextval('public."evenement_idEve_seq"'::regclass);


--
-- Name: fonction idFon; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.fonction ALTER COLUMN "idFon" SET DEFAULT nextval('public."fonction_idFon_seq"'::regclass);


--
-- Name: galerie idGal; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.galerie ALTER COLUMN "idGal" SET DEFAULT nextval('public."galerie_idGal_seq"'::regclass);


--
-- Name: image idIma; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image ALTER COLUMN "idIma" SET DEFAULT nextval('public."image_idIma_seq"'::regclass);


--
-- Name: image_galerie id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image_galerie ALTER COLUMN id SET DEFAULT nextval('public.image_galerie_id_seq'::regclass);


--
-- Name: partenaire idPart; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.partenaire ALTER COLUMN "idPart" SET DEFAULT nextval('public."partenaire_idPart_seq"'::regclass);


--
-- Name: test id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- Name: typePartenariat idTypePart; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat" ALTER COLUMN "idTypePart" SET DEFAULT nextval('public."typePartenariat_idTypePart_seq"'::regclass);


--
-- Name: typePartenariat_partenaire id; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat_partenaire" ALTER COLUMN id SET DEFAULT nextval('public."typePartenariat_partenaire_id_seq"'::regclass);


--
-- Name: valeur idVal; Type: DEFAULT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.valeur ALTER COLUMN "idVal" SET DEFAULT nextval('public."valeur_idVal_seq"'::regclass);


--
-- Data for Name: abonne; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.abonne ("idAb", "emailAbo", "statusAbo") FROM stdin;
1	tsifily2@gmail.com	t
2	tsifily@gmail.com	t
3	xxx@gmail.com	t
4	xxx@gmail.com	t
5	xxx@gmail.com	t
6	xxx@gmail.com	t
7	ayanna@gmail.com	t
8	mendrika@gmail.com	t
9	mendrikacccccc@gmail.com	t
\.


--
-- Data for Name: abonne_article; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.abonne_article (id, "abonne_idAb", "article_idArt", "dateLecture", avis) FROM stdin;
1	5	1	\N	\N
3	6	1	\N	\N
4	7	1	\N	\N
5	8	2	\N	\N
9	\N	\N	\N	\N
10	7	2	\N	\N
11	6	2	\N	\N
12	9	1	\N	\N
13	\N	2	\N	\N
14	\N	2	\N	\N
15	\N	2	\N	\N
16	2	2	\N	\N
17	5	1	\N	\N
\.


--
-- Data for Name: actualite; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.actualite ("idAct", "titreAct", "dateAct", "contenuAct", "categorieAct", "idGalerie", publie, "imageAct") FROM stdin;
1	Conférence au KSLMD Fianarantsoa sur le thème "Jeunes talents , grandes ambitions : une immersion dans les métiers de la Data".	2024-08-26	L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée "Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. \nLe premier jour, les sessions portaient sur "Se vendre avec succès", pour aider les participants à valoriser leur potentiel et leurs compétences, et "Jeunes talents, grandes ambitions", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.	formation	10	t	cc874f4e-85ea-4b9b-a6a8-902cba31d61c
\.


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.article ("idArt", "titreArt", "vuesArt", "contenuArt", publie, "datePublicationArt", "idGalerie", "imageArt", auteur) FROM stdin;
2	Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I	1	Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.	t	2024-09-04	9	1be0e30f-ce55-4244-bf0b-dfb3bd9332b0	2
1	Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I	3	Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.	t	2024-09-04	9	b8cfaf5e-1117-49c2-9006-c7fffd42e57a	2
\.


--
-- Data for Name: auteur; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.auteur ("idAut", "photoAut", "nomPrenomAut", "bibliographieAut", "emailAut") FROM stdin;
1	9d716402-09b4-461a-8bd5-a39d827feb7d	Marie Dupont	Marie Dupont est professeure agrégée de littérature française à l'Université de Paris-Sorbonne. Ses recherches portent principalement sur la littérature du XIXe siècle, en particulier sur les œuvres de Gustave Flaubert et Émile Zola. Elle est l'auteur de plusieurs ouvrages sur le réalisme et le naturalisme en littérature. Son article sur les représentations du travail ouvrier dans les romans de Zola a été publié dans la revue Études Littéraires.	mariedupont@gmail.com
2	76f168ff-4479-46fd-b762-50cddd31c05d	Jean-Pierre Martin	Jean-Pierre Martin est développeur web full stack avec plus de dix ans d'expérience dans les technologies JavaScript, React, et Node.js. Il est également l'auteur du blog Code With Passion, où il partage des tutoriels et des astuces pour les développeurs. Son dernier article, "Optimiser le rendu des composants React avec useMemo", a été largement partagé dans la communauté tech.	jeanpierre@gmail.com
\.


--
-- Data for Name: avis; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.avis ("idAvis", date_created, "contenuAvis", "typeAvis") FROM stdin;
1	2024-09-13 20:33:49.294+00	Ratsy	pas_utile
\.


--
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.categorie ("idCat", "nomCat", "iconCat", couleur) FROM stdin;
6	BI DEVELOPPER	interactive_space	#FFA439
5	DATA ENGINEER	eda	#FFA439
4	DATA ARCHITECT	physical_therapy	#A2B5CD
3	DATA SCIENTIST	stress_management	#3399FF
2	ML ENGINEER	ecg_heart	#3399FF
1	DATA ANALYST	snowshoeing	#3399FF
\.


--
-- Data for Name: concernant; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.concernant ("idCon", "nomCon", "descriptionCon", "visionCon", "missionCon", slogan, engagement, "emailCon", "facebookCon", "adresseCon", "contactCon", "logoCon") FROM stdin;
1	IDEA Academy 	L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. 	Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays	Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique	Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar	Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.	idea.dataconsulting@gmail.com 	IDEA Academy	Avaratra Ankatso, Enceinte Agro	032 03 288 32	8cbfa386-b820-4263-a19b-3f16fafaf096
\.


--
-- Data for Name: directus_access; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
13cd72ba-1545-45b8-86d4-162271960630	\N	\N	abf8a154-5b1c-4a46-ac9c-7300570f4f17	1
07bfc4d6-689e-4638-a23c-4bc95545f90e	53bbdf30-9b29-4498-9abb-43c28e6e2ad2	\N	1229331c-b1fc-4fdb-857a-f36921d31bd9	\N
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
1	login	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:56:54.389+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_users	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	http://localhost:8055
2	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:58:13.396+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	1	\N	http://localhost:8055
3	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:58:13.468+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	test	\N	http://localhost:8055
4	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:58:32.14+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_settings	1	\N	http://localhost:8055
5	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:59:17.223+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	1	\N	http://localhost:8055
6	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:59:17.313+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	2	\N	http://localhost:8055
7	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 14:59:17.432+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_policies	abf8a154-5b1c-4a46-ac9c-7300570f4f17	\N	http://localhost:8055
295	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:32:07.131+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	f0604cd6-8914-4ef4-9b55-4340a2ebae69	\N	http://localhost:8055
296	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:33:10.804+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	103	\N	http://localhost:8055
297	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:33:27.652+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	344f7a47-f718-4207-8e68-4257bce6a20b	\N	http://localhost:8055
298	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:34:05.519+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	104	\N	http://localhost:8055
299	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:34:23.721+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	8cbfa386-b820-4263-a19b-3f16fafaf096	\N	http://localhost:8055
300	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:34:28.689+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	concernant	1	\N	http://localhost:8055
301	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:44:00.956+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	105	\N	http://localhost:8055
302	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:44:51.637+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	galerie	9	\N	http://localhost:8055
303	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:45:13.541+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
304	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:46:36.851+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	77ef44dd-2532-423e-abcb-d5b85c1ef1d2	\N	http://localhost:8055
305	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:46:53.283+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
306	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:47:54.817+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	1be0e30f-ce55-4244-bf0b-dfb3bd9332b0	\N	http://localhost:8055
307	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:48:02.488+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
308	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:49:12.122+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	105	\N	http://localhost:8055
309	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:49:51.722+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	b8cfaf5e-1117-49c2-9006-c7fffd42e57a	\N	http://localhost:8055
310	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:50:01.977+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
311	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:55:16.003+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	106	\N	http://localhost:8055
312	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:56:00.55+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	cc874f4e-85ea-4b9b-a6a8-902cba31d61c	\N	http://localhost:8055
313	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:56:05.023+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	actualite	1	\N	http://localhost:8055
314	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:56:30.022+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	galerie	10	\N	http://localhost:8055
315	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:56:50.122+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	actualite	1	\N	http://localhost:8055
316	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:00:22.303+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	106	\N	http://localhost:8055
317	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:03:53.295+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	107	\N	http://localhost:8055
318	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:04:52.164+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	3502b028-b041-449d-9964-2754090b5b12	\N	http://localhost:8055
319	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:04:56.153+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	2	\N	http://localhost:8055
957	create	\N	2024-09-13 16:19:23.418+00	172.19.0.1	node	abonne_article	13	\N	\N
320	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:07.021+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	6254a7f7-c9fe-48bc-8d17-4643e98c2bee	\N	http://localhost:8055
321	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:08.459+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	3	\N	http://localhost:8055
322	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:30.077+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	99ae9112-3192-4d60-af04-b870903cd6cc	\N	http://localhost:8055
323	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:31.671+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	4	\N	http://localhost:8055
324	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:47.867+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	a776983f-794b-4851-adbc-364433aa81b4	\N	http://localhost:8055
325	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:49.209+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	5	\N	http://localhost:8055
326	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:06:07.658+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	c678eedd-8323-4dff-a9a7-e96a0bf87258	\N	http://localhost:8055
327	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:06:08.69+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	6	\N	http://localhost:8055
328	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:12:20.384+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	1f5dfd26-c544-4a42-8679-f4aefcf182d9	\N	http://localhost:8055
329	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:12:22.09+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	image	10	\N	http://localhost:8055
330	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:14:17.237+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	107	\N	http://localhost:8055
331	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:17:21.566+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	108	\N	http://localhost:8055
332	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:17:42.345+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	8030abef-b8a6-4874-94fd-2649a770bfa2	\N	http://localhost:8055
333	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:17:43.905+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
334	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:05:02.052+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
335	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:05:09.765+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
336	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:08:01.971+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	109	\N	http://localhost:8055
337	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:08:01.997+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	auteur	\N	http://localhost:8055
338	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:08:16.052+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	110	\N	http://localhost:8055
339	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:08:26.024+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	111	\N	http://localhost:8055
340	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:08:41.402+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	112	\N	http://localhost:8055
341	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:09:08.137+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	113	\N	http://localhost:8055
342	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:09:23.627+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	114	\N	http://localhost:8055
343	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:09:39.251+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	115	\N	http://localhost:8055
344	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:10:26.013+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	116	\N	http://localhost:8055
345	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:10:26.728+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	117	\N	http://localhost:8055
346	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:10:55.784+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	116	\N	http://localhost:8055
347	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:12:32.586+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	b8c1304b-4b6f-4be4-9f51-9cdcb4fcc1e6	\N	http://localhost:8055
348	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:16:10.112+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	9d716402-09b4-461a-8bd5-a39d827feb7d	\N	http://localhost:8055
349	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:16:34.64+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
350	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:16:34.774+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
351	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:16:34.95+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	auteur	1	\N	http://localhost:8055
352	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:17:07.314+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	112	\N	http://localhost:8055
353	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:17:20.935+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	76f168ff-4479-46fd-b762-50cddd31c05d	\N	http://localhost:8055
936	update	\N	2024-09-13 14:00:43.619+00	172.19.0.1	node	abonne_article	1	\N	\N
354	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:17:42.827+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	auteur	2	\N	http://localhost:8055
355	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:18:00.764+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
356	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:18:00.819+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
357	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:18:00.873+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	auteur	2	\N	http://localhost:8055
358	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:19:08.272+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	118	\N	http://localhost:8055
359	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:19:08.301+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	equipe	\N	http://localhost:8055
360	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:19:19.974+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	119	\N	http://localhost:8055
361	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:19:33.088+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	120	\N	http://localhost:8055
362	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:19:54.018+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	121	\N	http://localhost:8055
363	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:20:04.237+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	122	\N	http://localhost:8055
364	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:20:15.535+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	123	\N	http://localhost:8055
365	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:20:41.807+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	124	\N	http://localhost:8055
366	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:20:41.833+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	fonction	\N	http://localhost:8055
367	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:20:53.198+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	125	\N	http://localhost:8055
368	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:21:02.81+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	126	\N	http://localhost:8055
369	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:22:15.013+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	127	\N	http://localhost:8055
370	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:22:15.637+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	128	\N	http://localhost:8055
371	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:23:44.907+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	1	\N	http://localhost:8055
372	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:24:01.084+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	2	\N	http://localhost:8055
373	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:24:21.005+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	3	\N	http://localhost:8055
374	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:25:03.577+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	4	\N	http://localhost:8055
375	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:25:22.605+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	5	\N	http://localhost:8055
376	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:25:49.617+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	6	\N	http://localhost:8055
377	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:26:38.485+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	30	\N	http://localhost:8055
378	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:26:38.623+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	31	\N	http://localhost:8055
379	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:26:38.71+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	32	\N	http://localhost:8055
380	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:26:38.805+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	33	\N	http://localhost:8055
381	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:26:38.907+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_policies	abf8a154-5b1c-4a46-ac9c-7300570f4f17	\N	http://localhost:8055
382	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:27:13.947+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	128	\N	http://localhost:8055
383	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:27:37.876+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	c2a271a3-f814-4bdd-aa8f-c3fbbe89863f	\N	http://localhost:8055
384	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:27:54.783+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	1	\N	http://localhost:8055
385	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:27:54.814+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	equipe	1	\N	http://localhost:8055
386	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:04.18+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	6ae25356-56e6-4789-80fc-f55c66db0828	\N	http://localhost:8055
387	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:14.018+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	2	\N	http://localhost:8055
388	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:14.481+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	equipe	2	\N	http://localhost:8055
389	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:26.494+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	d3a2837a-5baa-4473-b2f8-bdb0e67f3c02	\N	http://localhost:8055
390	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:37.408+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	3	\N	http://localhost:8055
391	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:37.466+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	equipe	3	\N	http://localhost:8055
392	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:29:11.722+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	127	\N	http://localhost:8055
393	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:29:28.946+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	1	\N	http://localhost:8055
394	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:29:54.369+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	fonction	4	\N	http://localhost:8055
395	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:30:56.074+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	128	\N	http://localhost:8055
396	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:04:53.708+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
397	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:08.239+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	635c826c-3165-43ee-bb5f-277b4532c25f	\N	http://localhost:8055
398	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:08.349+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
399	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:08.44+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
400	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:08.54+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
401	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:24.6+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
402	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:24:24.762+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
403	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:04.817+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
404	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:04.872+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
405	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:04.976+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
406	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:05.041+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
407	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:05.17+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	635c826c-3165-43ee-bb5f-277b4532c25f	\N	http://localhost:8055
408	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:05.186+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
409	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:17.89+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
410	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:29:18.168+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
411	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:31:16.625+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
412	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:31:16.72+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
413	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:42.578+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
414	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:42.658+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
415	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:42.762+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
416	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:42.813+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
417	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:43.005+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
418	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:57.494+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
419	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:33:57.665+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
420	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:06.732+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
421	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:06.789+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
937	create	\N	2024-09-13 14:00:43.739+00	172.19.0.1	node	abonne	3	\N	\N
422	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:06.905+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
423	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:06.974+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
424	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:07.08+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
425	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:31.294+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
426	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:31.4+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
427	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:38.879+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
428	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:39:39.023+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
429	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:41:55.98+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
430	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:41:56.16+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
431	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:41:56.26+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
432	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:41:56.321+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
433	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:41:56.409+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
434	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:42:04.336+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
435	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:42:04.414+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
436	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:42:11.631+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
437	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:42:11.753+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
438	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:04.82+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
439	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:04.902+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
440	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:04.986+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
441	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:05.033+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
442	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:05.176+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
443	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:16.751+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
444	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:16.944+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
445	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:33.38+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
446	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:47:33.528+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
447	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.011+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	\N	http://localhost:8055
448	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.072+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
449	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.164+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
450	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.229+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
451	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.337+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	\N	http://localhost:8055
452	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:49:55.344+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
453	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:42.561+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	044ef460-3f1c-49df-8d10-07465bb55a05	\N	http://localhost:8055
454	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:42.674+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	211d20c7-f730-405d-a92e-7292bb7ec4d8	\N	http://localhost:8055
455	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:42.772+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	\N	http://localhost:8055
456	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:42.93+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
457	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:43.044+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
458	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:43.13+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
459	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:50:43.211+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
460	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:11.443+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
461	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:11.535+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
462	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:18.528+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
463	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:18.656+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
464	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:18.737+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
465	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:51:18.742+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
466	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:16.618+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	044ef460-3f1c-49df-8d10-07465bb55a05	\N	http://localhost:8055
467	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:16.709+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	211d20c7-f730-405d-a92e-7292bb7ec4d8	\N	http://localhost:8055
468	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:16.827+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	\N	http://localhost:8055
469	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:17.182+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	\N	http://localhost:8055
470	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:17.256+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	\N	http://localhost:8055
471	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:17.31+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	\N	http://localhost:8055
472	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:17.392+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
473	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:37.539+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
474	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:52:37.638+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
475	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:01.407+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
476	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:01.645+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
477	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:01.755+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
478	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:01.779+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
479	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:47.292+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
480	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:47.38+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
481	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:59.175+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
938	update	\N	2024-09-13 14:00:59.005+00	172.19.0.1	node	abonne_article	1	\N	\N
482	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:53:59.379+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
483	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:54:10.008+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
486	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:54:10.408+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
484	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:54:10.16+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
485	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:54:10.374+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
487	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 21:59:53.991+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
488	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:04:37.45+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	00891062-d5dc-4ebb-961b-b97e800538df	\N	http://localhost:8055
489	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:04:37.494+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2	\N	http://localhost:8055
490	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:04:37.568+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
491	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:04:37.63+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
492	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:04:37.711+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
493	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:05:04.979+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
494	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:05:13.144+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
495	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:05:53.731+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
496	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:07:07.048+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
497	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:07:07.187+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
498	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:07:17.652+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
499	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:07:17.766+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
500	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:19.137+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	00891062-d5dc-4ebb-961b-b97e800538df	\N	http://localhost:8055
501	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:19.202+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2	\N	http://localhost:8055
502	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:19.3+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
503	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:19.365+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
504	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:19.452+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
505	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:30.687+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
506	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:30.832+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
507	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:39.205+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
508	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:09:39.356+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
509	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:34.644+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
510	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:34.741+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
511	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:34.886+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
512	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:35.108+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
513	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:35.263+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
514	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:35.547+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	00891062-d5dc-4ebb-961b-b97e800538df	\N	http://localhost:8055
515	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:35.563+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2	\N	http://localhost:8055
516	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:35.591+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
517	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:49.143+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
518	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:49.227+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
519	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:56.918+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
520	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:16:57.14+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
521	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:02.686+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
522	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:02.737+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
523	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:02.806+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
524	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:02.896+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
525	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:02.965+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
526	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:03.083+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
527	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:21.271+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
528	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:21.393+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
529	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:32.077+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
530	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:32.157+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
531	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:40.52+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
532	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:18:40.644+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
533	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.337+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
534	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.388+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
535	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.44+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
536	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.589+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
537	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.676+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
538	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:08.769+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
539	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:21.004+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
540	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:21.135+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
541	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:29.7+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
542	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:20:29.838+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
543	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:52.864+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
544	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:52.973+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
939	create	\N	2024-09-13 14:00:59.054+00	172.19.0.1	node	abonne	4	\N	\N
545	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:53.337+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
546	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:53.649+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
547	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:53.935+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
548	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:21:54.211+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
549	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:22:04.276+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
550	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:22:04.379+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
551	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:22:12.821+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
552	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:22:12.976+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
553	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.14+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
554	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.173+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
555	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.306+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
556	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.461+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
557	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.516+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
558	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:29.661+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
559	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:41.153+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
560	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:41.317+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
561	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:49.996+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
562	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:27:50.407+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
563	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:10.667+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
564	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:10.719+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
565	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:10.794+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
566	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:10.874+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
567	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:10.963+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
568	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:11.096+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
569	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:26.465+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
570	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:26.563+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
571	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:33.09+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
572	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:29:33.22+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
573	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:30:38.031+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
574	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:30:38.235+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
942	update	\N	2024-09-13 14:15:59.935+00	172.19.0.1	node	abonne_article	1	\N	\N
575	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:30:55.954+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
576	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:30:56.133+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
577	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:31:04.111+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	2	\N	http://localhost:8055
578	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 22:31:04.298+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
579	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.199+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
580	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.249+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
581	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.315+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
582	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.399+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
583	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.443+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
584	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.517+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	\N	http://localhost:8055
585	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:21.523+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
586	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:34.812+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
587	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:34.972+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
588	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:42.181+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
589	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 00:01:42.397+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
590	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.303+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
591	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.389+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
592	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.474+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
593	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.572+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
594	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.677+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
595	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 14:07:43.819+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
596	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 20:24:09.947+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
597	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 20:24:10.653+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
598	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 20:24:22.775+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
599	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-05 20:24:24.203+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
600	login	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-07 23:02:51.284+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_users	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	http://localhost:8055
601	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-07 23:52:11.276+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne	1	\N	http://localhost:8055
602	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:08:39.863+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne	2	\N	http://localhost:3000
603	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:08:39.87+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:3000
604	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:08:40.065+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:3000
605	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:46:27.772+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	concernant	1	\N	http://localhost:8055
606	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:47:14.607+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	concernant	1	\N	http://localhost:8055
607	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-08 00:52:50.427+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	concernant	1	\N	http://localhost:8055
943	create	\N	2024-09-13 14:15:59.975+00	172.19.0.1	node	abonne	5	\N	\N
948	create	\N	2024-09-13 14:28:36.53+00	172.19.0.1	node	abonne_article	5	\N	\N
608	login	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-09 20:07:00.131+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_users	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	http://localhost:8055
609	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:41:43.75+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	129	\N	http://localhost:8055
610	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:41:43.805+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	evenement	\N	http://localhost:8055
611	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:44:43.93+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	130	\N	http://localhost:8055
612	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:45:15.594+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	131	\N	http://localhost:8055
613	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:45:29.312+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	132	\N	http://localhost:8055
614	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:45:52.682+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	133	\N	http://localhost:8055
615	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:52:20.283+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	2e2eae62-ac2c-4106-867e-ecad38cf174a	\N	http://localhost:8055
616	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:52:23.809+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	1	\N	http://localhost:8055
617	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:54:05.296+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	588a6efb-115c-4997-828b-fbe35eb17df4	\N	http://localhost:8055
618	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:54:07.92+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	2	\N	http://localhost:8055
619	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:56:26.872+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	68d30d37-66ef-435e-adab-e602f0f422b3	\N	http://localhost:8055
620	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:56:32.94+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	3	\N	http://localhost:8055
621	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 21:00:20.908+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	3	\N	http://localhost:8055
622	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 21:00:39.814+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	34	\N	http://localhost:8055
623	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 21:00:39.929+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_policies	abf8a154-5b1c-4a46-ac9c-7300570f4f17	\N	http://localhost:8055
624	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 08:15:52.659+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	132	\N	http://localhost:8055
625	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 08:23:21.472+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	134	\N	http://localhost:8055
626	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 08:29:12.144+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	1	\N	http://localhost:8055
627	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 08:29:17.709+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	2	\N	http://localhost:8055
628	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 08:29:24.281+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	evenement	3	\N	http://localhost:8055
629	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:33:17.354+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
630	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:33:17.654+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
631	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:33:28.402+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
632	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:33:29.326+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
633	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:41:20.206+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
634	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:41:20.322+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
635	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:41:32.69+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
636	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:41:33.655+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
637	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:45:10.465+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
638	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:45:10.617+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
639	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:45:16.156+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
944	create	\N	2024-09-13 14:21:17.041+00	172.19.0.1	node	abonne_article	3	\N	\N
640	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:45:16.716+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
641	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:29.794+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
642	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:29.957+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
643	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:30.16+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
644	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:30.442+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
645	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:30.565+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
646	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:53:30.719+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
655	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:55:15.477+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
656	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:55:15.706+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
647	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:31.449+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
648	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:31.698+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
649	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:31.976+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
650	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:32.141+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
651	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:32.233+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
652	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:54:32.515+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
653	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:55:06.569+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
654	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:55:06.726+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
657	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:59:39.429+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	58c41df2-b7f0-4bc7-a85e-d7cd112ace10	\N	http://localhost:8055
658	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:45.6+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
659	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:45.705+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
660	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:45.787+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
661	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:45.994+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
662	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:46.06+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
663	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:46.162+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
664	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:56.124+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
665	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:03:56.437+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
666	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:04:03.985+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
667	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:04:04.591+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
668	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:41:41.919+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_files	7a1df1dc-b5f6-45fb-b788-be3fe6da4466	\N	http://localhost:8055
669	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.258+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
670	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.355+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
671	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.432+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
672	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.537+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
673	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.6+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
674	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:17:45.765+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
675	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:57.876+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
676	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:57.997+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
677	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:58.111+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
945	create	\N	2024-09-13 14:21:17.068+00	172.19.0.1	node	abonne	6	\N	\N
678	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:58.191+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
679	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:58.24+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
680	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 12:45:58.311+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
681	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:50.928+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
682	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:51.011+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
683	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:51.109+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
684	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:51.185+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
685	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:51.311+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
686	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 13:04:51.528+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
687	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:54.344+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
688	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:54.445+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
689	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:54.6+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
690	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:54.821+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
691	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:54.893+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
692	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:28:55.054+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
693	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:29:08.316+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
694	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:29:08.416+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
695	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:29:14.092+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
696	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:29:14.306+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
697	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:38.617+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
698	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:38.726+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
699	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:38.901+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
700	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:39.149+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
701	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:39.27+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
702	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:38:39.419+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
703	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:41:13.874+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	135	\N	http://localhost:8055
704	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:41:28.568+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
705	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:41:28.759+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
706	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:02.78+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
946	create	\N	2024-09-13 14:22:30.401+00	172.19.0.1	node	abonne_article	4	\N	\N
947	create	\N	2024-09-13 14:22:30.442+00	172.19.0.1	node	abonne	7	\N	\N
707	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:02.89+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
708	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:03.216+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
709	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:03.439+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
710	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:03.576+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
711	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:49:03.795+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
712	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:50:06.877+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
713	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:50:07.1+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
714	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:50:14.109+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
715	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:50:14.416+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
716	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:52:22.062+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
717	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:52:22.142+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
718	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:52:29.829+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
719	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 21:52:29.947+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
720	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.101+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
721	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.18+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
722	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.315+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
723	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.496+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
724	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.678+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
725	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:02.85+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
726	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:03:54.128+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	135	\N	http://localhost:8055
727	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:04:08.078+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
728	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:04:08.422+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
729	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:04:16.66+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
730	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:04:16.833+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
731	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:11:45.005+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	135	\N	http://localhost:8055
732	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:12:29.017+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
733	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:12:29.19+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
734	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:12:37.375+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
735	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:12:37.591+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
736	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.146+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
747	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:31:18.629+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
737	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.329+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
738	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.437+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
739	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.496+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
740	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.647+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
741	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.694+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
742	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:58.874+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
743	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:59.032+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	\N	http://localhost:8055
744	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:30:59.059+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
745	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:31:11.85+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
746	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:31:12.063+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
748	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:31:19.19+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
749	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:07.048+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
750	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:07.234+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
751	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:07.491+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
752	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:07.894+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
753	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:08.229+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
754	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:08.413+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
755	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:08.705+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
756	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:08.877+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
757	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:46.977+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
758	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:47.094+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
759	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:54.199+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
760	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:32:54.433+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
768	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:36.644+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
769	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:36.755+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
770	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:36.921+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
771	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:37.075+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
772	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:37.28+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
773	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:37.355+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
774	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:37.501+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
775	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:37.608+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
776	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:47.405+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
777	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:47.524+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
778	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:57.034+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
779	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:41:57.281+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
780	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:43:47.848+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_permissions	35	\N	http://localhost:8055
781	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:43:48.064+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_policies	abf8a154-5b1c-4a46-ac9c-7300570f4f17	\N	http://localhost:8055
782	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:44:11.963+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
783	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:44:12.083+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
784	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:44:20.12+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
785	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:44:20.28+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
786	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:32.984+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
787	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.065+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
788	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.176+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
789	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.277+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
790	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.439+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
791	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.548+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
792	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.692+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
793	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:33.802+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
794	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:44.927+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
795	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:45.038+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
797	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:54.716+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
796	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:46:54.455+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
798	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:18.947+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
799	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.049+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
800	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.247+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
801	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.426+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
802	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.578+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
803	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.742+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
804	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:19.89+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
805	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:20.07+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
806	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:29.196+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
807	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:29.37+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
808	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:37.71+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
809	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 22:57:38.092+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
810	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:38.39+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
811	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:38.514+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
812	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:38.701+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
813	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:38.82+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
814	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:38.966+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
815	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:39.115+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
816	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:39.27+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
817	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:39.423+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
818	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:53.072+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
819	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:11:53.275+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
820	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:12:02.11+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
821	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:12:02.254+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
822	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:37.381+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
823	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:37.466+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
824	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:37.524+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
825	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:37.747+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
949	create	\N	2024-09-13 14:28:36.552+00	172.19.0.1	node	abonne	8	\N	\N
958	create	\N	2024-09-13 16:31:26.72+00	172.19.0.1	node	abonne_article	14	\N	\N
826	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:37.894+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
827	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:38.033+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
828	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:38.172+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
829	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:38.325+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
830	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:47.519+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
831	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:47.685+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
832	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:54.809+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
833	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 23:13:54.925+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
844	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:48:35.462+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_users	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	http://localhost:8055
845	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:45.977+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
846	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.043+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
847	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.195+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
848	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.288+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
849	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.396+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
850	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.471+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
851	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.575+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
852	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:46.689+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
853	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:50:59.872+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
854	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:51:00.2+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
950	create	\N	2024-09-13 15:01:41.177+00	172.19.0.1	node	abonne_article	9	\N	\N
855	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:51:08.43+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
865	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:32.63+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
867	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:39.099+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
879	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:43:04.157+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
856	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 06:51:09.321+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
857	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.106+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
858	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.217+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
859	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.291+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
860	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.44+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
861	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.497+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
862	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.571+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
863	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.687+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	\N	http://localhost:8055
864	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:23.704+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
866	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:32.783+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
868	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:33:39.235+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
869	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:33.89+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
870	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.038+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
871	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.19+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
872	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.294+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
873	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.357+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
874	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.434+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
875	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:38:34.491+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
876	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:42:52.607+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
877	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:42:52.697+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
878	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:43:03.92+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
880	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.497+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
881	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.551+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
882	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.631+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
883	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.713+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
884	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.772+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
885	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.864+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
886	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:43.913+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
887	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:56.879+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
955	create	\N	2024-09-13 16:06:02.982+00	172.19.0.1	node	abonne_article	12	\N	\N
888	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:45:56.967+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
889	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:46:03.298+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
890	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:46:03.459+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
891	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:31.737+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
892	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:31.819+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
893	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:31.917+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
894	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:32.031+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
895	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:32.1+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
896	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:32.223+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
897	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:32.345+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
898	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:57.401+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
899	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:49:57.49+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
900	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:50:03.873+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
901	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:50:03.955+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
902	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:50:10.397+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
903	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 08:50:10.544+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
904	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.543+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	\N	http://localhost:8055
905	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.597+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	http://localhost:8055
906	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.651+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	\N	http://localhost:8055
907	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.786+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	\N	http://localhost:8055
908	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.847+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	\N	http://localhost:8055
909	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.924+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	\N	http://localhost:8055
910	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:09.93+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
911	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:41.264+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
912	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:41.394+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
913	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:48.11+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
914	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:06:48.307+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
915	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:13:05.957+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
916	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:13:06.079+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
917	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:13:14.378+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
918	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:13:14.532+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
919	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:15:28.393+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
956	create	\N	2024-09-13 16:06:03.004+00	172.19.0.1	node	abonne	9	\N	\N
920	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:15:28.523+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
921	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:15:35.039+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
922	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:15:35.146+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
923	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:23:32.667+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
924	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:23:32.776+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
925	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:23:39.71+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	1	\N	http://localhost:8055
926	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 09:23:39.94+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	\N	http://localhost:8055
927	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 20:56:38.047+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	typePartenariat_partenaire	5	\N	http://localhost:3000
928	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 20:56:38.099+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	typePartenariat_partenaire	6	\N	http://localhost:3000
929	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 20:56:38.124+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	3	\N	http://localhost:3000
930	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 21:02:30.234+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	typePartenariat_partenaire	7	\N	http://localhost:3000
931	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-12 21:02:30.269+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	partenaire	4	\N	http://localhost:3000
932	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 13:10:18.101+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	abonne_article	\N	http://localhost:8055
933	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 13:11:12.106+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne_article	1	\N	http://localhost:8055
934	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 13:11:12.154+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	1	\N	http://localhost:8055
935	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 13:11:12.299+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
940	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 14:05:21.432+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne_article	2	\N	http://localhost:8055
941	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 14:05:31.359+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne_article	2	\N	http://localhost:8055
951	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 15:41:57.994+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne_article	10	\N	http://localhost:8055
952	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 15:41:58.045+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	abonne_article	11	\N	http://localhost:8055
953	update	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 15:41:58.07+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	article	2	\N	http://localhost:8055
954	run	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 15:41:58.163+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	\N	http://localhost:8055
959	create	\N	2024-09-13 16:32:02.884+00	172.19.0.1	node	abonne_article	15	\N	\N
960	create	\N	2024-09-13 19:56:38.574+00	172.19.0.1	axios/1.7.2	abonne_article	16	\N	\N
961	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:15:17.414+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	136	\N	http://localhost:8055
962	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:15:17.453+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	137	\N	http://localhost:8055
963	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:15:17.485+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	avis	\N	http://localhost:8055
964	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:26:46.489+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	138	\N	http://localhost:8055
965	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:28:58.577+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	139	\N	http://localhost:8055
966	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:03.099+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	140	\N	http://localhost:8055
967	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:03.643+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	141	\N	http://localhost:8055
968	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:03.681+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	abonne_article_avis	\N	http://localhost:8055
969	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:04.011+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	142	\N	http://localhost:8055
970	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:04.475+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	143	\N	http://localhost:8055
971	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:32:05.117+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	144	\N	http://localhost:8055
973	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:33:49.338+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	avis	1	\N	http://localhost:8055
974	delete	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:40:31.08+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_collections	abonne_article_avis	\N	http://localhost:8055
975	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:47:16.834+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	145	\N	http://localhost:8055
976	create	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:55:39.337+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	directus_fields	146	\N	http://localhost:8055
977	create	\N	2024-09-13 21:47:03.36+00	172.19.0.1	node	abonne_article	17	\N	\N
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
test	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
concernant	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
galerie	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
image	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
valeur	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
categorie	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
article	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
abonne	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
actualite	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
partenaire	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
typePartenariat	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
typePartenariat_partenaire	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
image_galerie	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
auteur	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
equipe	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
fonction	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
evenement	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
abonne_article	import_export	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
avis	\N	\N	\N	f	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
1	test	id	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
82	typePartenariat_partenaire	partenaire_idPart	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
5	concernant	idCon	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
6	concernant	nomCon	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
8	concernant	descriptionCon	\N	input-multiline	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
9	concernant	visionCon	\N	input	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
10	concernant	missionCon	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
11	concernant	slogan	\N	input	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
12	concernant	engagement	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
13	concernant	emailCon	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
14	concernant	facebookCon	\N	input	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
15	concernant	adresseCon	\N	input	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
16	concernant	contactCon	\N	input	\N	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
17	galerie	idGal	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
18	galerie	titreGal	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
19	galerie	descriptionGal	\N	input-multiline	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
20	galerie	idCon	m2o	\N	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
21	image	idIma	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
22	image	nomIma	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
26	valeur	idVal	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
27	valeur	nomVal	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
28	valeur	iconVal	\N	select-icon	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
29	valeur	idCon	m2o	\N	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
30	categorie	idCat	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
31	categorie	nomCat	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
32	categorie	iconCat	\N	select-icon	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
33	categorie	couleur	\N	select-color	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
34	article	idArt	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
35	article	titreArt	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
36	article	vuesArt	\N	input	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
37	article	contenuArt	\N	input-multiline	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
38	article	publie	cast-boolean	boolean	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
39	article	datePublicationArt	\N	datetime	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
40	article	idGalerie	m2o	\N	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
41	abonne	idAb	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
42	abonne	emailAbo	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
43	abonne	statusAbo	cast-boolean	boolean	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
44	abonne	article	m2m	\N	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
45	abonne_article	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
46	article	abonne	m2m	list-m2m	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
47	abonne_article	abonne_idAb	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
48	abonne_article	article_idArt	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
49	actualite	idAct	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
50	actualite	titreAct	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
51	actualite	dateAct	\N	datetime	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
52	actualite	contenuAct	\N	input-multiline	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
53	actualite	categorieAct	\N	select-dropdown	{"choices":[{"text":"Formation","value":"formation"}]}	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
54	actualite	idGalerie	m2o	\N	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
55	actualite	publie	cast-boolean	boolean	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
66	partenaire	idPart	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
67	partenaire	nomPart	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
68	partenaire	descriptionPart	\N	input-multiline	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
70	partenaire	dateDebutPart	\N	datetime	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
71	partenaire	contactPart	\N	input	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
72	partenaire	emailPart	\N	input	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
73	partenaire	adressePart	\N	input	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
74	partenaire	siteWebPart	\N	input	\N	\N	\N	f	f	9	full	\N	\N	\N	f	\N	\N	\N
75	partenaire	nomPrenomResponsablePart	\N	input	\N	\N	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
76	typePartenariat	idTypePart	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
77	typePartenariat	nomTypePart	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
78	typePartenariat	partenaire	m2m	\N	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
79	typePartenariat_partenaire	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
80	partenaire	typePartenariat	m2m	list-m2m	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
81	typePartenariat_partenaire	typePartenariat_idTypePart	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
83	partenaire	status	cast-boolean	boolean	\N	\N	\N	f	f	12	full	\N	\N	\N	f	\N	\N	\N
98	image	galerie	m2m	\N	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
99	image_galerie	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
100	galerie	image	m2m	list-m2m	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
101	image_galerie	image_idIma	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
102	image_galerie	galerie_idGal	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
103	test	testimg	file	file-image	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
104	concernant	logoCon	file	file-image	\N	\N	\N	f	f	13	full	\N	\N	\N	f	\N	\N	\N
105	article	imageArt	file	file-image	\N	image	{"circle":true}	f	f	9	full	\N	\N	\N	f	\N	\N	\N
106	actualite	imageAct	file	file-image	\N	image	{"circle":true}	f	f	8	full	\N	\N	\N	f	\N	\N	\N
107	image	fichierIma	file	file-image	\N	image	{"circle":true}	f	f	5	full	\N	\N	\N	f	\N	\N	\N
108	partenaire	logoPart	file	file-image	\N	\N	\N	f	f	13	full	\N	\N	\N	f	\N	\N	\N
109	auteur	idAut	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
113	auteur	nomPrenomAut	\N	input	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
114	auteur	bibliographieAut	\N	input-multiline	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
115	auteur	emailAut	\N	input	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
117	auteur	article	o2m	list-o2m	\N	\N	\N	f	f	8	full	\N	\N	\N	f	\N	\N	\N
116	article	auteur	m2o	select-dropdown-m2o	{"template":"{{nomPrenomAut}}"}	raw	\N	f	f	10	full	\N	\N	\N	f	\N	\N	\N
112	auteur	photoAut	file	file-image	\N	image	{"circle":true}	f	f	4	full	\N	\N	\N	f	\N	\N	\N
118	equipe	idEqu	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
121	equipe	photoEqu	file	file-image	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
122	equipe	nomEqu	\N	input	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
123	equipe	descriptionEqu	\N	input-multiline	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
124	fonction	idFon	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
125	fonction	titreFon	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
126	fonction	desponibiliteFon	\N	input	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
127	fonction	equipe	m2o	select-dropdown-m2o	{"template":"{{nomEqu}}"}	raw	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
128	equipe	fonction	o2m	\N	{"template":"{{titreFon}}"}	related-values	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
129	evenement	idEve	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
130	evenement	titreEve	\N	input	\N	\N	\N	f	f	2	full	\N	\N	\N	f	\N	\N	\N
131	evenement	contenuEve	\N	input-multiline	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
133	evenement	datePublicationEve	\N	datetime	\N	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
132	evenement	photoEve	file	file-image	\N	image	{"circle":true}	f	f	4	full	\N	\N	\N	f	\N	\N	\N
134	evenement	publie	cast-boolean	boolean	\N	\N	\N	f	f	6	full	\N	\N	\N	f	\N	\N	\N
135	partenaire	idCon	m2o	select-dropdown-m2o	{"template":"{{logoCon}}"}	related-values	{"template":"{{logoCon}}"}	f	f	14	full	\N	\N	\N	f	\N	\N	\N
136	avis	idAvis	\N	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
137	avis	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	2	half	\N	\N	\N	f	\N	\N	\N
138	avis	contenuAvis	\N	input-multiline	\N	\N	\N	f	f	3	full	\N	\N	\N	f	\N	\N	\N
139	avis	typeAvis	\N	select-dropdown	{"choices":[{"text":"Pas utile","value":"pas_utile"},{"text":"Utile","value":"utile"},{"text":"Super utile","value":"supe_utile"}]}	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
145	abonne_article	dateLecture	\N	datetime	\N	\N	\N	f	f	4	full	\N	\N	\N	f	\N	\N	\N
146	abonne_article	avis	\N	select-dropdown	{"choices":[{"text":"Super utile","value":"super_utile"},{"text":"Utile","value":"utile"},{"text":"Pas utile","value":"pas_utile"}]}	\N	\N	f	f	5	full	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
ec065cc2-8050-4bd9-919f-29e454b5d895	local	ec065cc2-8050-4bd9-919f-29e454b5d895.jpg	418805954_358876953795094_2427340301367678306_n.jpg	418805954 358876953795094 2427340301367678306 N	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-19 19:48:54.588+00	\N	2024-08-19 19:48:54.699+00	\N	18784	500	500	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-19 19:48:54.697+00
d1ed6c6e-98fd-406c-9153-34399270ed5a	local	d1ed6c6e-98fd-406c-9153-34399270ed5a.jpg	modern-equipped-computer-lab.jpg	Modern Equipped Computer Lab	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-19 19:57:13.213+00	\N	2024-08-19 19:57:13.299+00	\N	8769242	5576	3717	\N	\N	\N	\N	\N	{"ifd0":{"Make":"Canon","Model":"Canon EOS 5D Mark III"},"exif":{"FNumber":2.8,"ExposureTime":0.00625,"FocalLength":50,"ISOSpeedRatings":640}}	\N	\N	\N	\N	2024-08-19 19:57:13.297+00
b68845f2-699c-46be-ab49-50a00e58f356	local	b68845f2-699c-46be-ab49-50a00e58f356.jpg	418805954_358876953795094_2427340301367678306_n.jpg	418805954 358876953795094 2427340301367678306 N	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:28:25.976+00	\N	2024-08-26 11:28:26.032+00	\N	18784	500	500	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:28:26.031+00
38569121-6b9e-405c-8b60-46d3a535644b	local	38569121-6b9e-405c-8b60-46d3a535644b.jpg	418805954_358876953795094_2427340301367678306_n.jpg	418805954 358876953795094 2427340301367678306 N	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:34:43.303+00	\N	2024-08-26 11:34:43.329+00	\N	18784	500	500	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:34:43.328+00
1ae92716-ff0c-4559-88bb-6ab89f2f043c	local	1ae92716-ff0c-4559-88bb-6ab89f2f043c.png	is1.png	Is1	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:36:08.293+00	\N	2024-08-26 11:36:08.363+00	\N	675444	1024	563	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:36:08.361+00
1b21948f-6100-4369-abfc-f2c2c1a54710	local	1b21948f-6100-4369-abfc-f2c2c1a54710.png	is2.png	Is2	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:36:52.582+00	\N	2024-08-26 11:36:52.605+00	\N	887841	1024	682	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:36:52.604+00
e5197229-2595-41e6-a61c-6650e5ba3c97	local	e5197229-2595-41e6-a61c-6650e5ba3c97.jpg	is5 (2).jpg	Is5 (2)	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:37:14.727+00	\N	2024-08-26 11:37:14.787+00	\N	64199	1024	563	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:37:14.785+00
f51d4456-c3b5-488a-8228-0af31abc9c4b	local	f51d4456-c3b5-488a-8228-0af31abc9c4b.PNG	vis1.PNG	Vis1	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:40:01.378+00	\N	2024-08-26 11:40:01.421+00	\N	178068	346	209	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:40:01.42+00
f97ed40d-bf38-474f-8c16-8d62bb7cdfa2	local	f97ed40d-bf38-474f-8c16-8d62bb7cdfa2.PNG	mis1.PNG	Mis1	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:44:42.513+00	\N	2024-08-26 11:44:42.556+00	\N	173146	351	211	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:44:42.555+00
5973b66e-46b4-4259-bf6e-07b238793da4	local	5973b66e-46b4-4259-bf6e-07b238793da4.PNG	article (1).PNG	Article (1)	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:48:24.956+00	\N	2024-08-26 11:48:24.988+00	\N	168832	304	180	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:48:24.987+00
108aea2d-ff46-4176-8299-e1f53e686db9	local	108aea2d-ff46-4176-8299-e1f53e686db9.png	is1.png	Is1	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:50:40.734+00	\N	2024-08-26 11:50:40.756+00	\N	675444	1024	563	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:50:40.755+00
88d41146-c514-4a83-8c93-9a90de8c73be	local	88d41146-c514-4a83-8c93-9a90de8c73be.png	is2.png	Is2	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:51:40.974+00	\N	2024-08-26 11:51:41.02+00	\N	887841	1024	682	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:51:41.016+00
4c14622e-d1f6-4616-ade9-9125aab59d8e	local	4c14622e-d1f6-4616-ade9-9125aab59d8e.PNG	val1.PNG	Val1	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 11:56:20.797+00	\N	2024-08-26 11:56:20.828+00	\N	208265	349	207	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 11:56:20.827+00
c9017600-ab05-4806-8cc8-ab0727a58cff	local	c9017600-ab05-4806-8cc8-ab0727a58cff.PNG	actualite.PNG	Actualite	image/png	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 12:20:44.542+00	\N	2024-08-26 12:20:44.584+00	\N	92401	224	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 12:20:44.583+00
c33fd295-1622-4066-8df8-77679d49aa8e	local	c33fd295-1622-4066-8df8-77679d49aa8e.jpg	418805954_358876953795094_2427340301367678306_n.jpg	418805954 358876953795094 2427340301367678306 N	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-26 12:25:54.274+00	\N	2024-08-26 12:25:54.312+00	\N	18784	500	500	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-26 12:25:54.311+00
ad56bd4e-50be-4531-b311-8926c1f7346c	local	ad56bd4e-50be-4531-b311-8926c1f7346c.jpg	418805954_358876953795094_2427340301367678306_n.jpg	418805954 358876953795094 2427340301367678306 N	image/jpeg	\N	0b0c225f-b367-4a09-955e-916e14b8f477	2024-08-29 14:37:25.523+00	\N	2024-08-29 14:37:25.658+00	\N	18784	500	500	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-08-29 14:37:25.65+00
f0604cd6-8914-4ef4-9b55-4340a2ebae69	local	f0604cd6-8914-4ef4-9b55-4340a2ebae69.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:32:07.086+00	\N	2024-09-04 18:32:07.284+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:32:07.276+00
344f7a47-f718-4207-8e68-4257bce6a20b	local	344f7a47-f718-4207-8e68-4257bce6a20b.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:33:27.636+00	\N	2024-09-04 18:33:27.74+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:33:27.737+00
8cbfa386-b820-4263-a19b-3f16fafaf096	local	8cbfa386-b820-4263-a19b-3f16fafaf096.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:34:23.704+00	\N	2024-09-04 18:34:23.816+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:34:23.811+00
77ef44dd-2532-423e-abcb-d5b85c1ef1d2	local	77ef44dd-2532-423e-abcb-d5b85c1ef1d2.PNG	article (1).PNG	Article (1)	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:46:36.845+00	\N	2024-09-04 18:46:36.92+00	\N	168832	304	180	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:46:36.917+00
1be0e30f-ce55-4244-bf0b-dfb3bd9332b0	local	1be0e30f-ce55-4244-bf0b-dfb3bd9332b0.jpg	concep.jpg	Concep	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:47:54.802+00	\N	2024-09-04 18:47:56.345+00	\N	8413574	3000	4000	\N	\N	\N	\N	\N	{"ifd0":{"Make":"Xiaomi","Model":"Redmi Note 7 Pro"},"exif":{"FNumber":1.8,"ExposureTime":0.066656,"FocalLength":4.74,"ISOSpeedRatings":9985}}	\N	\N	\N	\N	2024-09-04 18:47:56.336+00
b8cfaf5e-1117-49c2-9006-c7fffd42e57a	local	b8cfaf5e-1117-49c2-9006-c7fffd42e57a.PNG	article (1).PNG	Article (1)	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:49:51.713+00	\N	2024-09-04 18:49:51.802+00	\N	168832	304	180	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:49:51.797+00
cc874f4e-85ea-4b9b-a6a8-902cba31d61c	local	cc874f4e-85ea-4b9b-a6a8-902cba31d61c.jpg	is1.jpg	Is1	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 18:56:00.54+00	\N	2024-09-04 18:56:00.633+00	\N	64199	1024	563	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 18:56:00.629+00
3502b028-b041-449d-9964-2754090b5b12	local	3502b028-b041-449d-9964-2754090b5b12.png	is1.png	Is1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:04:52.151+00	\N	2024-09-04 19:04:52.252+00	\N	675444	1024	563	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:04:52.249+00
6254a7f7-c9fe-48bc-8d17-4643e98c2bee	local	6254a7f7-c9fe-48bc-8d17-4643e98c2bee.png	is2.png	Is2	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:06.982+00	\N	2024-09-04 19:05:07.303+00	\N	887841	1024	682	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:05:07.291+00
99ae9112-3192-4d60-af04-b870903cd6cc	local	99ae9112-3192-4d60-af04-b870903cd6cc.jpg	is5 (3).jpg	Is5 (3)	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:30.058+00	\N	2024-09-04 19:05:30.135+00	\N	85751	1024	683	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:05:30.132+00
a776983f-794b-4851-adbc-364433aa81b4	local	a776983f-794b-4851-adbc-364433aa81b4.PNG	vis1.PNG	Vis1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:05:47.847+00	\N	2024-09-04 19:05:48.004+00	\N	178068	346	209	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:05:48.001+00
c678eedd-8323-4dff-a9a7-e96a0bf87258	local	c678eedd-8323-4dff-a9a7-e96a0bf87258.PNG	mis1.PNG	Mis1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:06:07.64+00	\N	2024-09-04 19:06:07.74+00	\N	173146	351	211	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:06:07.737+00
1f5dfd26-c544-4a42-8679-f4aefcf182d9	local	1f5dfd26-c544-4a42-8679-f4aefcf182d9.PNG	val1.PNG	Val1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:12:20.371+00	\N	2024-09-04 19:12:20.469+00	\N	208265	349	207	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:12:20.465+00
8030abef-b8a6-4874-94fd-2649a770bfa2	local	8030abef-b8a6-4874-94fd-2649a770bfa2.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 19:17:42.33+00	\N	2024-09-04 19:17:42.43+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 19:17:42.417+00
b8c1304b-4b6f-4be4-9f51-9cdcb4fcc1e6	local	b8c1304b-4b6f-4be4-9f51-9cdcb4fcc1e6.jpg	auteur3.jpg	Auteur3	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:12:32.555+00	\N	2024-09-04 20:12:33.022+00	\N	80817	1248	782	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:12:32.993+00
9d716402-09b4-461a-8bd5-a39d827feb7d	local	9d716402-09b4-461a-8bd5-a39d827feb7d.jpg	auteur2.jpg	Auteur2	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:16:10.095+00	\N	2024-09-04 20:16:10.215+00	\N	43404	540	360	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:16:10.203+00
76f168ff-4479-46fd-b762-50cddd31c05d	local	76f168ff-4479-46fd-b762-50cddd31c05d.jpg	auteur3.jpg	Auteur3	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:17:20.902+00	\N	2024-09-04 20:17:21.06+00	\N	80817	1248	782	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:17:21.055+00
c2a271a3-f814-4bdd-aa8f-c3fbbe89863f	local	c2a271a3-f814-4bdd-aa8f-c3fbbe89863f.PNG	mis1.PNG	Mis1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:27:37.862+00	\N	2024-09-04 20:27:37.929+00	\N	173146	351	211	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:27:37.926+00
6ae25356-56e6-4789-80fc-f55c66db0828	local	6ae25356-56e6-4789-80fc-f55c66db0828.jpg	auteur3.jpg	Auteur3	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:04.151+00	\N	2024-09-04 20:28:04.308+00	\N	80817	1248	782	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:28:04.297+00
d3a2837a-5baa-4473-b2f8-bdb0e67f3c02	local	d3a2837a-5baa-4473-b2f8-bdb0e67f3c02.jpg	auteur2.jpg	Auteur2	image/jpeg	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-04 20:28:26.479+00	\N	2024-09-04 20:28:26.647+00	\N	43404	540	360	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-04 20:28:26.633+00
2e2eae62-ac2c-4106-867e-ecad38cf174a	local	2e2eae62-ac2c-4106-867e-ecad38cf174a.PNG	evenement1.PNG	Evenement1	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:52:20.246+00	\N	2024-09-10 20:52:20.482+00	\N	566717	627	465	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-10 20:52:20.478+00
588a6efb-115c-4997-828b-fbe35eb17df4	local	588a6efb-115c-4997-828b-fbe35eb17df4.PNG	evenement2.PNG	Evenement2	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:54:05.278+00	\N	2024-09-10 20:54:05.538+00	\N	615212	631	464	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-10 20:54:05.522+00
68d30d37-66ef-435e-adab-e602f0f422b3	local	68d30d37-66ef-435e-adab-e602f0f422b3.PNG	evenement3.PNG	Evenement3	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-10 20:56:26.826+00	\N	2024-09-10 20:56:27.169+00	\N	724877	620	460	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-10 20:56:27.164+00
58c41df2-b7f0-4bc7-a85e-d7cd112ace10	local	58c41df2-b7f0-4bc7-a85e-d7cd112ace10.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 10:59:39.408+00	\N	2024-09-11 10:59:39.512+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-11 10:59:39.508+00
7a1df1dc-b5f6-45fb-b788-be3fe6da4466	local	7a1df1dc-b5f6-45fb-b788-be3fe6da4466.PNG	logo.PNG	Logo	image/png	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-11 11:41:41.899+00	\N	2024-09-11 11:41:42.024+00	\N	7229	174	164	\N	\N	\N	\N	\N	{}	\N	\N	\N	\N	2024-09-11 11:41:42.001+00
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
e9e011cd-5670-4e6d-ba47-770bc56913cf	modifierDate_article	bolt	\N	automatisation de date de partage de Article	active	event	all	{"type":"action","scope":["items.create","items.update"],"collections":["article"]}	5a041420-1a66-47d6-ab00-131c9d586a65	2024-09-04 21:04:53.693+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
dc892bb3-8c6c-4085-9b51-4d973d21daa8	EnvoieMail_Partenaire	bolt	\N	Envoie email au partenaire	active	event	all	{"type":"action","scope":["items.update"],"collections":["partenaire"]}	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	2024-09-04 21:59:53.983+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_folders (id, name, parent) FROM stdin;
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2024-09-04 14:55:25.431725+00
20201029A	Remove System Relations	2024-09-04 14:55:25.463949+00
20201029B	Remove System Collections	2024-09-04 14:55:25.517772+00
20201029C	Remove System Fields	2024-09-04 14:55:25.590174+00
20201105A	Add Cascade System Relations	2024-09-04 14:55:25.87916+00
20201105B	Change Webhook URL Type	2024-09-04 14:55:25.926878+00
20210225A	Add Relations Sort Field	2024-09-04 14:55:26.004754+00
20210304A	Remove Locked Fields	2024-09-04 14:55:26.046049+00
20210312A	Webhooks Collections Text	2024-09-04 14:55:26.089044+00
20210331A	Add Refresh Interval	2024-09-04 14:55:26.121893+00
20210415A	Make Filesize Nullable	2024-09-04 14:55:26.170194+00
20210416A	Add Collections Accountability	2024-09-04 14:55:26.197929+00
20210422A	Remove Files Interface	2024-09-04 14:55:26.217326+00
20210506A	Rename Interfaces	2024-09-04 14:55:26.390612+00
20210510A	Restructure Relations	2024-09-04 14:55:26.554448+00
20210518A	Add Foreign Key Constraints	2024-09-04 14:55:26.623939+00
20210519A	Add System Fk Triggers	2024-09-04 14:55:27.204658+00
20210521A	Add Collections Icon Color	2024-09-04 14:55:27.243904+00
20210525A	Add Insights	2024-09-04 14:55:27.375339+00
20210608A	Add Deep Clone Config	2024-09-04 14:55:27.407878+00
20210626A	Change Filesize Bigint	2024-09-04 14:55:27.488467+00
20210716A	Add Conditions to Fields	2024-09-04 14:55:27.509528+00
20210721A	Add Default Folder	2024-09-04 14:55:27.558281+00
20210802A	Replace Groups	2024-09-04 14:55:27.589064+00
20210803A	Add Required to Fields	2024-09-04 14:55:27.619364+00
20210805A	Update Groups	2024-09-04 14:55:27.645744+00
20210805B	Change Image Metadata Structure	2024-09-04 14:55:27.674139+00
20210811A	Add Geometry Config	2024-09-04 14:55:27.713752+00
20210831A	Remove Limit Column	2024-09-04 14:55:27.73512+00
20210903A	Add Auth Provider	2024-09-04 14:55:27.847897+00
20210907A	Webhooks Collections Not Null	2024-09-04 14:55:27.902448+00
20210910A	Move Module Setup	2024-09-04 14:55:27.931864+00
20210920A	Webhooks URL Not Null	2024-09-04 14:55:27.989372+00
20210924A	Add Collection Organization	2024-09-04 14:55:28.032969+00
20210927A	Replace Fields Group	2024-09-04 14:55:28.092583+00
20210927B	Replace M2M Interface	2024-09-04 14:55:28.112725+00
20210929A	Rename Login Action	2024-09-04 14:55:28.13229+00
20211007A	Update Presets	2024-09-04 14:55:28.191359+00
20211009A	Add Auth Data	2024-09-04 14:55:28.214642+00
20211016A	Add Webhook Headers	2024-09-04 14:55:28.235693+00
20211103A	Set Unique to User Token	2024-09-04 14:55:28.273357+00
20211103B	Update Special Geometry	2024-09-04 14:55:28.296962+00
20211104A	Remove Collections Listing	2024-09-04 14:55:28.318513+00
20211118A	Add Notifications	2024-09-04 14:55:28.42113+00
20211211A	Add Shares	2024-09-04 14:55:28.545329+00
20211230A	Add Project Descriptor	2024-09-04 14:55:28.578104+00
20220303A	Remove Default Project Color	2024-09-04 14:55:28.633545+00
20220308A	Add Bookmark Icon and Color	2024-09-04 14:55:28.654416+00
20220314A	Add Translation Strings	2024-09-04 14:55:28.678512+00
20220322A	Rename Field Typecast Flags	2024-09-04 14:55:28.712913+00
20220323A	Add Field Validation	2024-09-04 14:55:28.733671+00
20220325A	Fix Typecast Flags	2024-09-04 14:55:28.76623+00
20220325B	Add Default Language	2024-09-04 14:55:28.822146+00
20220402A	Remove Default Value Panel Icon	2024-09-04 14:55:28.879428+00
20220429A	Add Flows	2024-09-04 14:55:29.159381+00
20220429B	Add Color to Insights Icon	2024-09-04 14:55:29.18782+00
20220429C	Drop Non Null From IP of Activity	2024-09-04 14:55:29.209197+00
20220429D	Drop Non Null From Sender of Notifications	2024-09-04 14:55:29.242908+00
20220614A	Rename Hook Trigger to Event	2024-09-04 14:55:29.260909+00
20220801A	Update Notifications Timestamp Column	2024-09-04 14:55:29.312954+00
20220802A	Add Custom Aspect Ratios	2024-09-04 14:55:29.331259+00
20220826A	Add Origin to Accountability	2024-09-04 14:55:29.361933+00
20230401A	Update Material Icons	2024-09-04 14:55:29.420685+00
20230525A	Add Preview Settings	2024-09-04 14:55:29.45136+00
20230526A	Migrate Translation Strings	2024-09-04 14:55:29.535294+00
20230721A	Require Shares Fields	2024-09-04 14:55:29.575298+00
20230823A	Add Content Versioning	2024-09-04 14:55:29.705994+00
20230927A	Themes	2024-09-04 14:55:29.846408+00
20231009A	Update CSV Fields to Text	2024-09-04 14:55:29.869615+00
20231009B	Update Panel Options	2024-09-04 14:55:29.887321+00
20231010A	Add Extensions	2024-09-04 14:55:29.918817+00
20231215A	Add Focalpoints	2024-09-04 14:55:29.952083+00
20240122A	Add Report URL Fields	2024-09-04 14:55:29.98104+00
20240204A	Marketplace	2024-09-04 14:55:30.339816+00
20240305A	Change Useragent Type	2024-09-04 14:55:30.533413+00
20240311A	Deprecate Webhooks	2024-09-04 14:55:30.727506+00
20240422A	Public Registration	2024-09-04 14:55:30.810413+00
20240515A	Add Session Window	2024-09-04 14:55:30.840914+00
20240701A	Add Tus Data	2024-09-04 14:55:30.915762+00
20240716A	Update Files Date Fields	2024-09-04 14:55:31.082577+00
20240806A	Permissions Policies	2024-09-04 14:55:31.39566+00
20240817A	Update Icon Fields Length	2024-09-04 14:55:31.607941+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
044ef460-3f1c-49df-8d10-07465bb55a05	Log dans la console	log_sjx04	log	73	1	{"message":"Mis a jour réussie"}	\N	\N	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:50:42.548+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
211d20c7-f730-405d-a92e-7292bb7ec4d8	Log dans la console	log_wawc6	log	73	17	{"message":"Erreur lors de la mis a jour"}	\N	\N	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:50:42.598+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
528b8f1e-e02d-4721-bd2a-85336934678f	Mettre à jour les données	item_update_6685y	item-update	55	1	{"emitEvents":true,"collection":"article","key":["{{$trigger.keys[0]}}"],"payload":{"datePublicationArt":"{{$last.date_de_partage}}"}}	044ef460-3f1c-49df-8d10-07465bb55a05	211d20c7-f730-405d-a92e-7292bb7ec4d8	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:49:55.003+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
b306bb7d-fe65-4d41-b00c-fa80a9d55c02	recuperer date aujourd'hui	recuperer_date_aujourd_hui	exec	37	1	{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"}	528b8f1e-e02d-4721-bd2a-85336934678f	\N	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:29:04.837+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
08607050-8ae9-4dbf-bb2c-5e1220b3801a	Log dans la console	log_r6zlw	log	37	17	{"message":"publie est faux"}	\N	\N	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:24:08.287+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
5a041420-1a66-47d6-ab00-131c9d586a65	Condition	condition_wyp6p	condition	19	1	{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	08607050-8ae9-4dbf-bb2c-5e1220b3801a	e9e011cd-5670-4e6d-ba47-770bc56913cf	2024-09-04 21:24:08.402+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
0e80d5e7-6733-4819-abc2-0df0b18ea8f6	Lire les données	item_read_mw7p0	item-read	37	1	{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}	075924ac-a8fd-4d32-a82c-d3224c3b09e7	\N	dc892bb3-8c6c-4085-9b51-4d973d21daa8	2024-09-04 22:16:34.819+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
92a16774-55e7-466b-a5a2-4a0b6ecbd714	Log dans la console	log_wb9qj	log	37	17	{"message":"status n'est pas active "}	\N	\N	dc892bb3-8c6c-4085-9b51-4d973d21daa8	2024-09-04 22:04:37.533+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	Condition	condition_jdju0	condition	19	1	{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	92a16774-55e7-466b-a5a2-4a0b6ecbd714	dc892bb3-8c6c-4085-9b51-4d973d21daa8	2024-09-04 22:04:37.591+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
bc70f822-d43c-4852-896d-4766b862b7db	Envoyer un e-mail	mail_muhlv	mail	78	2	{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}	\N	\N	dc892bb3-8c6c-4085-9b51-4d973d21daa8	2024-09-05 00:01:21.187+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
075924ac-a8fd-4d32-a82c-d3224c3b09e7	Lancer le script	exec_1u9sh	exec	59	2	{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}	bc70f822-d43c-4852-896d-4766b862b7db	\N	dc892bb3-8c6c-4085-9b51-4d973d21daa8	2024-09-11 22:30:58.224+00	4ce4ad2f-33ca-4ea5-a4fd-50e479010314
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_permissions (id, collection, action, permissions, validation, presets, fields, policy) FROM stdin;
1	test	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
2	test	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
5	abonne	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
6	abonne	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
7	abonne	update	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
8	abonne	delete	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
9	abonne_article	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
10	abonne_article	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
11	abonne_article	update	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
12	actualite	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
13	categorie	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
14	article	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
15	concernant	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
16	galerie	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
17	image	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
19	valeur	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
20	directus_files	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
21	partenaire	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
22	partenaire	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
23	partenaire	update	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
24	typePartenariat	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
25	typePartenariat	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
26	typePartenariat	update	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
27	valeur	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
28	image_galerie	create	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
29	image_galerie	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
30	auteur	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
31	fonction	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
32	equipe	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
33	typePartenariat_partenaire	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
34	evenement	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
35	directus_webhooks	read	\N	\N	\N	*	abf8a154-5b1c-4a46-ac9c-7300570f4f17
\.


--
-- Data for Name: directus_policies; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
abf8a154-5b1c-4a46-ac9c-7300570f4f17	$t:public_label	public	$t:public_description	\N	f	f	f
1229331c-b1fc-4fdb-857a-f36921d31bd9	Administrator	verified	$t:admin_description	\N	f	t	t
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
22	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	auteur	\N	\N	{"tabular":{"page":1,"fields":["bibliographieAut","emailAut","nomPrenomAut","photoAut","article"]}}	\N	\N	\N	bookmark	\N
19	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	partenaire	\N	\N	{"tabular":{"page":1,"fields":["contactPart","dateDebutPart","descriptionPart","nomPart","status"]}}	\N	\N	\N	bookmark	\N
17	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	concernant	\N	\N	{"tabular":{"page":1}}	\N	10	\N	bookmark	\N
12	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	actualite	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
4	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	valeur	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
5	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	categorie	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
7	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	abonne	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
8	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	actualite	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
6	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	article	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
3	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	concernant	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
10	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	typePartenariat	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
1	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	image	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
2	\N	0b0c225f-b367-4a09-955e-916e14b8f477	\N	galerie	\N	\N	{"tabular":{"page":1,"fields":["descriptionGal","idCon","image","titreGal","idGal"]}}	\N	\N	\N	bookmark	\N
27	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	avis	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
11	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	article	\N	\N	{"tabular":{"page":1,"fields":["contenuArt","publie","titreArt","vuesArt","imageArt","abonne","idArt","abonne.abonne_idAb"]}}	\N	\N	\N	bookmark	\N
18	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	test	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
16	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	image	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
14	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	typePartenariat	\N	\N	{"tabular":{"page":1,"fields":["nomTypePart","partenaire","idTypePart"]}}	\N	\N	\N	bookmark	\N
20	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	valeur	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
21	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	categorie	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
13	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	abonne	\N	\N	{"tabular":{"page":1,"fields":["article","emailAbo","statusAbo","idAb","article.article_idArt"]}}	\N	10	\N	bookmark	\N
15	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	galerie	\N	\N	{"tabular":{"page":1,"fields":["descriptionGal","idCon","image","titreGal","idGal"]}}	\N	\N	\N	bookmark	\N
26	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	abonne_article	\N	\N	{"tabular":{"page":1,"fields":["article_idArt","id","abonne_idAb","avis_idAvis"]}}	\N	10	\N	bookmark	\N
23	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	equipe	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
24	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	fonction	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
25	\N	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	\N	evenement	\N	\N	{"tabular":{"page":1}}	\N	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
3	galerie	idCon	concernant	\N	\N	\N	\N	\N	nullify
6	valeur	idCon	concernant	\N	\N	\N	\N	\N	nullify
7	article	idGalerie	galerie	\N	\N	\N	\N	\N	nullify
8	abonne_article	article_idArt	article	abonne	\N	\N	abonne_idAb	\N	nullify
9	abonne_article	abonne_idAb	abonne	article	\N	\N	article_idArt	\N	nullify
10	actualite	idGalerie	galerie	\N	\N	\N	\N	\N	nullify
13	typePartenariat_partenaire	partenaire_idPart	partenaire	typePartenariat	\N	\N	typePartenariat_idTypePart	\N	nullify
14	typePartenariat_partenaire	typePartenariat_idTypePart	typePartenariat	partenaire	\N	\N	partenaire_idPart	\N	nullify
21	image_galerie	galerie_idGal	galerie	image	\N	\N	image_idIma	\N	nullify
22	image_galerie	image_idIma	image	galerie	\N	\N	galerie_idGal	\N	nullify
23	test	testimg	directus_files	\N	\N	\N	\N	\N	nullify
24	concernant	logoCon	directus_files	\N	\N	\N	\N	\N	nullify
25	article	imageArt	directus_files	\N	\N	\N	\N	\N	nullify
26	actualite	imageAct	directus_files	\N	\N	\N	\N	\N	nullify
27	image	fichierIma	directus_files	\N	\N	\N	\N	\N	nullify
28	partenaire	logoPart	directus_files	\N	\N	\N	\N	\N	nullify
29	auteur	photoAut	directus_files	\N	\N	\N	\N	\N	nullify
30	article	auteur	auteur	article	\N	\N	\N	\N	nullify
31	equipe	photoEqu	directus_files	\N	\N	\N	\N	\N	nullify
32	fonction	equipe	equipe	fonction	\N	\N	\N	\N	nullify
33	evenement	photoEve	directus_files	\N	\N	\N	\N	\N	nullify
34	partenaire	idCon	concernant	\N	\N	\N	\N	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_fields	1	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"test"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"id","collection":"test"}	\N	\N
2	3	directus_collections	test	{"singleton":false,"collection":"test"}	{"singleton":false,"collection":"test"}	\N	\N
3	4	directus_settings	1	{"default_language":"fr-FR"}	{"default_language":"fr-FR"}	\N	\N
4	5	directus_permissions	1	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"test","action":"create"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"test","action":"create"}	\N	\N
5	6	directus_permissions	2	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"test","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"test","action":"read"}	\N	\N
260	295	directus_files	f0604cd6-8914-4ef4-9b55-4340a2ebae69	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
261	296	directus_fields	103	{"sort":2,"interface":"file-image","special":["file"],"collection":"test","field":"testimg"}	{"sort":2,"interface":"file-image","special":["file"],"collection":"test","field":"testimg"}	\N	\N
262	297	directus_files	344f7a47-f718-4207-8e68-4257bce6a20b	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
263	298	directus_fields	104	{"sort":13,"interface":"file-image","special":["file"],"collection":"concernant","field":"logoCon"}	{"sort":13,"interface":"file-image","special":["file"],"collection":"concernant","field":"logoCon"}	\N	\N
264	299	directus_files	8cbfa386-b820-4263-a19b-3f16fafaf096	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
265	300	concernant	1	{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}	{"logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}	\N	\N
266	301	directus_fields	105	{"sort":9,"interface":"file-image","special":["file"],"collection":"article","field":"imageArt"}	{"sort":9,"interface":"file-image","special":["file"],"collection":"article","field":"imageArt"}	\N	\N
267	302	galerie	9	{"titreGal":"article","descriptionGal":"galerie pour l'article","idCon":1}	{"titreGal":"article","descriptionGal":"galerie pour l'article","idCon":1}	\N	\N
268	303	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":null,"abonne":[]}	{"idGalerie":9}	\N	\N
269	304	directus_files	77ef44dd-2532-423e-abcb-d5b85c1ef1d2	{"title":"Article (1)","filename_download":"article (1).PNG","type":"image/png","storage":"local"}	{"title":"Article (1)","filename_download":"article (1).PNG","type":"image/png","storage":"local"}	\N	\N
270	305	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"77ef44dd-2532-423e-abcb-d5b85c1ef1d2","abonne":[]}	{"idGalerie":9,"imageArt":"77ef44dd-2532-423e-abcb-d5b85c1ef1d2"}	\N	\N
271	306	directus_files	1be0e30f-ce55-4244-bf0b-dfb3bd9332b0	{"title":"Concep","filename_download":"concep.jpg","type":"image/jpeg","storage":"local"}	{"title":"Concep","filename_download":"concep.jpg","type":"image/jpeg","storage":"local"}	\N	\N
272	307	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","abonne":[]}	{"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0"}	\N	\N
273	308	directus_fields	105	{"id":105,"collection":"article","field":"imageArt","special":["file"],"interface":"file-image","options":null,"display":"image","display_options":{"circle":true},"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"article","field":"imageArt","display":"image","display_options":{"circle":true}}	\N	\N
274	309	directus_files	b8cfaf5e-1117-49c2-9006-c7fffd42e57a	{"title":"Article (1)","filename_download":"article (1).PNG","type":"image/png","storage":"local"}	{"title":"Article (1)","filename_download":"article (1).PNG","type":"image/png","storage":"local"}	\N	\N
275	310	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","abonne":[]}	{"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a"}	\N	\N
276	311	directus_fields	106	{"sort":8,"interface":"file-image","special":["file"],"collection":"actualite","field":"imageAct"}	{"sort":8,"interface":"file-image","special":["file"],"collection":"actualite","field":"imageAct"}	\N	\N
277	312	directus_files	cc874f4e-85ea-4b9b-a6a8-902cba31d61c	{"title":"Is1","filename_download":"is1.jpg","type":"image/jpeg","storage":"local"}	{"title":"Is1","filename_download":"is1.jpg","type":"image/jpeg","storage":"local"}	\N	\N
278	313	actualite	1	{"idAct":1,"titreAct":"Conférence au KSLMD Fianarantsoa sur le thème \\"Jeunes talents , grandes ambitions : une immersion dans les métiers de la Data\\".","dateAct":"2024-08-26","contenuAct":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. \\nLe premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","categorieAct":"formation","idGalerie":null,"publie":true,"imageAct":"cc874f4e-85ea-4b9b-a6a8-902cba31d61c"}	{"imageAct":"cc874f4e-85ea-4b9b-a6a8-902cba31d61c"}	\N	\N
279	314	galerie	10	{"titreGal":"Actualite","descriptionGal":"galerie pour l'actualite"}	{"titreGal":"Actualite","descriptionGal":"galerie pour l'actualite"}	\N	\N
309	344	directus_fields	116	{"sort":10,"special":["m2o"],"collection":"article","field":"auteur"}	{"sort":10,"special":["m2o"],"collection":"article","field":"auteur"}	\N	\N
280	315	actualite	1	{"idAct":1,"titreAct":"Conférence au KSLMD Fianarantsoa sur le thème \\"Jeunes talents , grandes ambitions : une immersion dans les métiers de la Data\\".","dateAct":"2024-08-26","contenuAct":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. \\nLe premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","categorieAct":"formation","idGalerie":10,"publie":true,"imageAct":"cc874f4e-85ea-4b9b-a6a8-902cba31d61c"}	{"idGalerie":10}	\N	\N
281	316	directus_fields	106	{"id":106,"collection":"actualite","field":"imageAct","special":["file"],"interface":"file-image","options":null,"display":"image","display_options":{"circle":true},"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"actualite","field":"imageAct","display":"image","display_options":{"circle":true}}	\N	\N
282	317	directus_fields	107	{"sort":5,"interface":"file-image","special":["file"],"collection":"image","field":"fichierIma"}	{"sort":5,"interface":"file-image","special":["file"],"collection":"image","field":"fichierIma"}	\N	\N
283	318	directus_files	3502b028-b041-449d-9964-2754090b5b12	{"title":"Is1","filename_download":"is1.png","type":"image/png","storage":"local"}	{"title":"Is1","filename_download":"is1.png","type":"image/png","storage":"local"}	\N	\N
284	319	image	2	{"idIma":2,"nomIma":"carrousel 1","fichierIma":"3502b028-b041-449d-9964-2754090b5b12","galerie":[1]}	{"fichierIma":"3502b028-b041-449d-9964-2754090b5b12"}	\N	\N
285	320	directus_files	6254a7f7-c9fe-48bc-8d17-4643e98c2bee	{"title":"Is2","filename_download":"is2.png","type":"image/png","storage":"local"}	{"title":"Is2","filename_download":"is2.png","type":"image/png","storage":"local"}	\N	\N
286	321	image	3	{"idIma":3,"nomIma":"carousel 2","fichierIma":"6254a7f7-c9fe-48bc-8d17-4643e98c2bee","galerie":[3]}	{"fichierIma":"6254a7f7-c9fe-48bc-8d17-4643e98c2bee"}	\N	\N
287	322	directus_files	99ae9112-3192-4d60-af04-b870903cd6cc	{"title":"Is5 (3)","filename_download":"is5 (3).jpg","type":"image/jpeg","storage":"local"}	{"title":"Is5 (3)","filename_download":"is5 (3).jpg","type":"image/jpeg","storage":"local"}	\N	\N
288	323	image	4	{"idIma":4,"nomIma":"carousel 3","fichierIma":"99ae9112-3192-4d60-af04-b870903cd6cc","galerie":[2]}	{"fichierIma":"99ae9112-3192-4d60-af04-b870903cd6cc"}	\N	\N
289	324	directus_files	a776983f-794b-4851-adbc-364433aa81b4	{"title":"Vis1","filename_download":"vis1.PNG","type":"image/png","storage":"local"}	{"title":"Vis1","filename_download":"vis1.PNG","type":"image/png","storage":"local"}	\N	\N
290	325	image	5	{"idIma":5,"nomIma":"vision","fichierIma":"a776983f-794b-4851-adbc-364433aa81b4","galerie":[4]}	{"fichierIma":"a776983f-794b-4851-adbc-364433aa81b4"}	\N	\N
291	326	directus_files	c678eedd-8323-4dff-a9a7-e96a0bf87258	{"title":"Mis1","filename_download":"mis1.PNG","type":"image/png","storage":"local"}	{"title":"Mis1","filename_download":"mis1.PNG","type":"image/png","storage":"local"}	\N	\N
292	327	image	6	{"idIma":6,"nomIma":"mission image","fichierIma":"c678eedd-8323-4dff-a9a7-e96a0bf87258","galerie":[5]}	{"fichierIma":"c678eedd-8323-4dff-a9a7-e96a0bf87258"}	\N	\N
293	328	directus_files	1f5dfd26-c544-4a42-8679-f4aefcf182d9	{"title":"Val1","filename_download":"val1.PNG","type":"image/png","storage":"local"}	{"title":"Val1","filename_download":"val1.PNG","type":"image/png","storage":"local"}	\N	\N
294	329	image	10	{"idIma":10,"nomIma":"valeur","fichierIma":"1f5dfd26-c544-4a42-8679-f4aefcf182d9","galerie":[9]}	{"fichierIma":"1f5dfd26-c544-4a42-8679-f4aefcf182d9"}	\N	\N
295	330	directus_fields	107	{"id":107,"collection":"image","field":"fichierIma","special":["file"],"interface":"file-image","options":null,"display":"image","display_options":{"circle":true},"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"image","field":"fichierIma","display":"image","display_options":{"circle":true}}	\N	\N
296	331	directus_fields	108	{"sort":13,"interface":"file-image","special":["file"],"collection":"partenaire","field":"logoPart"}	{"sort":13,"interface":"file-image","special":["file"],"collection":"partenaire","field":"logoPart"}	\N	\N
297	332	directus_files	8030abef-b8a6-4874-94fd-2649a770bfa2	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
298	333	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":null,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2"}	\N	\N
299	334	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
300	335	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]}	{"status":true}	\N	\N
301	336	directus_fields	109	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idAut","collection":"auteur"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idAut","collection":"auteur"}	\N	\N
302	337	directus_collections	auteur	{"singleton":false,"collection":"auteur"}	{"singleton":false,"collection":"auteur"}	\N	\N
303	338	directus_fields	110	{"sort":2,"interface":"input","special":null,"collection":"auteur","field":"nomPrenomAut"}	{"sort":2,"interface":"input","special":null,"collection":"auteur","field":"nomPrenomAut"}	\N	\N
304	339	directus_fields	111	{"sort":3,"interface":"input","special":null,"collection":"auteur","field":"emailAut"}	{"sort":3,"interface":"input","special":null,"collection":"auteur","field":"emailAut"}	\N	\N
305	340	directus_fields	112	{"sort":4,"interface":"file-image","special":["file"],"collection":"auteur","field":"photoAut"}	{"sort":4,"interface":"file-image","special":["file"],"collection":"auteur","field":"photoAut"}	\N	\N
306	341	directus_fields	113	{"sort":5,"interface":"input","special":null,"collection":"auteur","field":"nomPrenomAut"}	{"sort":5,"interface":"input","special":null,"collection":"auteur","field":"nomPrenomAut"}	\N	\N
307	342	directus_fields	114	{"sort":6,"interface":"input-multiline","special":null,"collection":"auteur","field":"bibliographieAut"}	{"sort":6,"interface":"input-multiline","special":null,"collection":"auteur","field":"bibliographieAut"}	\N	\N
308	343	directus_fields	115	{"sort":7,"interface":"input","special":null,"collection":"auteur","field":"emailAut"}	{"sort":7,"interface":"input","special":null,"collection":"auteur","field":"emailAut"}	\N	\N
312	347	directus_files	b8c1304b-4b6f-4be4-9f51-9cdcb4fcc1e6	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	\N	\N
310	345	directus_fields	117	{"sort":8,"special":["o2m"],"interface":"list-o2m","collection":"auteur","field":"article"}	{"sort":8,"special":["o2m"],"interface":"list-o2m","collection":"auteur","field":"article"}	\N	\N
311	346	directus_fields	116	{"id":116,"collection":"article","field":"auteur","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{nomPrenomAut}}"},"display":"raw","display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"article","field":"auteur","interface":"select-dropdown-m2o","options":{"template":"{{nomPrenomAut}}"},"display":"raw"}	\N	\N
313	348	directus_files	9d716402-09b4-461a-8bd5-a39d827feb7d	{"title":"Auteur2","filename_download":"auteur2.jpg","type":"image/jpeg","storage":"local"}	{"title":"Auteur2","filename_download":"auteur2.jpg","type":"image/jpeg","storage":"local"}	\N	\N
316	351	auteur	1	{"bibliographieAut":"Marie Dupont est professeure agrégée de littérature française à l'Université de Paris-Sorbonne. Ses recherches portent principalement sur la littérature du XIXe siècle, en particulier sur les œuvres de Gustave Flaubert et Émile Zola. Elle est l'auteur de plusieurs ouvrages sur le réalisme et le naturalisme en littérature. Son article sur les représentations du travail ouvrier dans les romans de Zola a été publié dans la revue Études Littéraires.","nomPrenomAut":"Marie Dupont","photoAut":"9d716402-09b4-461a-8bd5-a39d827feb7d","emailAut":"mariedupont@gmail.com","article":{"create":[],"update":[{"auteur":"+","idArt":1},{"auteur":"+","idArt":2}],"delete":[]}}	{"bibliographieAut":"Marie Dupont est professeure agrégée de littérature française à l'Université de Paris-Sorbonne. Ses recherches portent principalement sur la littérature du XIXe siècle, en particulier sur les œuvres de Gustave Flaubert et Émile Zola. Elle est l'auteur de plusieurs ouvrages sur le réalisme et le naturalisme en littérature. Son article sur les représentations du travail ouvrier dans les romans de Zola a été publié dans la revue Études Littéraires.","nomPrenomAut":"Marie Dupont","photoAut":"9d716402-09b4-461a-8bd5-a39d827feb7d","emailAut":"mariedupont@gmail.com","article":{"create":[],"update":[{"auteur":"+","idArt":1},{"auteur":"+","idArt":2}],"delete":[]}}	\N	\N
314	349	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":1,"abonne":[]}	{"auteur":1}	316	\N
315	350	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":1,"abonne":[]}	{"auteur":1}	316	\N
317	352	directus_fields	112	{"id":112,"collection":"auteur","field":"photoAut","special":["file"],"interface":"file-image","options":null,"display":"image","display_options":{"circle":true},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"auteur","field":"photoAut","display":"image","display_options":{"circle":true}}	\N	\N
318	353	directus_files	76f168ff-4479-46fd-b762-50cddd31c05d	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	\N	\N
319	354	auteur	2	{"photoAut":"76f168ff-4479-46fd-b762-50cddd31c05d","bibliographieAut":"Jean-Pierre Martin est développeur web full stack avec plus de dix ans d'expérience dans les technologies JavaScript, React, et Node.js. Il est également l'auteur du blog Code With Passion, où il partage des tutoriels et des astuces pour les développeurs. Son dernier article, \\"Optimiser le rendu des composants React avec useMemo\\", a été largement partagé dans la communauté tech.","nomPrenomAut":"Jean-Pierre Martin","emailAut":"jeanpierre@gmail.com"}	{"photoAut":"76f168ff-4479-46fd-b762-50cddd31c05d","bibliographieAut":"Jean-Pierre Martin est développeur web full stack avec plus de dix ans d'expérience dans les technologies JavaScript, React, et Node.js. Il est également l'auteur du blog Code With Passion, où il partage des tutoriels et des astuces pour les développeurs. Son dernier article, \\"Optimiser le rendu des composants React avec useMemo\\", a été largement partagé dans la communauté tech.","nomPrenomAut":"Jean-Pierre Martin","emailAut":"jeanpierre@gmail.com"}	\N	\N
320	355	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"auteur":"2"}	\N	\N
321	356	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"auteur":"2"}	\N	\N
322	358	directus_fields	118	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idEqu","collection":"equipe"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idEqu","collection":"equipe"}	\N	\N
323	359	directus_collections	equipe	{"singleton":false,"collection":"equipe"}	{"singleton":false,"collection":"equipe"}	\N	\N
324	360	directus_fields	119	{"sort":2,"interface":"input","special":null,"collection":"equipe","field":"nomEqu"}	{"sort":2,"interface":"input","special":null,"collection":"equipe","field":"nomEqu"}	\N	\N
325	361	directus_fields	120	{"sort":3,"interface":"input-multiline","special":null,"collection":"equipe","field":"descriptionEqu"}	{"sort":3,"interface":"input-multiline","special":null,"collection":"equipe","field":"descriptionEqu"}	\N	\N
326	362	directus_fields	121	{"sort":2,"interface":"file-image","special":["file"],"collection":"equipe","field":"photoEqu"}	{"sort":2,"interface":"file-image","special":["file"],"collection":"equipe","field":"photoEqu"}	\N	\N
327	363	directus_fields	122	{"sort":3,"interface":"input","special":null,"collection":"equipe","field":"nomEqu"}	{"sort":3,"interface":"input","special":null,"collection":"equipe","field":"nomEqu"}	\N	\N
328	364	directus_fields	123	{"sort":4,"interface":"input-multiline","special":null,"collection":"equipe","field":"descriptionEqu"}	{"sort":4,"interface":"input-multiline","special":null,"collection":"equipe","field":"descriptionEqu"}	\N	\N
329	365	directus_fields	124	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idFon","collection":"fonction"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idFon","collection":"fonction"}	\N	\N
330	366	directus_collections	fonction	{"singleton":false,"collection":"fonction"}	{"singleton":false,"collection":"fonction"}	\N	\N
331	367	directus_fields	125	{"sort":2,"interface":"input","special":null,"collection":"fonction","field":"titreFon"}	{"sort":2,"interface":"input","special":null,"collection":"fonction","field":"titreFon"}	\N	\N
332	368	directus_fields	126	{"sort":3,"interface":"input","special":null,"collection":"fonction","field":"desponibiliteFon"}	{"sort":3,"interface":"input","special":null,"collection":"fonction","field":"desponibiliteFon"}	\N	\N
333	369	directus_fields	127	{"sort":4,"special":["m2o"],"collection":"fonction","field":"equipe"}	{"sort":4,"special":["m2o"],"collection":"fonction","field":"equipe"}	\N	\N
334	370	directus_fields	128	{"sort":5,"special":["o2m"],"interface":"list-o2m","collection":"equipe","field":"fonction"}	{"sort":5,"special":["o2m"],"interface":"list-o2m","collection":"equipe","field":"fonction"}	\N	\N
335	371	fonction	1	{"titreFon":"Président "}	{"titreFon":"Président "}	\N	\N
336	372	fonction	2	{"titreFon":"PCA"}	{"titreFon":"PCA"}	\N	\N
337	373	fonction	3	{"titreFon":"Responsable Administratif"}	{"titreFon":"Responsable Administratif"}	\N	\N
339	375	fonction	5	{"titreFon":"Comissaire Aux Comptes"}	{"titreFon":"Comissaire Aux Comptes"}	\N	\N
340	376	fonction	6	{"titreFon":"Conseiller"}	{"titreFon":"Conseiller"}	\N	\N
338	374	fonction	4	{"titreFon":"Trésorier "}	{"titreFon":"Trésorier "}	\N	\N
341	377	directus_permissions	30	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"auteur","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"auteur","action":"read"}	\N	\N
342	378	directus_permissions	31	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"fonction","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"fonction","action":"read"}	\N	\N
343	379	directus_permissions	32	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"equipe","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"equipe","action":"read"}	\N	\N
344	380	directus_permissions	33	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"typePartenariat_partenaire","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"typePartenariat_partenaire","action":"read"}	\N	\N
345	382	directus_fields	128	{"id":128,"collection":"equipe","field":"fonction","special":["o2m"],"interface":"list-o2m","options":{"template":"{{titreFon}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"equipe","field":"fonction","options":{"template":"{{titreFon}}"},"display":"related-values"}	\N	\N
346	383	directus_files	c2a271a3-f814-4bdd-aa8f-c3fbbe89863f	{"title":"Mis1","filename_download":"mis1.PNG","type":"image/png","storage":"local"}	{"title":"Mis1","filename_download":"mis1.PNG","type":"image/png","storage":"local"}	\N	\N
348	385	equipe	1	{"photoEqu":"c2a271a3-f814-4bdd-aa8f-c3fbbe89863f","nomEqu":"ANNA Fanjava","fonction":{"create":[],"update":[{"equipe":"+","idFon":1}],"delete":[]}}	{"photoEqu":"c2a271a3-f814-4bdd-aa8f-c3fbbe89863f","nomEqu":"ANNA Fanjava","fonction":{"create":[],"update":[{"equipe":"+","idFon":1}],"delete":[]}}	\N	\N
347	384	fonction	1	{"idFon":1,"titreFon":"Président ","desponibiliteFon":null,"equipe":1}	{"equipe":1}	348	\N
349	386	directus_files	6ae25356-56e6-4789-80fc-f55c66db0828	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	{"title":"Auteur3","filename_download":"auteur3.jpg","type":"image/jpeg","storage":"local"}	\N	\N
351	388	equipe	2	{"photoEqu":"6ae25356-56e6-4789-80fc-f55c66db0828","nomEqu":"ANDO","fonction":{"create":[],"update":[{"equipe":"+","idFon":2}],"delete":[]}}	{"photoEqu":"6ae25356-56e6-4789-80fc-f55c66db0828","nomEqu":"ANDO","fonction":{"create":[],"update":[{"equipe":"+","idFon":2}],"delete":[]}}	\N	\N
350	387	fonction	2	{"idFon":2,"titreFon":"PCA","desponibiliteFon":null,"equipe":2}	{"equipe":2}	351	\N
352	389	directus_files	d3a2837a-5baa-4473-b2f8-bdb0e67f3c02	{"title":"Auteur2","filename_download":"auteur2.jpg","type":"image/jpeg","storage":"local"}	{"title":"Auteur2","filename_download":"auteur2.jpg","type":"image/jpeg","storage":"local"}	\N	\N
354	391	equipe	3	{"photoEqu":"d3a2837a-5baa-4473-b2f8-bdb0e67f3c02","nomEqu":"FORESTINE","fonction":{"create":[],"update":[{"equipe":"+","idFon":3}],"delete":[]}}	{"photoEqu":"d3a2837a-5baa-4473-b2f8-bdb0e67f3c02","nomEqu":"FORESTINE","fonction":{"create":[],"update":[{"equipe":"+","idFon":3}],"delete":[]}}	\N	\N
353	390	fonction	3	{"idFon":3,"titreFon":"Responsable Administratif","desponibiliteFon":null,"equipe":3}	{"equipe":3}	354	\N
355	392	directus_fields	127	{"id":127,"collection":"fonction","field":"equipe","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{nomEqu}}"},"display":"raw","display_options":null,"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"fonction","field":"equipe","interface":"select-dropdown-m2o","options":{"template":"{{nomEqu}}"},"display":"raw"}	\N	\N
356	393	fonction	1	{"idFon":1,"titreFon":"Président ","desponibiliteFon":null,"equipe":2}	{"equipe":2}	\N	\N
357	394	fonction	4	{"idFon":4,"titreFon":"Trésorier ","desponibiliteFon":null,"equipe":3}	{"equipe":3}	\N	\N
358	395	directus_fields	128	{"id":128,"collection":"equipe","field":"fonction","special":["o2m"],"interface":null,"options":{"template":"{{titreFon}}"},"display":"related-values","display_options":null,"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"equipe","field":"fonction","interface":null,"display":"related-values"}	\N	\N
359	396	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","accountability":"all","trigger":"event","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]}}	{"name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","accountability":"all","trigger":"event","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]}}	\N	\N
360	397	directus_operations	635c826c-3165-43ee-bb5f-277b4532c25f	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"Log dans la console","key":"log_77whv","type":"log","options":{"message":"status est vrai"}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"Log dans la console","key":"log_77whv","type":"log","options":{"message":"status est vrai"}}	362	\N
917	969	directus_fields	142	{"sort":5,"special":["m2m"],"interface":"list-m2m","collection":"avis","field":"abonne_article"}	{"sort":5,"special":["m2m"],"interface":"list-m2m","collection":"avis","field":"abonne_article"}	\N	\N
918	970	directus_fields	143	{"sort":2,"hidden":true,"collection":"abonne_article_avis","field":"abonne_article_id"}	{"sort":2,"hidden":true,"collection":"abonne_article_avis","field":"abonne_article_id"}	\N	\N
919	971	directus_fields	144	{"sort":3,"hidden":true,"collection":"abonne_article_avis","field":"avis_idAvis"}	{"sort":3,"hidden":true,"collection":"abonne_article_avis","field":"avis_idAvis"}	\N	\N
361	398	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_r6zlw","type":"log","options":{"message":"status est faux"}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_r6zlw","type":"log","options":{"message":"status est faux"}}	362	\N
363	400	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","5a041420-1a66-47d6-ab00-131c9d586a65","635c826c-3165-43ee-bb5f-277b4532c25f"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
362	399	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":19,"position_y":1,"name":"Condition","key":"condition_wyp6p","type":"condition","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"Log dans la console","key":"log_77whv","type":"log","options":{"message":"status est vrai"}},"reject":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_r6zlw","type":"log","options":{"message":"status est faux"}}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":19,"position_y":1,"name":"Condition","key":"condition_wyp6p","type":"condition","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"Log dans la console","key":"log_77whv","type":"log","options":{"message":"status est vrai"}},"reject":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_r6zlw","type":"log","options":{"message":"status est faux"}}}	363	\N
364	401	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
365	402	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
366	403	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last}}"}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last}}"}}	367	\N
367	404	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"},"resolve":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last}}"}}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":37,"position_y":1,"name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"},"resolve":{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last}}"}}}	369	\N
368	405	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	369	\N
502	543	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"id":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","name":"Log dans la console","key":"log_bmcab","type":"log","position_x":73,"position_y":1,"options":{"message":"donnee est {{$last.data}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.628Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"donnee est {{$last.data}}"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	503	\N
503	544	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        data:data\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        data:data\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	504	\N
370	408	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","344ebb8c-8190-4ed2-8698-800b21a4efb8","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
369	406	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	370	\N
371	409	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
372	410	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
373	411	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
374	412	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
375	413	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	{"id":"344ebb8c-8190-4ed2-8698-800b21a4efb8","name":"Log dans la console","key":"log_o2gdy","type":"log","position_x":55,"position_y":1,"options":{"message":"{{$last}}"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.793Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	376	\N
376	414	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"},"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	378	\N
377	415	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	378	\N
379	417	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","344ebb8c-8190-4ed2-8698-800b21a4efb8","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
378	416	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Condition","key":"condition_wyp6p","type":"condition","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	379	\N
380	418	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
381	419	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"}},{"operation":"344ebb8c-8190-4ed2-8698-800b21a4efb8","key":"log_o2gdy","status":"resolve","options":{"message":{"date_de_partage":"2024-09-04T21:33:57.621Z"}}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04T21:33:57.621Z"},"log_o2gdy":null}}	\N	\N	\N
382	420	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	{"id":"344ebb8c-8190-4ed2-8698-800b21a4efb8","name":"Log dans la console","key":"log_o2gdy","type":"log","position_x":55,"position_y":1,"options":{"message":"{{$last.date_de_partage}}"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.793Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last.date_de_partage}}"},"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	383	\N
383	421	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"},"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	385	\N
384	422	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	385	\N
385	423	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	386	\N
432	471	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	433	\N
504	545	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	506	\N
386	424	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","344ebb8c-8190-4ed2-8698-800b21a4efb8","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
387	425	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
388	426	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
389	427	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
390	428	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"}},{"operation":"344ebb8c-8190-4ed2-8698-800b21a4efb8","key":"log_o2gdy","status":"resolve","options":{"message":"2024-09-04T21:39:38.977Z"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04T21:39:38.977Z"},"log_o2gdy":null}}	\N	\N	\N
391	429	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	{"id":"344ebb8c-8190-4ed2-8698-800b21a4efb8","name":"Log dans la console","key":"log_o2gdy","type":"log","position_x":55,"position_y":1,"options":{"message":"{{$last.date_de_partage}}      {{$trigger.keys[0]}}"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.793Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_o2gdy","type":"log","options":{"message":"{{$last.date_de_partage}}      {{$trigger.keys[0]}}"},"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	392	\N
392	430	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"},"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	394	\N
393	431	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	394	\N
395	433	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","344ebb8c-8190-4ed2-8698-800b21a4efb8","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
394	432	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	395	\N
396	434	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
397	435	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
398	436	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
399	437	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\tconst dateNow = new Date().toISOString();\\n\\treturn {\\n        date_de_partage:dateNow\\n    };\\n}"}},{"operation":"344ebb8c-8190-4ed2-8698-800b21a4efb8","key":"log_o2gdy","status":"resolve","options":{"message":"2024-09-04T21:42:11.719Z      1"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04T21:42:11.719Z"},"log_o2gdy":null}}	\N	\N	\N
400	438	directus_operations	344ebb8c-8190-4ed2-8698-800b21a4efb8	{"id":"344ebb8c-8190-4ed2-8698-800b21a4efb8","name":"Log dans la console","key":"log_o2gdy","type":"log","position_x":55,"position_y":1,"options":{"message":"{{$last.date_de_partage}}      {{$trigger.keys[0]}}"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.793Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	401	\N
921	973	avis	1	{"typeAvis":"pas_utile","contenuAvis":"Ratsy","abonne_article":{"create":[{"avis_idAvis":"+","abonne_article_id":{"id":1}}],"update":[],"delete":[]}}	{"typeAvis":"pas_utile","contenuAvis":"Ratsy","abonne_article":{"create":[{"avis_idAvis":"+","abonne_article_id":{"id":1}}],"update":[],"delete":[]}}	\N	\N
922	975	directus_fields	145	{"sort":4,"interface":"datetime","special":null,"collection":"abonne_article","field":"dateLecture"}	{"sort":4,"interface":"datetime","special":null,"collection":"abonne_article","field":"dateLecture"}	\N	\N
923	976	directus_fields	146	{"sort":5,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"Super utile","value":"super_utile"},{"text":"Utile","value":"utile"},{"text":"Pas utile","value":"pas_utile"}]},"collection":"abonne_article","field":"avis"}	{"sort":5,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"Super utile","value":"super_utile"},{"text":"Utile","value":"utile"},{"text":"Pas utile","value":"pas_utile"}]},"collection":"abonne_article","field":"avis"}	\N	\N
401	439	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"},"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"},"resolve":"344ebb8c-8190-4ed2-8698-800b21a4efb8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	403	\N
402	440	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	403	\N
404	442	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","344ebb8c-8190-4ed2-8698-800b21a4efb8","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
403	441	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	404	\N
405	443	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
406	444	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
407	445	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
408	446	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"}},{"operation":"344ebb8c-8190-4ed2-8698-800b21a4efb8","key":"log_o2gdy","status":"resolve","options":{"message":"2024-09-04      1"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04"},"log_o2gdy":null}}	\N	\N	\N
409	447	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Mettre à jour les données","key":"item_update_6685y","type":"item-update","options":{"emitEvents":true,"collection":"article","key":["{{$trigger.keys[0]}}"],"payload":{"datePublicationArt":"{{$last.date_de_partage}}"}}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":55,"position_y":1,"name":"Mettre à jour les données","key":"item_update_6685y","type":"item-update","options":{"emitEvents":true,"collection":"article","key":["{{$trigger.keys[0]}}"],"payload":{"datePublicationArt":"{{$last.date_de_partage}}"}}}	410	\N
410	448	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"},"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	412	\N
411	449	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	412	\N
413	452	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["08607050-8ae9-4dbf-bb2c-5e1220b3801a","528b8f1e-e02d-4721-bd2a-85336934678f","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
412	450	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	413	\N
414	453	directus_operations	044ef460-3f1c-49df-8d10-07465bb55a05	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_sjx04","type":"log","options":{"message":"Mis a jour réussie"}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_sjx04","type":"log","options":{"message":"Mis a jour réussie"}}	416	\N
415	454	directus_operations	211d20c7-f730-405d-a92e-7292bb7ec4d8	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":73,"position_y":17,"name":"Log dans la console","key":"log_wawc6","type":"log","options":{"message":"Erreur lors de la mis a jour"}}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","position_x":73,"position_y":17,"name":"Log dans la console","key":"log_wawc6","type":"log","options":{"message":"Erreur lors de la mis a jour"}}	416	\N
416	455	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	{"id":"528b8f1e-e02d-4721-bd2a-85336934678f","name":"Mettre à jour les données","key":"item_update_6685y","type":"item-update","position_x":55,"position_y":1,"options":{"emitEvents":true,"collection":"article","key":["{{$trigger.keys[0]}}"],"payload":{"datePublicationArt":"{{$last.date_de_partage}}"}},"resolve":"044ef460-3f1c-49df-8d10-07465bb55a05","reject":"211d20c7-f730-405d-a92e-7292bb7ec4d8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:49:55.003Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"044ef460-3f1c-49df-8d10-07465bb55a05","reject":"211d20c7-f730-405d-a92e-7292bb7ec4d8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	417	\N
505	546	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	506	\N
417	456	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"},"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	419	\N
418	457	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"status est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	419	\N
420	459	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["044ef460-3f1c-49df-8d10-07465bb55a05","08607050-8ae9-4dbf-bb2c-5e1220b3801a","211d20c7-f730-405d-a92e-7292bb7ec4d8","528b8f1e-e02d-4721-bd2a-85336934678f","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
419	458	directus_operations	5a041420-1a66-47d6-ab00-131c9d586a65	{"id":"5a041420-1a66-47d6-ab00-131c9d586a65","name":"Condition","key":"condition_wyp6p","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}},"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.402Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","reject":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	420	\N
421	460	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
422	461	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
423	462	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-12","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
424	463	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-04","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"datePublicationArt":"2024-09-04"}	\N	\N
426	465	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"status est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"datePublicationArt":"2024-09-04"},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
430	469	directus_operations	b306bb7d-fe65-4d41-b00c-fa80a9d55c02	{"id":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","name":"recuperer date aujourd'hui","key":"recuperer_date_aujourd_hui","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"},"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:29:04.837Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"528b8f1e-e02d-4721-bd2a-85336934678f","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	432	\N
431	470	directus_operations	08607050-8ae9-4dbf-bb2c-5e1220b3801a	{"id":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","name":"Log dans la console","key":"log_r6zlw","type":"log","position_x":37,"position_y":17,"options":{"message":"publie est faux"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:24:08.287Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_r6zlw","type":"log","options":{"message":"publie est faux"},"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	432	\N
433	472	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"id":"e9e011cd-5670-4e6d-ba47-770bc56913cf","name":"modifierDate_article","icon":"bolt","color":null,"description":"automatisation de date de partage de Article","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create","items.update"],"collections":["article"]},"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","date_created":"2024-09-04T21:04:53.693Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["044ef460-3f1c-49df-8d10-07465bb55a05","08607050-8ae9-4dbf-bb2c-5e1220b3801a","211d20c7-f730-405d-a92e-7292bb7ec4d8","528b8f1e-e02d-4721-bd2a-85336934678f","5a041420-1a66-47d6-ab00-131c9d586a65","b306bb7d-fe65-4d41-b00c-fa80a9d55c02"]}	{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65"}	\N	\N
425	464	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"}},{"operation":"528b8f1e-e02d-4721-bd2a-85336934678f","key":"item_update_6685y","status":"resolve","options":{"emitEvents":true,"collection":"article","key":["2"],"payload":{"datePublicationArt":"2024-09-04"}}},{"operation":"044ef460-3f1c-49df-8d10-07465bb55a05","key":"log_sjx04","status":"resolve","options":{"message":"Mis a jour réussie"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04"},"item_update_6685y":"2","log_sjx04":null}}	\N	\N	\N
427	466	directus_operations	044ef460-3f1c-49df-8d10-07465bb55a05	{"id":"044ef460-3f1c-49df-8d10-07465bb55a05","name":"Log dans la console","key":"log_sjx04","type":"log","position_x":73,"position_y":1,"options":{"message":"Mis a jour réussie"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:50:42.548Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	429	\N
428	467	directus_operations	211d20c7-f730-405d-a92e-7292bb7ec4d8	{"id":"211d20c7-f730-405d-a92e-7292bb7ec4d8","name":"Log dans la console","key":"log_wawc6","type":"log","position_x":73,"position_y":17,"options":{"message":"Erreur lors de la mis a jour"},"resolve":null,"reject":null,"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:50:42.598Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	429	\N
429	468	directus_operations	528b8f1e-e02d-4721-bd2a-85336934678f	{"id":"528b8f1e-e02d-4721-bd2a-85336934678f","name":"Mettre à jour les données","key":"item_update_6685y","type":"item-update","position_x":55,"position_y":1,"options":{"emitEvents":true,"collection":"article","key":["{{$trigger.keys[0]}}"],"payload":{"datePublicationArt":"{{$last.date_de_partage}}"}},"resolve":"044ef460-3f1c-49df-8d10-07465bb55a05","reject":"211d20c7-f730-405d-a92e-7292bb7ec4d8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf","date_created":"2024-09-04T21:49:55.003Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"044ef460-3f1c-49df-8d10-07465bb55a05","reject":"211d20c7-f730-405d-a92e-7292bb7ec4d8","flow":"e9e011cd-5670-4e6d-ba47-770bc56913cf"}	430	\N
434	473	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
435	474	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
436	475	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-08-26","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
437	476	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":2,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-04","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"datePublicationArt":"2024-09-04"}	\N	\N
438	478	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"datePublicationArt":"2024-09-04"},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
439	477	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"}},{"operation":"528b8f1e-e02d-4721-bd2a-85336934678f","key":"item_update_6685y","status":"resolve","options":{"emitEvents":true,"collection":"article","key":["1"],"payload":{"datePublicationArt":"2024-09-04"}}},{"operation":"044ef460-3f1c-49df-8d10-07465bb55a05","key":"log_sjx04","status":"resolve","options":{"message":"Mis a jour réussie"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04"},"item_update_6685y":"1","log_sjx04":null}}	\N	\N	\N
440	479	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-02","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"datePublicationArt":"2024-09-02"}	\N	\N
444	483	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-02","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"publie":true}	\N	\N
445	484	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-04","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"datePublicationArt":"2024-09-04"}	\N	\N
441	480	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"datePublicationArt":"2024-09-02"},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
442	481	article	2	{"idArt":2,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":1,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":false,"datePublicationArt":"2024-09-02","idGalerie":9,"imageArt":"1be0e30f-ce55-4244-bf0b-dfb3bd9332b0","auteur":2,"abonne":[]}	{"publie":false}	\N	\N
443	482	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":false},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.publie\\" must be [true]"}],"log_r6zlw":null}}	\N	\N	\N
446	485	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"resolve","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"b306bb7d-fe65-4d41-b00c-fa80a9d55c02","key":"recuperer_date_aujourd_hui","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\t\\n    const now = new Date();\\n    const year = now.getFullYear();\\n    const month = String(now.getMonth() + 1).padStart(2, '0'); \\n    const day = String(now.getDate()).padStart(2, '0');\\n    const formattedDate = `${year}-${month}-${day}`;\\n    \\n\\treturn {\\n        date_de_partage:formattedDate\\n    };\\n}"}},{"operation":"528b8f1e-e02d-4721-bd2a-85336934678f","key":"item_update_6685y","status":"resolve","options":{"emitEvents":true,"collection":"article","key":["2"],"payload":{"datePublicationArt":"2024-09-04"}}},{"operation":"044ef460-3f1c-49df-8d10-07465bb55a05","key":"log_sjx04","status":"resolve","options":{"message":"Mis a jour réussie"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"publie":true},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":null,"recuperer_date_aujourd_hui":{"date_de_partage":"2024-09-04"},"item_update_6685y":"2","log_sjx04":null}}	\N	\N	\N
447	486	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"datePublicationArt":"2024-09-04"},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
448	487	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","accountability":"all","trigger":"event","options":{"type":"action","scope":["items.create"],"collections":["partenaire"]}}	{"name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","accountability":"all","trigger":"event","options":{"type":"action","scope":["items.create"],"collections":["partenaire"]}}	\N	\N
449	488	directus_operations	00891062-d5dc-4ebb-961b-b97e800538df	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}	450	\N
450	489	directus_operations	71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lancer le script","key":"exec_wvslt","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lancer le script","key":"exec_wvslt","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}}	452	\N
451	490	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_wb9qj","type":"log","options":{"message":"status n'est pas active "}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_wb9qj","type":"log","options":{"message":"status n'est pas active "}}	452	\N
513	554	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	514	\N
514	555	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	516	\N
515	556	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	516	\N
453	492	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.create"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["00891062-d5dc-4ebb-961b-b97e800538df","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","92a16774-55e7-466b-a5a2-4a0b6ecbd714"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
452	491	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":19,"position_y":1,"name":"Condition","key":"condition_jdju0","type":"condition","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"reject":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_wb9qj","type":"log","options":{"message":"status n'est pas active "}},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lancer le script","key":"exec_wvslt","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":19,"position_y":1,"name":"Condition","key":"condition_jdju0","type":"condition","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"reject":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":17,"name":"Log dans la console","key":"log_wb9qj","type":"log","options":{"message":"status n'est pas active "}},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lancer le script","key":"exec_wvslt","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Log dans la console","key":"log_sknm8","type":"log","options":{"message":"{{$last.emailData}}"}}}}	453	\N
454	493	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
455	494	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
456	495	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["00891062-d5dc-4ebb-961b-b97e800538df","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","92a16774-55e7-466b-a5a2-4a0b6ecbd714"]}	{"name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]}}	\N	\N
457	496	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
458	497	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
459	498	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
460	499	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","key":"exec_wvslt","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"}},{"operation":"00891062-d5dc-4ebb-961b-b97e800538df","key":"log_sknm8","status":"resolve","options":{"message":null}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"exec_wvslt":{"emailData":null},"log_sknm8":null}}	\N	\N	\N
461	500	directus_operations	00891062-d5dc-4ebb-961b-b97e800538df	{"id":"00891062-d5dc-4ebb-961b-b97e800538df","name":"Log dans la console","key":"log_sknm8","type":"log","position_x":55,"position_y":1,"options":{"message":"{{$last.emailData}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.439Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	462	\N
462	501	directus_operations	71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2	{"id":"71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","name":"Lancer le script","key":"exec_wvslt","type":"exec","position_x":37,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":"00891062-d5dc-4ebb-961b-b97e800538df","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.466Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_wvslt","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":"00891062-d5dc-4ebb-961b-b97e800538df","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	464	\N
463	502	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	464	\N
465	504	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["00891062-d5dc-4ebb-961b-b97e800538df","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","92a16774-55e7-466b-a5a2-4a0b6ecbd714"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
464	503	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	465	\N
466	505	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
470	509	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}	471	\N
485	526	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
484	525	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	485	\N
507	548	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
467	506	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
468	507	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
469	508	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"71bf29e3-f74d-4f1f-a2f3-032c5d90e5b2","key":"exec_wvslt","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"}},{"operation":"00891062-d5dc-4ebb-961b-b97e800538df","key":"log_sknm8","status":"resolve","options":{"message":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null}}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"exec_wvslt":{"emailData":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null}},"log_sknm8":null}}	\N	\N	\N
471	510	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}}	472	\N
472	511	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":37,"position_y":1,"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData}}"}}}}	474	\N
473	512	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	474	\N
475	516	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
474	513	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	475	\N
476	517	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
479	520	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}}}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"emailData":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}}},"log_bmcab":null}}	\N	\N	\N
489	530	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
477	518	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
478	519	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
480	521	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"id":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","name":"Log dans la console","key":"log_bmcab","type":"log","position_x":73,"position_y":1,"options":{"message":"{{$last.emailData}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.628Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	481	\N
481	522	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	482	\N
482	523	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	484	\N
483	524	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	484	\N
486	527	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"emailPart":"tsifily@gmail.com"}	\N	\N
487	528	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"emailPart":"tsifily@gmail.com"},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_wb9qj":null}}	\N	\N	\N
488	529	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
496	537	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	497	\N
490	531	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
492	533	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"id":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","name":"Log dans la console","key":"log_bmcab","type":"log","position_x":73,"position_y":1,"options":{"message":"{{$last.emailData.emailPart}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.628Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"{{$last.emailData.emailPart}}"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	493	\N
493	534	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	494	\N
494	535	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	496	\N
495	536	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	496	\N
497	538	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
524	565	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	526	\N
525	566	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	526	\N
527	568	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
526	567	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	527	\N
491	532	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data.emailPart\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":null}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"emailData":null},"log_bmcab":null}}	\N	\N	\N
498	539	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
499	540	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
500	541	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
501	542	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        emailData:data\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":"undefined"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"emailData":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}}},"log_bmcab":null}}	\N	\N	\N
763	810	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	764	\N
506	547	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	507	\N
508	549	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
509	550	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
510	551	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
511	552	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n\\treturn {\\n        data:data\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":"donnee est {\\"$trigger\\":{\\"event\\":\\"partenaire.items.update\\",\\"payload\\":{\\"status\\":true},\\"keys\\":[\\"1\\"],\\"collection\\":\\"partenaire\\"},\\"$last\\":{\\"idPart\\":1,\\"nomPart\\":\\"Fonds Urgence et Développement \\",\\"descriptionPart\\":\\"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.\\",\\"dateDebutPart\\":\\"2024-08-29\\",\\"contactPart\\":null,\\"emailPart\\":\\"tsifily@gmail.com\\",\\"adressePart\\":null,\\"siteWebPart\\":null,\\"nomPrenomResponsablePart\\":null,\\"status\\":true,\\"logoPart\\":\\"8030abef-b8a6-4874-94fd-2649a770bfa2\\",\\"typePartenariat\\":[1,2]},\\"$accountability\\":{\\"role\\":\\"53bbdf30-9b29-4498-9abb-43c28e6e2ad2\\",\\"user\\":\\"4ce4ad2f-33ca-4ea5-a4fd-50e479010314\\",\\"roles\\":[\\"53bbdf30-9b29-4498-9abb-43c28e6e2ad2\\"],\\"admin\\":true,\\"app\\":true,\\"ip\\":\\"172.19.0.1\\",\\"userAgent\\":\\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36\\",\\"origin\\":\\"http://localhost:8055\\"},\\"$env\\":{},\\"condition_jdju0\\":null,\\"item_read_mw7p0\\":{\\"idPart\\":1,\\"nomPart\\":\\"Fonds Urgence et Développement \\",\\"descriptionPart\\":\\"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.\\",\\"dateDebutPart\\":\\"2024-08-29\\",\\"contactPart\\":null,\\"emailPart\\":\\"tsifily@gmail.com\\",\\"adressePart\\":null,\\"siteWebPart\\":null,\\"nomPrenomResponsablePart\\":null,\\"status\\":true,\\"logoPart\\":\\"8030abef-b8a6-4874-94fd-2649a770bfa2\\",\\"typePartenariat\\":[1,2]}}"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}}},"log_bmcab":null}}	\N	\N	\N
512	553	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"id":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","name":"Log dans la console","key":"log_bmcab","type":"log","position_x":73,"position_y":1,"options":{"message":"donnee est {{$last.email}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.628Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_bmcab","type":"log","options":{"message":"donnee est {{$last.email}}"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	513	\N
517	558	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
516	557	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	517	\N
518	559	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
519	560	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
520	561	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
521	562	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":"donnee est null"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":null},"log_bmcab":null}}	\N	\N	\N
522	563	directus_operations	6c5a6e14-6ef1-4675-a656-dcb0e8416fa5	{"id":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","name":"Log dans la console","key":"log_bmcab","type":"log","position_x":73,"position_y":1,"options":{"message":"donnee est {{$last.email}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.628Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	523	\N
523	564	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	524	\N
528	569	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":null,"typePartenariat":[3,4]}	{"status":false}	\N	\N
529	570	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["2"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
530	571	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]}	{"status":true}	\N	\N
531	572	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["2"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":"donnee est null"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["2"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":null,"adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]},"exec_f8esg":{"email":null},"log_bmcab":null}}	\N	\N	\N
532	573	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":"test@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]}	{"emailPart":"test@gmail.com"}	\N	\N
533	574	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"emailPart":"test@gmail.com"},"keys":["2"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_wb9qj":null}}	\N	\N	\N
534	575	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":"test@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":null,"typePartenariat":[3,4]}	{"status":false}	\N	\N
535	576	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["2"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
536	577	partenaire	2	{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":"test@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]}	{"status":true}	\N	\N
543	585	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
537	578	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["2"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"6c5a6e14-6ef1-4675-a656-dcb0e8416fa5","key":"log_bmcab","status":"resolve","options":{"message":"donnee est test@gmail.com"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["2"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":2,"nomPart":"ENI","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":null,"contactPart":null,"emailPart":"test@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":null,"typePartenariat":[3,4]},"exec_f8esg":{"email":"test@gmail.com"},"log_bmcab":null}}	\N	\N	\N
538	579	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}	539	\N
539	580	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	540	\N
540	581	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	542	\N
541	582	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	542	\N
542	583	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	543	\N
544	586	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
545	587	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
546	588	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
547	589	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
548	590	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	549	\N
549	591	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	550	\N
550	592	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	552	\N
551	593	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	552	\N
553	595	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
552	594	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Condition","key":"condition_jdju0","type":"condition","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	553	\N
554	596	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
555	597	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
556	598	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
557	599	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
558	601	abonne	1	{"idAb":1,"emailAbo":"tsifily2@gmail.com","statusAbo":true,"article":[]}	{"emailAbo":"tsifily2@gmail.com"}	\N	\N
559	602	abonne	2	{"emailAbo":"tsifily@gmail.com"}	{"emailAbo":"tsifily@gmail.com"}	\N	\N
560	603	article	1	{"idArt":1,"titreArt":"Les algorithmes de Machine Learning pour la prévision des séries temporelles -Partie I","vuesArt":3,"contenuArt":"Dire que quelque chose a été appris ne signifie pas seulement que cette chose a été saisie et stockée, comme c’est le cas pour les données dans une base de données — elle doit être représentée d’une manière qui peut être mise à profit » (Kaplan, 2017). D’où l’apparition et l’importance de l’apprentissage automatique (machine learning) à l’heure actuelle.\\nLa naissance de l’Intelligence Artificielle (IA)a montré la compréhension des chercheurs sur l’importance de l’apprentissage et de la possibilité de le faire progresser grâce aux nouvelles technologies.\\nDans cet article, nous allons nous concentrer sur les différentes approches utilisées pour prédire la série temporelle.\\nEn effet, l’étude des séries temporelles consiste à analyser des données numériques mesurées à des intervalles réguliers dans le temps. Cette méthode a été utilisée dans de nombreux domaines, notamment en astronomie (on the periodicity of sunspots, 1906), en météorologie (time-series regression of sea level on weather, 1968), en théorie du signal (Noise in FM receivers, 1963), en biologie (the autocorrelation curves of schizophrenic brainwaves and the power spectrum, 1960), en économie (time-series analysis of imports, exports and other economic variables, 1971), etc.\\nLes modèles ou algorithmes de prévision des séries temporelles peuvent toucher entre autres des domaines plus spécifiques de l’humanité tels que : la consommation d’électricité, le cours du pétrole, la population, le rythme cardiaque, le relevé d’un sismographe, le trafic Internet, les ventes de téléphones mobiles, les hauteurs des crues du nil, la température des océans, la concentration en dioxyde de carbone de l’atmosphère, le taux de glucose dans le sang, la côte de popularité du président, etc.\\nAvant l’avènement des outils numériques, l’analyse des séries temporelles était déjà présente. Aujourd’hui, grâce à l’IA et à l’apprentissage automatique, nous disposons de solutions pratiques et hautement efficaces qui surpasse dans la plupart du temps les modèles traditionnels.\\nCes derniers sont en effet basés sur des hypothèses et fournissent des estimations informatisées. Ils utilisent des équations mathématiques pour coder les informations extraites à partir des données. Les représentants les plus connus de ces modèles traditionnels sont: SARIMA (Seasonal ARIMA), ARIMA (AutoRegressive Integrated Moving Average), GARCH, VARMAX (Vector Autoregression Moving-Avérage with eXogenous variables), les modèles génératifs adversatifs.","publie":true,"datePublicationArt":"2024-09-04","idGalerie":9,"imageArt":"b8cfaf5e-1117-49c2-9006-c7fffd42e57a","auteur":2,"abonne":[]}	{"vuesArt":3}	\N	\N
561	604	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"vuesArt":3},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:3000"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
599	644	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	600	\N
562	605	concernant	1	{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}	{"descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. "}	\N	\N
563	606	concernant	1	{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}	{"descriptionCon":"L'ONG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. "}	\N	\N
564	607	concernant	1	{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}	{"descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. "}	\N	\N
565	609	directus_fields	129	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idEve","collection":"evenement"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idEve","collection":"evenement"}	\N	\N
566	610	directus_collections	evenement	{"singleton":false,"collection":"evenement"}	{"singleton":false,"collection":"evenement"}	\N	\N
567	611	directus_fields	130	{"sort":2,"interface":"input","special":null,"collection":"evenement","field":"titreEve"}	{"sort":2,"interface":"input","special":null,"collection":"evenement","field":"titreEve"}	\N	\N
568	612	directus_fields	131	{"sort":3,"interface":"input-multiline","special":null,"collection":"evenement","field":"contenuEve"}	{"sort":3,"interface":"input-multiline","special":null,"collection":"evenement","field":"contenuEve"}	\N	\N
569	613	directus_fields	132	{"sort":4,"interface":"file-image","special":["file"],"collection":"evenement","field":"photoEve"}	{"sort":4,"interface":"file-image","special":["file"],"collection":"evenement","field":"photoEve"}	\N	\N
570	614	directus_fields	133	{"sort":5,"interface":"datetime","special":null,"collection":"evenement","field":"datePublicationEve"}	{"sort":5,"interface":"datetime","special":null,"collection":"evenement","field":"datePublicationEve"}	\N	\N
571	615	directus_files	2e2eae62-ac2c-4106-867e-ecad38cf174a	{"title":"Evenement1","filename_download":"evenement1.PNG","type":"image/png","storage":"local"}	{"title":"Evenement1","filename_download":"evenement1.PNG","type":"image/png","storage":"local"}	\N	\N
601	646	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
572	616	evenement	1	{"contenuEve":"L'ONG IDEA Academy a organisé une formation les 14 et 15 juin 2024 au domaine Agro de l'Université d'Ankatso pour rendre le métier de data analyst accessible à tous. Sans prérequis ni connaissances en programmation, cette formation était ouverte à tous les étudiants, peu importe leur filière.\\nLe programme couvrait des aspects essentiels du travail de data analyst : analyses statistiques, collecte et traitement des données, visualisation et modélisation. Les participants ont appris à interpréter les données, les nettoyer et les préparer, puis à les représenter graphiquement pour une meilleure compréhension. La modélisation des données a été abordée pour montrer comment créer des modèles prédictifs et analyser les tendances futures.\\nCette formation a offert aux participants une vision complète des compétences et techniques nécessaires pour réussir en tant que data analyst.","titreEve":"Formation “Data Analyst pour tous” dans l'enceinte du domaine Agro de l'Université d'Ankatso","datePublicationEve":"2024-09-10","photoEve":"2e2eae62-ac2c-4106-867e-ecad38cf174a"}	{"contenuEve":"L'ONG IDEA Academy a organisé une formation les 14 et 15 juin 2024 au domaine Agro de l'Université d'Ankatso pour rendre le métier de data analyst accessible à tous. Sans prérequis ni connaissances en programmation, cette formation était ouverte à tous les étudiants, peu importe leur filière.\\nLe programme couvrait des aspects essentiels du travail de data analyst : analyses statistiques, collecte et traitement des données, visualisation et modélisation. Les participants ont appris à interpréter les données, les nettoyer et les préparer, puis à les représenter graphiquement pour une meilleure compréhension. La modélisation des données a été abordée pour montrer comment créer des modèles prédictifs et analyser les tendances futures.\\nCette formation a offert aux participants une vision complète des compétences et techniques nécessaires pour réussir en tant que data analyst.","titreEve":"Formation “Data Analyst pour tous” dans l'enceinte du domaine Agro de l'Université d'Ankatso","datePublicationEve":"2024-09-10","photoEve":"2e2eae62-ac2c-4106-867e-ecad38cf174a"}	\N	\N
573	617	directus_files	588a6efb-115c-4997-828b-fbe35eb17df4	{"title":"Evenement2","filename_download":"evenement2.PNG","type":"image/png","storage":"local"}	{"title":"Evenement2","filename_download":"evenement2.PNG","type":"image/png","storage":"local"}	\N	\N
574	618	evenement	2	{"titreEve":"Partenariat prometteur entre l'École Nationale d'Informatique (ENI) et l'ONG IDEA Academy","contenuEve":"Nous remercions sincèrement la Direction et l'administration de l'ENI pour leur confiance et leur soutien essentiel. Leur vision partagée pour un environnement d'apprentissage de qualité est au cœur de ce partenariat.\\nCe partenariat va au-delà d'une simple collaboration. Il représente notre engagement commun à offrir des opportunités éducatives de haute qualité, à encourager l'innovation technologique, et à soutenir le développement des jeunes talents. Nous espérons inspirer les étudiants à exceller dans leurs futures carrières et à contribuer significativement à la société.\\nNous sommes convaincus que ce partenariat créera des opportunités inédites pour les étudiants et les jeunes professionnels. Nous sommes impatients de voir les projets et initiatives innovantes qui en découleront.\\nEncore une fois, merci à la Direction et à l'administration de l'ENI pour leur précieuse coopération. Nous sommes enthousiastes à l'idée de travailler ensemble pour atteindre nos objectifs communs et construire un avenir prometteur pour les étudiants et les jeunes talents en informatique. Restez à l'écoute pour plus de mises à jour sur les initiatives à venir.","datePublicationEve":"2024-09-03","photoEve":"588a6efb-115c-4997-828b-fbe35eb17df4"}	{"titreEve":"Partenariat prometteur entre l'École Nationale d'Informatique (ENI) et l'ONG IDEA Academy","contenuEve":"Nous remercions sincèrement la Direction et l'administration de l'ENI pour leur confiance et leur soutien essentiel. Leur vision partagée pour un environnement d'apprentissage de qualité est au cœur de ce partenariat.\\nCe partenariat va au-delà d'une simple collaboration. Il représente notre engagement commun à offrir des opportunités éducatives de haute qualité, à encourager l'innovation technologique, et à soutenir le développement des jeunes talents. Nous espérons inspirer les étudiants à exceller dans leurs futures carrières et à contribuer significativement à la société.\\nNous sommes convaincus que ce partenariat créera des opportunités inédites pour les étudiants et les jeunes professionnels. Nous sommes impatients de voir les projets et initiatives innovantes qui en découleront.\\nEncore une fois, merci à la Direction et à l'administration de l'ENI pour leur précieuse coopération. Nous sommes enthousiastes à l'idée de travailler ensemble pour atteindre nos objectifs communs et construire un avenir prometteur pour les étudiants et les jeunes talents en informatique. Restez à l'écoute pour plus de mises à jour sur les initiatives à venir.","datePublicationEve":"2024-09-03","photoEve":"588a6efb-115c-4997-828b-fbe35eb17df4"}	\N	\N
575	619	directus_files	68d30d37-66ef-435e-adab-e602f0f422b3	{"title":"Evenement3","filename_download":"evenement3.PNG","type":"image/png","storage":"local"}	{"title":"Evenement3","filename_download":"evenement3.PNG","type":"image/png","storage":"local"}	\N	\N
576	620	evenement	3	{"contenuEve":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. Le premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","photoEve":"68d30d37-66ef-435e-adab-e602f0f422b3","datePublicationEve":"2024-09-10"}	{"contenuEve":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. Le premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","photoEve":"68d30d37-66ef-435e-adab-e602f0f422b3","datePublicationEve":"2024-09-10"}	\N	\N
577	621	evenement	3	{"idEve":3,"titreEve":"Conférence au KSLMD Fianarantsoa sur le thème \\"Jeunes talents, grandes ambitions: une immersion dans les métiers de la Data.\\" ","contenuEve":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. Le premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","photoEve":"68d30d37-66ef-435e-adab-e602f0f422b3","datePublicationEve":"2024-09-10"}	{"titreEve":"Conférence au KSLMD Fianarantsoa sur le thème \\"Jeunes talents, grandes ambitions: une immersion dans les métiers de la Data.\\" "}	\N	\N
578	622	directus_permissions	34	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"evenement","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"evenement","action":"read"}	\N	\N
579	624	directus_fields	132	{"id":132,"collection":"evenement","field":"photoEve","special":["file"],"interface":"file-image","options":null,"display":"image","display_options":{"circle":true},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"evenement","field":"photoEve","display":"image","display_options":{"circle":true}}	\N	\N
580	625	directus_fields	134	{"sort":6,"interface":"boolean","special":["cast-boolean"],"collection":"evenement","field":"publie"}	{"sort":6,"interface":"boolean","special":["cast-boolean"],"collection":"evenement","field":"publie"}	\N	\N
581	626	evenement	1	{"idEve":1,"titreEve":"Formation “Data Analyst pour tous” dans l'enceinte du domaine Agro de l'Université d'Ankatso","contenuEve":"L'ONG IDEA Academy a organisé une formation les 14 et 15 juin 2024 au domaine Agro de l'Université d'Ankatso pour rendre le métier de data analyst accessible à tous. Sans prérequis ni connaissances en programmation, cette formation était ouverte à tous les étudiants, peu importe leur filière.\\nLe programme couvrait des aspects essentiels du travail de data analyst : analyses statistiques, collecte et traitement des données, visualisation et modélisation. Les participants ont appris à interpréter les données, les nettoyer et les préparer, puis à les représenter graphiquement pour une meilleure compréhension. La modélisation des données a été abordée pour montrer comment créer des modèles prédictifs et analyser les tendances futures.\\nCette formation a offert aux participants une vision complète des compétences et techniques nécessaires pour réussir en tant que data analyst.","photoEve":"2e2eae62-ac2c-4106-867e-ecad38cf174a","datePublicationEve":"2024-09-10","publie":true}	{"publie":true}	\N	\N
582	627	evenement	2	{"idEve":2,"titreEve":"Partenariat prometteur entre l'École Nationale d'Informatique (ENI) et l'ONG IDEA Academy","contenuEve":"Nous remercions sincèrement la Direction et l'administration de l'ENI pour leur confiance et leur soutien essentiel. Leur vision partagée pour un environnement d'apprentissage de qualité est au cœur de ce partenariat.\\nCe partenariat va au-delà d'une simple collaboration. Il représente notre engagement commun à offrir des opportunités éducatives de haute qualité, à encourager l'innovation technologique, et à soutenir le développement des jeunes talents. Nous espérons inspirer les étudiants à exceller dans leurs futures carrières et à contribuer significativement à la société.\\nNous sommes convaincus que ce partenariat créera des opportunités inédites pour les étudiants et les jeunes professionnels. Nous sommes impatients de voir les projets et initiatives innovantes qui en découleront.\\nEncore une fois, merci à la Direction et à l'administration de l'ENI pour leur précieuse coopération. Nous sommes enthousiastes à l'idée de travailler ensemble pour atteindre nos objectifs communs et construire un avenir prometteur pour les étudiants et les jeunes talents en informatique. Restez à l'écoute pour plus de mises à jour sur les initiatives à venir.","photoEve":"588a6efb-115c-4997-828b-fbe35eb17df4","datePublicationEve":"2024-09-03","publie":true}	{"publie":true}	\N	\N
583	628	evenement	3	{"idEve":3,"titreEve":"Conférence au KSLMD Fianarantsoa sur le thème \\"Jeunes talents, grandes ambitions: une immersion dans les métiers de la Data.\\" ","contenuEve":"L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée \\"Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data\\" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. Le premier jour, les sessions portaient sur \\"Se vendre avec succès\\", pour aider les participants à valoriser leur potentiel et leurs compétences, et \\"Jeunes talents, grandes ambitions\\", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.","photoEve":"68d30d37-66ef-435e-adab-e602f0f422b3","datePublicationEve":"2024-09-10","publie":true}	{"publie":true}	\N	\N
584	629	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
585	630	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
586	631	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
587	632	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
588	633	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
589	634	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
590	635	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
591	636	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
592	637	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
593	638	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
594	639	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
600	645	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	601	\N
610	655	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
595	640	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"welcome to flows","template":"my-modele","data":{"user_name":"Anna"},"body":"hhhhhhhhhhhhhhhhhhhhhhhhhhvvv"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
596	641	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"Bonjour {{$last.email}},\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec {{$last.email}} a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à [email de contact] ou à visiter notre site web à https://ideaacademy.net/.\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\nL'équipe de l'IDEA Academy"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"Bonjour {{$last.email}},\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec {{$last.email}} a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à [email de contact] ou à visiter notre site web à https://ideaacademy.net/.\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\nL'équipe de l'IDEA Academy"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	597	\N
597	642	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	598	\N
598	643	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	600	\N
611	656	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"Bonjour tsifily@gmail.com,\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec tsifily@gmail.com a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\nL'équipe de l'IDEA Academy"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com"},"mail_muhlv":null}}	\N	\N	\N
602	647	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"Bonjour {{$last.email}},\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec {{$last.email}} a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\nL'équipe de l'IDEA Academy"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"Bonjour {{$last.email}},\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec {{$last.email}} a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\nL'équipe de l'IDEA Academy"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	603	\N
603	648	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n\\treturn {\\n        email:email\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	604	\N
604	649	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	606	\N
605	650	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	606	\N
607	652	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
606	651	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	607	\N
608	653	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
609	654	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
612	657	directus_files	58c41df2-b7f0-4bc7-a85e-d7cd112ace10	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
616	661	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	617	\N
618	663	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
613	658	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"<!DOCTYPE html>\\n<html lang=\\"fr\\">\\n<head>\\n    <meta charset=\\"UTF-8\\">\\n    <meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1.0\\">\\n    <title>Notification de Partenariat Accepté</title>\\n    <style>\\n        body {\\n            font-family: Arial, sans-serif;\\n            color: #333;\\n            line-height: 1.6;\\n            margin: 0;\\n            padding: 0;\\n            background-color: #f4f4f4;\\n        }\\n        .container {\\n            width: 90%;\\n            max-width: 600px;\\n            margin: auto;\\n            background: #ffffff;\\n            padding: 20px;\\n            border-radius: 8px;\\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\\n        }\\n        .header {\\n            text-align: center;\\n            padding-bottom: 20px;\\n        }\\n        .header img {\\n            max-width: 150px;\\n        }\\n        .content {\\n            padding: 20px;\\n            background: #ffffff;\\n            border-radius: 8px;\\n            margin-bottom: 20px;\\n        }\\n        .footer {\\n            text-align: center;\\n            font-size: 14px;\\n            color: #777;\\n        }\\n        .footer a {\\n            color: #007bff;\\n            text-decoration: none;\\n        }\\n        .footer a:hover {\\n            text-decoration: underline;\\n        }\\n    </style>\\n</head>\\n<body>\\n    <div class=\\"container\\">\\n        <div class=\\"header\\">\\n            <img src=\\"http://example.com/path-to-your-logo.png\\" alt=\\"Logo IDEA Academy\\">\\n        </div>\\n        <div class=\\"content\\">\\n            <p>Bonjour {{$last.nomPart}},</p>\\n\\n            <p>Nous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !</p>\\n\\n            <p>Nous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.</p>\\n\\n            <p>Si vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à <a href=\\"mailto:idea.dataconsulting@gmail.com\\">idea.dataconsulting@gmail.com</a> ou à visiter notre site web à <a href=\\"http://ideaacademy.net\\">ideaacademy.net</a>.</p>\\n\\n            <p>Merci de votre intérêt et de votre engagement envers notre mission.</p>\\n\\n            <p>Cordialement,<br>\\n            L'équipe de l'IDEA Academy</p>\\n        </div>\\n        <div class=\\"footer\\">\\n            <p>&copy; {{currentYear}} IDEA Academy. Tous droits réservés.</p>\\n        </div>\\n    </div>\\n</body>\\n</html>\\n"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"<!DOCTYPE html>\\n<html lang=\\"fr\\">\\n<head>\\n    <meta charset=\\"UTF-8\\">\\n    <meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1.0\\">\\n    <title>Notification de Partenariat Accepté</title>\\n    <style>\\n        body {\\n            font-family: Arial, sans-serif;\\n            color: #333;\\n            line-height: 1.6;\\n            margin: 0;\\n            padding: 0;\\n            background-color: #f4f4f4;\\n        }\\n        .container {\\n            width: 90%;\\n            max-width: 600px;\\n            margin: auto;\\n            background: #ffffff;\\n            padding: 20px;\\n            border-radius: 8px;\\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\\n        }\\n        .header {\\n            text-align: center;\\n            padding-bottom: 20px;\\n        }\\n        .header img {\\n            max-width: 150px;\\n        }\\n        .content {\\n            padding: 20px;\\n            background: #ffffff;\\n            border-radius: 8px;\\n            margin-bottom: 20px;\\n        }\\n        .footer {\\n            text-align: center;\\n            font-size: 14px;\\n            color: #777;\\n        }\\n        .footer a {\\n            color: #007bff;\\n            text-decoration: none;\\n        }\\n        .footer a:hover {\\n            text-decoration: underline;\\n        }\\n    </style>\\n</head>\\n<body>\\n    <div class=\\"container\\">\\n        <div class=\\"header\\">\\n            <img src=\\"http://example.com/path-to-your-logo.png\\" alt=\\"Logo IDEA Academy\\">\\n        </div>\\n        <div class=\\"content\\">\\n            <p>Bonjour {{$last.nomPart}},</p>\\n\\n            <p>Nous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !</p>\\n\\n            <p>Nous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.</p>\\n\\n            <p>Si vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à <a href=\\"mailto:idea.dataconsulting@gmail.com\\">idea.dataconsulting@gmail.com</a> ou à visiter notre site web à <a href=\\"http://ideaacademy.net\\">ideaacademy.net</a>.</p>\\n\\n            <p>Merci de votre intérêt et de votre engagement envers notre mission.</p>\\n\\n            <p>Cordialement,<br>\\n            L'équipe de l'IDEA Academy</p>\\n        </div>\\n        <div class=\\"footer\\">\\n            <p>&copy; {{currentYear}} IDEA Academy. Tous droits réservés.</p>\\n        </div>\\n    </div>\\n</body>\\n</html>\\n"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	614	\N
614	659	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	615	\N
615	660	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	617	\N
617	662	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	618	\N
619	664	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
620	665	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
621	666	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
622	667	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"user_name":"Anna"},"body":"<!DOCTYPE html>\\n<html lang=\\"fr\\">\\n<head>\\n    <meta charset=\\"UTF-8\\">\\n    <meta name=\\"viewport\\" content=\\"width=device-width, initial-scale=1.0\\">\\n    <title>Notification de Partenariat Accepté</title>\\n    <style>\\n        body {\\n            font-family: Arial, sans-serif;\\n            color: #333;\\n            line-height: 1.6;\\n            margin: 0;\\n            padding: 0;\\n            background-color: #f4f4f4;\\n        }\\n        .container {\\n            width: 90%;\\n            max-width: 600px;\\n            margin: auto;\\n            background: #ffffff;\\n            padding: 20px;\\n            border-radius: 8px;\\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\\n        }\\n        .header {\\n            text-align: center;\\n            padding-bottom: 20px;\\n        }\\n        .header img {\\n            max-width: 150px;\\n        }\\n        .content {\\n            padding: 20px;\\n            background: #ffffff;\\n            border-radius: 8px;\\n            margin-bottom: 20px;\\n        }\\n        .footer {\\n            text-align: center;\\n            font-size: 14px;\\n            color: #777;\\n        }\\n        .footer a {\\n            color: #007bff;\\n            text-decoration: none;\\n        }\\n        .footer a:hover {\\n            text-decoration: underline;\\n        }\\n    </style>\\n</head>\\n<body>\\n    <div class=\\"container\\">\\n        <div class=\\"header\\">\\n            <img src=\\"http://example.com/path-to-your-logo.png\\" alt=\\"Logo IDEA Academy\\">\\n        </div>\\n        <div class=\\"content\\">\\n            <p>Bonjour Fonds Urgence et Développement ,</p>\\n\\n            <p>Nous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !</p>\\n\\n            <p>Nous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.</p>\\n\\n            <p>Si vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à <a href=\\"mailto:idea.dataconsulting@gmail.com\\">idea.dataconsulting@gmail.com</a> ou à visiter notre site web à <a href=\\"http://ideaacademy.net\\">ideaacademy.net</a>.</p>\\n\\n            <p>Merci de votre intérêt et de votre engagement envers notre mission.</p>\\n\\n            <p>Cordialement,<br>\\n            L'équipe de l'IDEA Academy</p>\\n        </div>\\n        <div class=\\"footer\\">\\n            <p>&copy; undefined IDEA Academy. Tous droits réservés.</p>\\n        </div>\\n    </div>\\n</body>\\n</html>\\n"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement "},"mail_muhlv":null}}	\N	\N	\N
623	668	directus_files	7a1df1dc-b5f6-45fb-b788-be3fe6da4466	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	{"title":"Logo","filename_download":"logo.PNG","type":"image/png","storage":"local"}	\N	\N
624	669	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	625	\N
626	671	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	628	\N
653	698	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	654	\N
625	670	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	626	\N
627	672	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	628	\N
629	674	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
628	673	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	629	\N
630	675	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	631	\N
631	676	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	632	\N
633	678	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	634	\N
632	677	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	634	\N
635	680	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
634	679	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	635	\N
636	681	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"my-modele","data":{"url":"example.com"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	637	\N
637	682	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	638	\N
638	683	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	640	\N
639	684	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	640	\N
641	686	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
640	685	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	641	\N
642	687	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPartenaire":"{{$last.nomPart}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPartenaire":"{{$last.nomPart}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	643	\N
643	688	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	644	\N
644	689	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	646	\N
645	690	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	646	\N
647	692	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
646	691	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	647	\N
648	693	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":false}	\N	\N
649	694	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
650	695	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]}	{"status":true}	\N	\N
651	696	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPartenaire":"Fonds Urgence et Développement "},"body":"**Bonjour Fonds Urgence et Développement ,\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","typePartenariat":[1,2]},"exec_f8esg":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement "},"mail_muhlv":null}}	\N	\N	\N
652	697	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPartenaire":"{{$last.nomPrenomResponsablePart}}","logoIDEA":""},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPartenaire":"{{$last.nomPrenomResponsablePart}}","logoIDEA":""},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	653	\N
654	699	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	656	\N
655	700	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	656	\N
657	702	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
656	701	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	657	\N
658	703	directus_fields	135	{"sort":14,"special":["m2o"],"collection":"partenaire","field":"idCon"}	{"sort":14,"special":["m2o"],"collection":"partenaire","field":"idCon"}	\N	\N
659	704	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"idCon":1}	\N	\N
660	705	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"idCon":1},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_wb9qj":null}}	\N	\N	\N
661	706	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	662	\N
670	715	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"reject","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"exec_f8esg":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"}}}	\N	\N	\N
662	707	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_f8esg","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	663	\N
663	708	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	665	\N
664	709	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	665	\N
666	711	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
665	710	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	666	\N
667	712	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
668	713	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
669	714	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
671	716	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
672	717	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
673	718	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
674	719	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"reject","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"exec_f8esg":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"}}}	\N	\N	\N
675	720	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":73,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	676	\N
681	726	directus_fields	135	{"id":135,"collection":"partenaire","field":"idCon","special":["m2o"],"interface":null,"options":null,"display":"related-values","display_options":{"template":"{{logoCon}}"},"readonly":false,"hidden":false,"sort":14,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"partenaire","field":"idCon","display":"related-values","display_options":{"template":"{{logoCon}}"}}	\N	\N
685	730	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"reject","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"exec_f8esg":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"}}}	\N	\N	\N
676	721	directus_operations	b7601563-c18f-43b6-9d1a-78cbc49e4db8	{"id":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","name":"Lancer le script","key":"exec_f8esg","type":"exec","position_x":55,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.675Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	677	\N
677	722	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	679	\N
678	723	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	679	\N
680	725	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","b7601563-c18f-43b6-9d1a-78cbc49e4db8","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
679	724	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	680	\N
682	727	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
683	728	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
684	729	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
686	731	directus_fields	135	{"id":135,"collection":"partenaire","field":"idCon","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{logoCon}}"},"display":"related-values","display_options":{"template":"{{logoCon}}"},"readonly":false,"hidden":false,"sort":14,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"partenaire","field":"idCon","interface":"select-dropdown-m2o","options":{"template":"{{logoCon}}"}}	\N	\N
687	732	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
688	733	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
689	734	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
690	735	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"b7601563-c18f-43b6-9d1a-78cbc49e4db8","key":"exec_f8esg","status":"reject","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"exec_f8esg":{"name":"TypeError","message":"Cannot read properties of undefined (reading 'id')"}}}	\N	\N	\N
691	736	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}	692	\N
698	744	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
701	747	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
692	737	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}}	693	\N
693	738	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"url":"http://localhost:8055/items/partenaire?id={{data.$last.id}}&fields=*,idCon.logoCon.*"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}}}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":55,"position_y":1,"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"url":"http://localhost:8055/items/partenaire?id={{data.$last.id}}&fields=*,idCon.logoCon.*"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":73,"position_y":1,"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","position_x":91,"position_y":1,"name":"Log dans la console","key":"log_0nuad","type":"log","options":{"message":"{{$last.logoIDEA}}"}}}}	694	\N
694	739	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":37,"position_y":1,"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	696	\N
695	740	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	696	\N
696	741	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	698	\N
697	742	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":101,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":101,"position_y":1,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	698	\N
699	745	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
700	746	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
702	748	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"http://localhost:8055/items/partenaire?id=undefined&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
703	749	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":91,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	704	\N
704	750	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":73,"position_y":1,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	705	\N
705	751	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":55,"position_y":1,"options":{"url":"http://localhost:8055/items/partenaire?id={{data.$last.idPart}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"url":"http://localhost:8055/items/partenaire?id={{data.$last.idPart}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	706	\N
706	752	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	708	\N
707	753	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	708	\N
710	756	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
708	754	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	710	\N
709	755	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":101,"position_y":1,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	710	\N
711	757	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
712	758	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
713	759	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
714	760	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"http://localhost:8055/items/partenaire?id=undefined&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
722	768	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":107,"position_y":1,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	723	\N
723	769	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	724	\N
724	770	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"url":"http://localhost:8055/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"url":"http://localhost:8055/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	725	\N
725	771	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	727	\N
726	772	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	727	\N
729	775	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
727	773	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	729	\N
728	774	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":123,"position_y":2,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	729	\N
730	776	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
731	777	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
732	778	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
733	779	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"http://localhost:8055/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
734	780	directus_permissions	35	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_webhooks","action":"read"}	{"policy":"abf8a154-5b1c-4a46-ac9c-7300570f4f17","permissions":null,"validation":null,"fields":["*"],"presets":null,"collection":"directus_webhooks","action":"read"}	\N	\N
736	783	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
735	782	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
737	784	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
738	785	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"http://localhost:8055/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
739	786	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	740	\N
740	787	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	741	\N
749	796	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
751	798	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	752	\N
741	788	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"url":"http://127.0.0.1:8055/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"url":"http://127.0.0.1:8055/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	742	\N
742	789	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	744	\N
743	790	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	744	\N
746	793	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
744	791	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	746	\N
745	792	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	746	\N
747	794	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
748	795	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
750	797	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"http://127.0.0.1:8055/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"127.0.0.1\\" resolves to a denied IP address"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"127.0.0.1\\" resolves to a denied IP address"}}}	\N	\N	\N
752	799	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	753	\N
753	800	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	754	\N
754	801	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	756	\N
755	802	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	756	\N
758	805	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
756	803	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	758	\N
757	804	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	758	\N
759	806	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
760	807	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
761	808	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
762	809	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"url":"/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
764	811	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	765	\N
765	812	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	766	\N
766	813	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	768	\N
767	814	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	768	\N
770	817	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
768	815	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	770	\N
769	816	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	770	\N
771	818	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
772	819	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
773	820	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
774	821	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"headers?.reduce is not a function"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"TypeError","message":"headers?.reduce is not a function"}}}	\N	\N	\N
775	822	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	776	\N
785	832	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
776	823	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	777	\N
777	824	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n","url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n","url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	778	\N
778	825	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	780	\N
779	826	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	780	\N
782	829	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
780	827	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	782	\N
781	828	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	782	\N
783	830	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
784	831	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
786	833	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"headers":"\\"headers\\": {\\n  \\"Content-Type\\": \\"application/json\\",\\n}\\n","url":"/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"TypeError","message":"headers?.reduce is not a function"},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"TypeError","message":"headers?.reduce is not a function"}}}	\N	\N	\N
798	845	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":107,"position_y":1,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	799	\N
797	844	directus_users	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	{"id":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","first_name":"Admin","last_name":"User","email":"tsifily@gmail.com","password":"**********","location":null,"title":null,"description":null,"tags":null,"avatar":null,"language":null,"tfa_secret":null,"status":"active","role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","token":"**********","last_access":"2024-09-12T06:31:59.641Z","last_page":"/users/4ce4ad2f-33ca-4ea5-a4fd-50e479010314","provider":"default","external_identifier":null,"auth_data":null,"email_notifications":true,"appearance":null,"theme_dark":null,"theme_light":null,"theme_light_overrides":null,"theme_dark_overrides":null,"policies":[]}	{"token":"**********"}	\N	\N
811	858	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	812	\N
799	846	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":79,"position_y":3,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	800	\N
800	847	directus_operations	4454f0fa-dd1e-4655-bb9d-817b041889f0	{"id":"4454f0fa-dd1e-4655-bb9d-817b041889f0","name":"Webhook / URL de requête","key":"request_6rozx","type":"request","position_x":59,"position_y":3,"options":{"headers":[{"header":"Content-Type","value":"application/json"}],"url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.394Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Webhook / URL de requête","key":"request_6rozx","type":"request","options":{"headers":[{"header":"Content-Type","value":"application/json"}],"url":"/items/partenaire?id={{$trigger.keys[0]}}&fields=*,idCon.logoCon.*"},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	801	\N
801	848	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"]},"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"4454f0fa-dd1e-4655-bb9d-817b041889f0","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	803	\N
802	849	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	803	\N
803	850	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	805	\N
816	864	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
815	862	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":91,"position_y":3,"options":{"message":"{{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":91,"position_y":3,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	816	\N
823	871	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	825	\N
824	872	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	825	\N
805	852	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","4454f0fa-dd1e-4655-bb9d-817b041889f0","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
804	851	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	805	\N
806	853	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
807	854	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
808	855	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
809	856	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"]}},{"operation":"4454f0fa-dd1e-4655-bb9d-817b041889f0","key":"request_6rozx","status":"reject","options":{"headers":[{"header":"Content-Type","value":"application/json"}],"url":"/items/partenaire?id=1&fields=*,idCon.logoCon.*"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]},"request_6rozx":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","cause":{"name":"Error","message":"Requested domain \\"localhost\\" resolves to a denied IP address","stack":"Error: Requested domain \\"localhost\\" resolves to a denied IP address\\n    at deniedError (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:3:33)\\n    at Socket.<anonymous> (file:///directus/node_modules/.pnpm/@directus+api@file+api_@types+node@18.19.45_@unhead+vue@1.9.9_vue@3.4.27_typescript@5.4.5___e_m3k5vy5wr7txl4ii3ls7kgdvt4/node_modules/@directus/api/dist/request/agent-with-ip-validation.js:33:35)\\n    at Socket.emit (node:events:517:28)\\n    at GetAddrInfoReqWrap.emitLookup [as callback] (node:net:1359:12)\\n    at GetAddrInfoReqWrap.onlookup [as oncomplete] (node:dns:109:8)"}}}}	\N	\N	\N
810	857	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	812	\N
861	910	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
812	859	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	816	\N
813	860	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":59,"position_y":2,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon.id\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"position_x":59,"position_y":2,"resolve":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	816	\N
814	861	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	816	\N
817	865	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
818	866	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
819	867	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
820	868	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}}}}	\N	\N	\N
821	869	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":81,"position_y":3,"options":{"message":"logo idea est {{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Log dans la console","key":"log_0nuad","type":"log","position_x":81,"position_y":3,"options":{"message":"logo idea est {{$last.logoIDEA}}"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	822	\N
822	870	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":59,"position_y":2,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	823	\N
831	879	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","key":"log_0nuad","status":"resolve","options":{"message":"logo idea est null"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":null,"logoIDEA":null},"log_0nuad":null}}	\N	\N	\N
827	875	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
825	873	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	827	\N
826	874	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	827	\N
828	876	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
829	877	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
830	878	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
832	880	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":81,"position_y":3,"options":{"message":"logo idea est {{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	833	\N
833	881	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":59,"position_y":2,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	834	\N
834	882	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	836	\N
835	883	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	836	\N
836	884	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	838	\N
860	908	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	861	\N
868	917	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
869	918	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"body":"**Bonjour Fonds Urgence et Développement ,\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"mail_muhlv":null}}	\N	\N	\N
870	919	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
872	921	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
873	922	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"body":"**Bonjour Fonds Urgence et Développement ,\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"mail_muhlv":null}}	\N	\N	\N
882	931	partenaire	4	{"nomPart":"MANAO","descriptionPart":"hhhhhhhhh","contactPart":"0340579129","emailPart":"stephanie@gmail.com","adressePart":"Igaga Fianarantsoa","nomPrenomResponsablePart":"anna","status":false,"typePartenariat":[{"typePartenariat_idTypePart":{"idTypePart":"17"}}]}	{"nomPart":"MANAO","descriptionPart":"hhhhhhhhh","contactPart":"0340579129","emailPart":"stephanie@gmail.com","adressePart":"Igaga Fianarantsoa","nomPrenomResponsablePart":"anna","status":false,"typePartenariat":[{"typePartenariat_idTypePart":{"idTypePart":"17"}}]}	\N	\N
838	886	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
837	885	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	838	\N
839	887	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
840	888	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
841	889	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":null,"status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
842	890	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","key":"log_0nuad","status":"resolve","options":{"message":"logo idea est 8cbfa386-b820-4263-a19b-3f16fafaf096"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":null,"descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":null,"logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"log_0nuad":null}}	\N	\N	\N
843	891	directus_operations	c4e60bd0-3284-4624-be30-2e3b7bfaef18	{"id":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","name":"Log dans la console","key":"log_0nuad","type":"log","position_x":81,"position_y":3,"options":{"message":"logo idea est {{$last.logoIDEA}}"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.073Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	844	\N
874	923	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
876	925	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
877	926	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"body":"**Bonjour Fonds Urgence et Développement ,\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"mail_muhlv":null}}	\N	\N	\N
883	932	directus_collections	abonne_article	{"collection":"abonne_article","icon":"import_export","note":null,"display_template":null,"hidden":false,"singleton":false,"translations":null,"archive_field":null,"archive_app_filter":true,"archive_value":null,"unarchive_value":null,"sort_field":null,"accountability":"all","color":null,"item_duplication_fields":null,"sort":null,"group":null,"collapse":"open","preview_url":null,"versioning":false}	{"hidden":false}	\N	\N
844	892	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":59,"position_y":2,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lancer le script","key":"exec_1u9sh","type":"exec","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	845	\N
845	893	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Lire les données","key":"item_read_mw7p0","type":"item-read","options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	847	\N
846	894	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	847	\N
847	895	directus_operations	2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5	{"id":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","name":"Condition","key":"condition_jdju0","type":"condition","position_x":19,"position_y":1,"options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}},"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.591Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","reject":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	849	\N
867	916	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
871	920	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
875	924	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
880	929	partenaire	3	{"nomPart":"MANAO","descriptionPart":"deeee","contactPart":"0340678909","emailPart":"stephanie@gmail.com","adressePart":"Igaga Fianarantsoa","nomPrenomResponsablePart":"anna","status":false,"typePartenariat":[{"typePartenariat_idTypePart":{"idTypePart":"17"}},{"typePartenariat_idTypePart":{"idTypePart":"9"}}]}	{"nomPart":"MANAO","descriptionPart":"deeee","contactPart":"0340678909","emailPart":"stephanie@gmail.com","adressePart":"Igaga Fianarantsoa","nomPrenomResponsablePart":"anna","status":false,"typePartenariat":[{"typePartenariat_idTypePart":{"idTypePart":"17"}},{"typePartenariat_idTypePart":{"idTypePart":"9"}}]}	\N	\N
879	928	typePartenariat_partenaire	6	{"typePartenariat_idTypePart":{"idTypePart":"9"},"partenaire_idPart":3}	{"typePartenariat_idTypePart":{"idTypePart":"9"},"partenaire_idPart":3}	880	\N
849	897	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"id":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","name":"EnvoieMail_Partenaire","icon":"bolt","color":null,"description":"Envoie email au partenaire","status":"active","trigger":"event","accountability":"all","options":{"type":"action","scope":["items.update"],"collections":["partenaire"]},"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","date_created":"2024-09-04T21:59:53.983Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","operations":["075924ac-a8fd-4d32-a82c-d3224c3b09e7","0e80d5e7-6733-4819-abc2-0df0b18ea8f6","2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","92a16774-55e7-466b-a5a2-4a0b6ecbd714","bc70f822-d43c-4852-896d-4766b862b7db","c4e60bd0-3284-4624-be30-2e3b7bfaef18"]}	{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5"}	\N	\N
848	896	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":123,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	849	\N
850	898	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava"}	\N	\N
851	899	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava"},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" is required","stack":"ValidationError: \\"$trigger.payload.status\\" is required"}],"log_wb9qj":null}}	\N	\N	\N
852	900	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
853	901	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
854	902	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
855	903	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"c4e60bd0-3284-4624-be30-2e3b7bfaef18","key":"log_0nuad","status":"resolve","options":{"message":"logo idea est 8cbfa386-b820-4263-a19b-3f16fafaf096"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"log_0nuad":null}}	\N	\N	\N
881	930	typePartenariat_partenaire	7	{"typePartenariat_idTypePart":{"idTypePart":"17"},"partenaire_idPart":4}	{"typePartenariat_idTypePart":{"idTypePart":"17"},"partenaire_idPart":4}	882	\N
884	933	abonne_article	1	{"article_idArt":"1","abonne_idAb":{"idAb":2}}	{"article_idArt":"1","abonne_idAb":{"idAb":2}}	\N	\N
856	904	directus_operations	bc70f822-d43c-4852-896d-4766b862b7db	{"id":"bc70f822-d43c-4852-896d-4766b862b7db","name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":78,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-05T00:01:21.187Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"name":"Envoyer un e-mail","key":"mail_muhlv","type":"mail","position_x":78,"position_y":2,"options":{"to":["{{$last.email}}"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"{{$last.nomPrenomResponsablePart}}","logoIDEA":"{{$last.logoIDEA}}"},"body":"**Bonjour {{$last.nomPart}},\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"},"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	857	\N
857	905	directus_operations	075924ac-a8fd-4d32-a82c-d3224c3b09e7	{"id":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","name":"Lancer le script","key":"exec_1u9sh","type":"exec","position_x":59,"position_y":2,"options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"},"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-11T22:30:58.224Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"bc70f822-d43c-4852-896d-4766b862b7db","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	858	\N
858	906	directus_operations	0e80d5e7-6733-4819-abc2-0df0b18ea8f6	{"id":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","name":"Lire les données","key":"item_read_mw7p0","type":"item-read","position_x":37,"position_y":1,"options":{"emitEvents":true,"collection":"partenaire","key":["{{$trigger.keys[0]}}"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}},"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:16:34.819Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"resolve":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	860	\N
859	907	directus_operations	92a16774-55e7-466b-a5a2-4a0b6ecbd714	{"id":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","name":"Log dans la console","key":"log_wb9qj","type":"log","position_x":37,"position_y":17,"options":{"message":"status n'est pas active "},"resolve":null,"reject":null,"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8","date_created":"2024-09-04T22:04:37.533Z","user_created":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314"}	{"flow":"dc892bb3-8c6c-4085-9b51-4d973d21daa8"}	860	\N
862	911	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
863	912	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"reject","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"92a16774-55e7-466b-a5a2-4a0b6ecbd714","key":"log_wb9qj","status":"resolve","options":{"message":"status n'est pas active "}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":false},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":[{"name":"ValidationError","message":"\\"$trigger.payload.status\\" must be [true]","stack":"ValidationError: \\"$trigger.payload.status\\" must be [true]"}],"log_wb9qj":null}}	\N	\N	\N
864	913	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":true,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":true}	\N	\N
865	914	directus_flows	dc892bb3-8c6c-4085-9b51-4d973d21daa8	{"steps":[{"operation":"2a89c96c-b7bd-45f6-9c6c-bf8bca6874c5","key":"condition_jdju0","status":"resolve","options":{"filter":{"$trigger":{"payload":{"status":{"_eq":true}}}}}},{"operation":"0e80d5e7-6733-4819-abc2-0df0b18ea8f6","key":"item_read_mw7p0","status":"resolve","options":{"emitEvents":true,"collection":"partenaire","key":["1"],"query":{"collection":"partenaire","fields":["idPart","nomPart","nomPrenomResponsablePart","descriptionPart","dateDebutPart","emailPart","logoPart","idCon.*"],"filter":{}}}},{"operation":"075924ac-a8fd-4d32-a82c-d3224c3b09e7","key":"exec_1u9sh","status":"resolve","options":{"code":"module.exports = async function(data) {\\n    const email = data.$last.emailPart;\\n    const nomPart = data.$last.nomPart;\\n    const nomPrenomResponsablePart = data.$last.nomPrenomResponsablePart;\\n    const logoIDEA = data.$last.idCon.logoCon\\n\\treturn {\\n        email:email,\\n        nomPart:nomPart,\\n        nomPrenomResponsablePart:nomPrenomResponsablePart,\\n        logoIDEA:logoIDEA\\n    };\\n}"}},{"operation":"bc70f822-d43c-4852-896d-4766b862b7db","key":"mail_muhlv","status":"resolve","options":{"to":["tsifily@gmail.com"],"subject":"Votre demande de partenariat a été acceptée !","template":"partnership-confirmation","data":{"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"body":"**Bonjour Fonds Urgence et Développement ,\\n**\\n\\nNous avons le plaisir de vous informer que votre demande de partenariat avec l'IDEA Academy a été acceptée et est maintenant active !\\n\\nNous sommes ravis de commencer cette collaboration avec vous et avons hâte de travailler ensemble pour atteindre nos objectifs communs. Vous recevrez bientôt plus d'informations sur les prochaines étapes et les opportunités à venir.\\n\\nSi vous avez des questions ou avez besoin de plus d'informations, n'hésitez pas à nous contacter à idea.dataconsulting@gmail.com  ou à visiter notre site web à ideaacademy.net\\n\\nMerci de votre intérêt et de votre engagement envers notre mission.\\n\\nCordialement,\\n\\nL'équipe de l'IDEA Academy","type":"template"}}],"data":{"$trigger":{"event":"partenaire.items.update","payload":{"status":true},"keys":["1"],"collection":"partenaire"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_jdju0":null,"item_read_mw7p0":{"idPart":1,"nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","emailPart":"tsifily@gmail.com","logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":{"idCon":1,"nomCon":"IDEA Academy ","descriptionCon":"L'ONGG IDEA Academy, établie en 2023 à Antananarivo, est une communauté active de jeunes chercheurs et formateurs talentueux, animée par la passion de transmettre leurs savoirs et de collaborer pour réduire les inégalités numériques et économiques à Madagascar. Elle s'engage à promouvoir l'accès des jeunes Malagasy, y compris ceux des régions reculées, aux compétences en technologies avancées dans le domaine de la Data. ","visionCon":"Création d'un écosystème ou l'entraide entre jeunes talents est le moteur d'une contribution significative a l'avenir du pays","missionCon":"Formations gratuites aux métiers du numérique et aux compétences numériques d'avenir, offertes sans discrimination géographique","slogan":"Œuvrer a l'élévation professionnelle des jeunes de toutes les régions de Madagascar","engagement":"Organisation non gouvernementale qui défend les causes des jeunes Malgaches dans les métiers du numérique, dans les zones enclavées de Madagascar à travers la formation.","emailCon":"idea.dataconsulting@gmail.com ","facebookCon":"IDEA Academy","adresseCon":"Avaratra Ankatso, Enceinte Agro","contactCon":"032 03 288 32","logoCon":"8cbfa386-b820-4263-a19b-3f16fafaf096"}},"exec_1u9sh":{"email":"tsifily@gmail.com","nomPart":"Fonds Urgence et Développement ","nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","logoIDEA":"8cbfa386-b820-4263-a19b-3f16fafaf096"},"mail_muhlv":null}}	\N	\N	\N
866	915	partenaire	1	{"idPart":1,"nomPart":"Fonds Urgence et Développement ","descriptionPart":"Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.","dateDebutPart":"2024-08-29","contactPart":null,"emailPart":"tsifily@gmail.com","adressePart":null,"siteWebPart":null,"nomPrenomResponsablePart":"ANJARATANDRIFY Tsifily Anna Fanjava","status":false,"logoPart":"8030abef-b8a6-4874-94fd-2649a770bfa2","idCon":1,"typePartenariat":[1,2]}	{"status":false}	\N	\N
878	927	typePartenariat_partenaire	5	{"typePartenariat_idTypePart":{"idTypePart":"17"},"partenaire_idPart":3}	{"typePartenariat_idTypePart":{"idTypePart":"17"},"partenaire_idPart":3}	880	\N
915	967	directus_fields	141	{"sort":1,"hidden":true,"field":"id","collection":"abonne_article_avis"}	{"sort":1,"hidden":true,"field":"id","collection":"abonne_article_avis"}	\N	\N
916	968	directus_collections	abonne_article_avis	{"hidden":true,"icon":"import_export","collection":"abonne_article_avis"}	{"hidden":true,"icon":"import_export","collection":"abonne_article_avis"}	\N	\N
885	935	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"abonne":{"create":[{"article_idArt":"1","abonne_idAb":{"idAb":2}}],"update":[],"delete":[]}},"keys":["1"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
887	937	abonne	3	{"emailAbo":"xxx@gmail.com","statusAbo":true,"article":[{"id":"1"}]}	{"emailAbo":"xxx@gmail.com","statusAbo":true,"article":[{"id":"1"}]}	\N	\N
886	936	abonne_article	1	{"id":1,"abonne_idAb":3,"article_idArt":1}	{"abonne_idAb":3}	887	\N
889	939	abonne	4	{"emailAbo":"xxx@gmail.com","article":[{"id":"1"}]}	{"emailAbo":"xxx@gmail.com","article":[{"id":"1"}]}	\N	\N
888	938	abonne_article	1	{"id":1,"abonne_idAb":4,"article_idArt":1}	{"abonne_idAb":4}	889	\N
890	940	abonne_article	2	\N	\N	\N	\N
892	943	abonne	5	{"emailAbo":"xxx@gmail.com","article":[{"id":"1"}]}	{"emailAbo":"xxx@gmail.com","article":[{"id":"1"}]}	\N	\N
891	942	abonne_article	1	{"id":1,"abonne_idAb":5,"article_idArt":1}	{"abonne_idAb":5}	892	\N
894	945	abonne	6	{"emailAbo":"xxx@gmail.com","article":[{"article_idArt":1}]}	{"emailAbo":"xxx@gmail.com","article":[{"article_idArt":1}]}	\N	\N
893	944	abonne_article	3	{"article_idArt":1,"abonne_idAb":6}	{"article_idArt":1,"abonne_idAb":6}	894	\N
896	947	abonne	7	{"emailAbo":"ayanna@gmail.com","article":[{"article_idArt":1}]}	{"emailAbo":"ayanna@gmail.com","article":[{"article_idArt":1}]}	\N	\N
895	946	abonne_article	4	{"article_idArt":1,"abonne_idAb":7}	{"article_idArt":1,"abonne_idAb":7}	896	\N
898	949	abonne	8	{"emailAbo":"mendrika@gmail.com","article":[{"article_idArt":2}]}	{"emailAbo":"mendrika@gmail.com","article":[{"article_idArt":2}]}	\N	\N
897	948	abonne_article	5	{"article_idArt":2,"abonne_idAb":8}	{"article_idArt":2,"abonne_idAb":8}	898	\N
899	950	abonne_article	9	{"id":"9"}	{"id":"9"}	\N	\N
900	951	abonne_article	10	{"article_idArt":"2","abonne_idAb":{"idAb":7}}	{"article_idArt":"2","abonne_idAb":{"idAb":7}}	\N	\N
901	952	abonne_article	11	{"article_idArt":"2","abonne_idAb":{"idAb":6}}	{"article_idArt":"2","abonne_idAb":{"idAb":6}}	\N	\N
902	954	directus_flows	e9e011cd-5670-4e6d-ba47-770bc56913cf	{"steps":[{"operation":"5a041420-1a66-47d6-ab00-131c9d586a65","key":"condition_wyp6p","status":"reject","options":{"filter":{"$trigger":{"payload":{"publie":{"_eq":true}}}}}},{"operation":"08607050-8ae9-4dbf-bb2c-5e1220b3801a","key":"log_r6zlw","status":"resolve","options":{"message":"publie est faux"}}],"data":{"$trigger":{"event":"article.items.update","payload":{"abonne":{"create":[{"article_idArt":"2","abonne_idAb":{"idAb":7}},{"article_idArt":"2","abonne_idAb":{"idAb":6}}],"update":[],"delete":[]}},"keys":["2"],"collection":"article"},"$last":null,"$accountability":{"role":"53bbdf30-9b29-4498-9abb-43c28e6e2ad2","user":"4ce4ad2f-33ca-4ea5-a4fd-50e479010314","roles":["53bbdf30-9b29-4498-9abb-43c28e6e2ad2"],"admin":true,"app":true,"ip":"172.19.0.1","userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36","origin":"http://localhost:8055"},"$env":{},"condition_wyp6p":[{"name":"ValidationError","message":"\\"$trigger.payload.publie\\" is required","stack":"ValidationError: \\"$trigger.payload.publie\\" is required"}],"log_r6zlw":null}}	\N	\N	\N
904	956	abonne	9	{"emailAbo":"mendrikacccccc@gmail.com","article":[{"article_idArt":1}]}	{"emailAbo":"mendrikacccccc@gmail.com","article":[{"article_idArt":1}]}	\N	\N
903	955	abonne_article	12	{"article_idArt":1,"abonne_idAb":9}	{"article_idArt":1,"abonne_idAb":9}	904	\N
905	957	abonne_article	13	{"article_idArt":2}	{"article_idArt":2}	\N	\N
906	958	abonne_article	14	{"article_idArt":2}	{"article_idArt":2}	\N	\N
907	959	abonne_article	15	{"article_idArt":2}	{"article_idArt":2}	\N	\N
908	960	abonne_article	16	{"abonne_idAb":{"idAb":"2"},"article_idArt":2}	{"abonne_idAb":{"idAb":"2"},"article_idArt":2}	\N	\N
909	961	directus_fields	136	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idAvis","collection":"avis"}	{"sort":1,"hidden":true,"interface":"input","readonly":true,"field":"idAvis","collection":"avis"}	\N	\N
910	962	directus_fields	137	{"sort":2,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"avis"}	{"sort":2,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"avis"}	\N	\N
911	963	directus_collections	avis	{"singleton":false,"collection":"avis"}	{"singleton":false,"collection":"avis"}	\N	\N
912	964	directus_fields	138	{"sort":3,"interface":"input-multiline","special":null,"collection":"avis","field":"contenuAvis"}	{"sort":3,"interface":"input-multiline","special":null,"collection":"avis","field":"contenuAvis"}	\N	\N
913	965	directus_fields	139	{"sort":4,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"Pas utile","value":"pas_utile"},{"text":"Utile","value":"utile"},{"text":"Super utile","value":"supe_utile"}]},"collection":"avis","field":"typeAvis"}	{"sort":4,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"Pas utile","value":"pas_utile"},{"text":"Utile","value":"utile"},{"text":"Super utile","value":"supe_utile"}]},"collection":"avis","field":"typeAvis"}	\N	\N
914	966	directus_fields	140	{"sort":4,"special":["m2m"],"collection":"abonne_article","field":"avis_idAvis"}	{"sort":4,"special":["m2m"],"collection":"abonne_article","field":"avis_idAvis"}	\N	\N
924	977	abonne_article	17	{"abonne_idAb":{"idAb":"5"},"article_idArt":1}	{"abonne_idAb":{"idAb":"5"},"article_idArt":1}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
53bbdf30-9b29-4498-9abb-43c28e6e2ad2	Administrator	verified	$t:admin_description	\N
e727f039-5e31-4a1e-81b8-7708f9d9a956	Administrator	verified	$t:admin_description	\N
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
wv_fpfzjO5GjspT5WJHr6B-JAZ2ovUTjnZVXX22HHzseg_RSn1cfe5TZsFVG5vsj	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-13 20:39:59.587+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	\N	http://localhost:8055	r-cv-cDfpdumUAskQ7ALe4eDje9mE_0mUlE4rcajszoeSWywS5O27JshTHXCNdkA
r-cv-cDfpdumUAskQ7ALe4eDje9mE_0mUlE4rcajszoeSWywS5O27JshTHXCNdkA	4ce4ad2f-33ca-4ea5-a4fd-50e479010314	2024-09-14 20:39:49.587+00	172.19.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36	\N	http://localhost:8055	\N
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter) FROM stdin;
1	Directus	\N	#6644FF	\N	\N	\N	\N	25	\N	all	\N	\N	\N	\N	\N	\N	\N	fr-FR	\N	\N	auto	\N	\N	\N	\N	\N	\N	\N	f	t	\N	\N
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides) FROM stdin;
0b0c225f-b367-4a09-955e-916e14b8f477	Admin	User	idea@mail.com	$argon2id$v=19$m=65536,t=3,p=4$cU3DodE8s9L/8RVfOG8HqQ$ZTDzrloIkk4voqhXLexmzx0cYfVJBKhUEXaWKuKEMLg	\N	\N	\N	\N	ec065cc2-8050-4bd9-919f-29e454b5d895	\N	\N	active	e727f039-5e31-4a1e-81b8-7708f9d9a956	\N	2024-08-29 15:02:44.752+00	/settings/policies/abf8a154-5b1c-4a46-ac9c-7300570f4f17	default	\N	\N	t	\N	\N	\N	\N	\N
4ce4ad2f-33ca-4ea5-a4fd-50e479010314	Admin	User	tsifily@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$VWrsEl1Ip7FZ2W5qgpkM9g$HyvVupUcfkM2voyHNmktEp1sHGZrjTGY5AuuWlRj0+U	\N	\N	\N	\N	\N	\N	\N	active	53bbdf30-9b29-4498-9abb-43c28e6e2ad2	PqDhpLXLfwYPJ-t8tpH0QyTxMh_gvXAY	2024-09-13 20:39:49.611+00	/content/abonne_article	default	\N	\N	t	\N	\N	\N	\N	\N
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_webhooks; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
\.


--
-- Data for Name: equipe; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.equipe ("idEqu", "photoEqu", "nomEqu", "descriptionEqu") FROM stdin;
1	c2a271a3-f814-4bdd-aa8f-c3fbbe89863f	ANNA Fanjava	\N
2	6ae25356-56e6-4789-80fc-f55c66db0828	ANDO	\N
3	d3a2837a-5baa-4473-b2f8-bdb0e67f3c02	FORESTINE	\N
\.


--
-- Data for Name: evenement; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.evenement ("idEve", "titreEve", "contenuEve", "photoEve", "datePublicationEve", publie) FROM stdin;
1	Formation “Data Analyst pour tous” dans l'enceinte du domaine Agro de l'Université d'Ankatso	L'ONG IDEA Academy a organisé une formation les 14 et 15 juin 2024 au domaine Agro de l'Université d'Ankatso pour rendre le métier de data analyst accessible à tous. Sans prérequis ni connaissances en programmation, cette formation était ouverte à tous les étudiants, peu importe leur filière.\nLe programme couvrait des aspects essentiels du travail de data analyst : analyses statistiques, collecte et traitement des données, visualisation et modélisation. Les participants ont appris à interpréter les données, les nettoyer et les préparer, puis à les représenter graphiquement pour une meilleure compréhension. La modélisation des données a été abordée pour montrer comment créer des modèles prédictifs et analyser les tendances futures.\nCette formation a offert aux participants une vision complète des compétences et techniques nécessaires pour réussir en tant que data analyst.	2e2eae62-ac2c-4106-867e-ecad38cf174a	2024-09-10	t
2	Partenariat prometteur entre l'École Nationale d'Informatique (ENI) et l'ONG IDEA Academy	Nous remercions sincèrement la Direction et l'administration de l'ENI pour leur confiance et leur soutien essentiel. Leur vision partagée pour un environnement d'apprentissage de qualité est au cœur de ce partenariat.\nCe partenariat va au-delà d'une simple collaboration. Il représente notre engagement commun à offrir des opportunités éducatives de haute qualité, à encourager l'innovation technologique, et à soutenir le développement des jeunes talents. Nous espérons inspirer les étudiants à exceller dans leurs futures carrières et à contribuer significativement à la société.\nNous sommes convaincus que ce partenariat créera des opportunités inédites pour les étudiants et les jeunes professionnels. Nous sommes impatients de voir les projets et initiatives innovantes qui en découleront.\nEncore une fois, merci à la Direction et à l'administration de l'ENI pour leur précieuse coopération. Nous sommes enthousiastes à l'idée de travailler ensemble pour atteindre nos objectifs communs et construire un avenir prometteur pour les étudiants et les jeunes talents en informatique. Restez à l'écoute pour plus de mises à jour sur les initiatives à venir.	588a6efb-115c-4997-828b-fbe35eb17df4	2024-09-03	t
3	Conférence au KSLMD Fianarantsoa sur le thème "Jeunes talents, grandes ambitions: une immersion dans les métiers de la Data." 	L'ONG IDEA Academy, en collaboration avec l'ENI, a organisé une série de conférences intitulée "Jeunes talents, grandes ambitions : une immersion dans les métiers de la Data" les 13, 14 et 15 mai 2024, au KSLMD et à l'ENI. Le premier jour, les sessions portaient sur "Se vendre avec succès", pour aider les participants à valoriser leur potentiel et leurs compétences, et "Jeunes talents, grandes ambitions", une introduction aux métiers de la Data. Les deux jours suivants, des ateliers d'initiation ont été proposés pour découvrir les métiers de Data Analyst, Data Scientist, Data Engineer, ML Engineer, Data Architect et BI Developer.	68d30d37-66ef-435e-adab-e602f0f422b3	2024-09-10	t
\.


--
-- Data for Name: fonction; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.fonction ("idFon", "titreFon", "desponibiliteFon", equipe) FROM stdin;
5	Comissaire Aux Comptes	\N	\N
6	Conseiller	\N	\N
2	PCA	\N	2
3	Responsable Administratif	\N	3
1	Président 	\N	2
4	Trésorier 	\N	3
\.


--
-- Data for Name: galerie; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.galerie ("idGal", "titreGal", "descriptionGal", "idCon") FROM stdin;
1	carrousel	Image sous forme de carrousel	1
2	vision	Vision Image	1
3	mission	galerie pour mission	1
4	article	article partage par l'ONG	1
5	article	article partage par l'ONG	1
6	Actualite	Galerie pour l'actualite	1
7	valeur	galerie pour les valeurs	1
8	actualite	galerie pour l'actualite	1
9	article	galerie pour l'article	1
10	Actualite	galerie pour l'actualite	\N
\.


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.image ("idIma", "nomIma", "fichierIma") FROM stdin;
7	article	\N
8	article	\N
9	\N	\N
11	actualite	\N
2	carrousel 1	3502b028-b041-449d-9964-2754090b5b12
3	carousel 2	6254a7f7-c9fe-48bc-8d17-4643e98c2bee
4	carousel 3	99ae9112-3192-4d60-af04-b870903cd6cc
5	vision	a776983f-794b-4851-adbc-364433aa81b4
6	mission image	c678eedd-8323-4dff-a9a7-e96a0bf87258
10	valeur	1f5dfd26-c544-4a42-8679-f4aefcf182d9
\.


--
-- Data for Name: image_galerie; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.image_galerie (id, "image_idIma", "galerie_idGal") FROM stdin;
1	2	1
2	4	1
3	3	1
4	5	2
5	6	3
6	7	4
7	8	5
8	11	6
9	10	7
10	11	8
\.


--
-- Data for Name: partenaire; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.partenaire ("idPart", "nomPart", "descriptionPart", "dateDebutPart", "contactPart", "emailPart", "adressePart", "siteWebPart", "nomPrenomResponsablePart", status, "logoPart", "idCon") FROM stdin;
1	Fonds Urgence et Développement 	Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.	2024-08-29	\N	tsifily@gmail.com	\N	\N	ANJARATANDRIFY Tsifily Anna Fanjava	t	8030abef-b8a6-4874-94fd-2649a770bfa2	1
3	MANAO	deeee	\N	0340678909	stephanie@gmail.com	Igaga Fianarantsoa	\N	anna	f	\N	\N
2	ENI	Créé en 2012, le Fonds Urgence et Développement de BNP Paribas collecte et abonde les dons des collaborateurs, retraités et clients du groupe afin de soutenir les actions menées par MSF en contextes d'urgences ou sur des projets de plus long terme. Récemment, le FUD s'est engagé en soutien aux actions d'urgence en Ukraine, aux activités que MSF mène auprès des réfugiés rohingyas au Bangladesh ou encore ou à la suite des séismes en Turquie et Syrie.	\N	\N	test@gmail.com	\N	\N	\N	t	\N	\N
4	MANAO	hhhhhhhhh	\N	0340579129	stephanie@gmail.com	Igaga Fianarantsoa	\N	anna	f	\N	\N
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.test (id, testimg) FROM stdin;
\.


--
-- Data for Name: typePartenariat; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public."typePartenariat" ("idTypePart", "nomTypePart") FROM stdin;
1	Mécénat financier 
2	Mobilisation des collaborateurs
3	Mécénat de compétences
4	Don en nature
5	Soutien financier
6	Mécénat de compétences
7	Produit-partage
8	Finance solidaire
9	Micro-don
10	Subvention financière
11	Mobilisation des utilisateurs
12	Mobilisation des collaborateurs
13	Mécénat de compétences
14	Financement de programme
15	Parrainage solidaire
16	Stratégiques
17	Matériel
18	Service
\.


--
-- Data for Name: typePartenariat_partenaire; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public."typePartenariat_partenaire" (id, "typePartenariat_idTypePart", "partenaire_idPart") FROM stdin;
1	1	1
2	2	1
3	4	2
4	5	2
5	17	3
6	9	3
7	17	4
\.


--
-- Data for Name: valeur; Type: TABLE DATA; Schema: public; Owner: annafanjava
--

COPY public.valeur ("idVal", "nomVal", "iconVal", "idCon") FROM stdin;
1	Solidarité et ambition éducative	avg_pace	1
2	Partage de connaissances et entraide entre les jeunes génération	toys_fan	1
\.


--
-- Name: abonne_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.abonne_article_id_seq', 17, true);


--
-- Name: abonne_idAb_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."abonne_idAb_seq"', 9, true);


--
-- Name: actualite_idAct_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."actualite_idAct_seq"', 1, true);


--
-- Name: article_idArt_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."article_idArt_seq"', 2, true);


--
-- Name: auteur_idAut_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."auteur_idAut_seq"', 2, true);


--
-- Name: avis_idAvis_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."avis_idAvis_seq"', 1, true);


--
-- Name: categorie_idCat_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."categorie_idCat_seq"', 6, true);


--
-- Name: concernant_idCon_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."concernant_idCon_seq"', 1, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 977, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 146, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 35, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 27, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 36, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 924, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, true);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: equipe_idEqu_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."equipe_idEqu_seq"', 3, true);


--
-- Name: evenement_idEve_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."evenement_idEve_seq"', 3, true);


--
-- Name: fonction_idFon_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."fonction_idFon_seq"', 6, true);


--
-- Name: galerie_idGal_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."galerie_idGal_seq"', 10, true);


--
-- Name: image_galerie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.image_galerie_id_seq', 10, true);


--
-- Name: image_idIma_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."image_idIma_seq"', 11, true);


--
-- Name: partenaire_idPart_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."partenaire_idPart_seq"', 4, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public.test_id_seq', 1, false);


--
-- Name: typePartenariat_idTypePart_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."typePartenariat_idTypePart_seq"', 18, true);


--
-- Name: typePartenariat_partenaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."typePartenariat_partenaire_id_seq"', 7, true);


--
-- Name: valeur_idVal_seq; Type: SEQUENCE SET; Schema: public; Owner: annafanjava
--

SELECT pg_catalog.setval('public."valeur_idVal_seq"', 2, true);


--
-- Name: abonne_article abonne_article_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne_article
    ADD CONSTRAINT abonne_article_pkey PRIMARY KEY (id);


--
-- Name: abonne abonne_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne
    ADD CONSTRAINT abonne_pkey PRIMARY KEY ("idAb");


--
-- Name: actualite actualite_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.actualite
    ADD CONSTRAINT actualite_pkey PRIMARY KEY ("idAct");


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY ("idArt");


--
-- Name: auteur auteur_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.auteur
    ADD CONSTRAINT auteur_pkey PRIMARY KEY ("idAut");


--
-- Name: avis avis_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.avis
    ADD CONSTRAINT avis_pkey PRIMARY KEY ("idAvis");


--
-- Name: categorie categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY ("idCat");


--
-- Name: concernant concernant_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.concernant
    ADD CONSTRAINT concernant_pkey PRIMARY KEY ("idCon");


--
-- Name: directus_access directus_access_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_policies directus_policies_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


--
-- Name: equipe equipe_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY ("idEqu");


--
-- Name: evenement evenement_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY ("idEve");


--
-- Name: fonction fonction_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.fonction
    ADD CONSTRAINT fonction_pkey PRIMARY KEY ("idFon");


--
-- Name: galerie galerie_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.galerie
    ADD CONSTRAINT galerie_pkey PRIMARY KEY ("idGal");


--
-- Name: image_galerie image_galerie_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image_galerie
    ADD CONSTRAINT image_galerie_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY ("idIma");


--
-- Name: partenaire partenaire_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.partenaire
    ADD CONSTRAINT partenaire_pkey PRIMARY KEY ("idPart");


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- Name: typePartenariat_partenaire typePartenariat_partenaire_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat_partenaire"
    ADD CONSTRAINT "typePartenariat_partenaire_pkey" PRIMARY KEY (id);


--
-- Name: typePartenariat typePartenariat_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat"
    ADD CONSTRAINT "typePartenariat_pkey" PRIMARY KEY ("idTypePart");


--
-- Name: valeur valeur_pkey; Type: CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.valeur
    ADD CONSTRAINT valeur_pkey PRIMARY KEY ("idVal");


--
-- Name: abonne_article abonne_article_abonne_idab_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne_article
    ADD CONSTRAINT abonne_article_abonne_idab_foreign FOREIGN KEY ("abonne_idAb") REFERENCES public.abonne("idAb") ON DELETE SET NULL;


--
-- Name: abonne_article abonne_article_article_idart_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.abonne_article
    ADD CONSTRAINT abonne_article_article_idart_foreign FOREIGN KEY ("article_idArt") REFERENCES public.article("idArt") ON DELETE SET NULL;


--
-- Name: actualite actualite_idgalerie_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.actualite
    ADD CONSTRAINT actualite_idgalerie_foreign FOREIGN KEY ("idGalerie") REFERENCES public.galerie("idGal") ON DELETE SET NULL;


--
-- Name: actualite actualite_imageact_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.actualite
    ADD CONSTRAINT actualite_imageact_foreign FOREIGN KEY ("imageAct") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: article article_auteur_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_auteur_foreign FOREIGN KEY (auteur) REFERENCES public.auteur("idAut") ON DELETE SET NULL;


--
-- Name: article article_idgalerie_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_idgalerie_foreign FOREIGN KEY ("idGalerie") REFERENCES public.galerie("idGal") ON DELETE SET NULL;


--
-- Name: article article_imageart_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_imageart_foreign FOREIGN KEY ("imageArt") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: auteur auteur_photoaut_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.auteur
    ADD CONSTRAINT auteur_photoaut_foreign FOREIGN KEY ("photoAut") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: concernant concernant_logocon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.concernant
    ADD CONSTRAINT concernant_logocon_foreign FOREIGN KEY ("logoCon") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: directus_access directus_access_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_access directus_access_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_policy_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_roles directus_roles_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_registration_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_webhooks directus_webhooks_migrated_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;


--
-- Name: equipe equipe_photoequ_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_photoequ_foreign FOREIGN KEY ("photoEqu") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: evenement evenement_photoeve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_photoeve_foreign FOREIGN KEY ("photoEve") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: fonction fonction_equipe_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.fonction
    ADD CONSTRAINT fonction_equipe_foreign FOREIGN KEY (equipe) REFERENCES public.equipe("idEqu") ON DELETE SET NULL;


--
-- Name: galerie galerie_idcon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.galerie
    ADD CONSTRAINT galerie_idcon_foreign FOREIGN KEY ("idCon") REFERENCES public.concernant("idCon") ON DELETE SET NULL;


--
-- Name: image image_fichierima_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_fichierima_foreign FOREIGN KEY ("fichierIma") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: image_galerie image_galerie_galerie_idgal_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image_galerie
    ADD CONSTRAINT image_galerie_galerie_idgal_foreign FOREIGN KEY ("galerie_idGal") REFERENCES public.galerie("idGal") ON DELETE SET NULL;


--
-- Name: image_galerie image_galerie_image_idima_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.image_galerie
    ADD CONSTRAINT image_galerie_image_idima_foreign FOREIGN KEY ("image_idIma") REFERENCES public.image("idIma") ON DELETE SET NULL;


--
-- Name: partenaire partenaire_idcon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.partenaire
    ADD CONSTRAINT partenaire_idcon_foreign FOREIGN KEY ("idCon") REFERENCES public.concernant("idCon") ON DELETE SET NULL;


--
-- Name: partenaire partenaire_logopart_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.partenaire
    ADD CONSTRAINT partenaire_logopart_foreign FOREIGN KEY ("logoPart") REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: test test_testimg_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_testimg_foreign FOREIGN KEY (testimg) REFERENCES public.directus_files(id) ON DELETE SET NULL;


--
-- Name: typePartenariat_partenaire typepartenariat_partenaire_partenaire_idpart_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat_partenaire"
    ADD CONSTRAINT typepartenariat_partenaire_partenaire_idpart_foreign FOREIGN KEY ("partenaire_idPart") REFERENCES public.partenaire("idPart") ON DELETE SET NULL;


--
-- Name: typePartenariat_partenaire typepartenariat_partenaire_typepartenariat__2e44035b_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public."typePartenariat_partenaire"
    ADD CONSTRAINT typepartenariat_partenaire_typepartenariat__2e44035b_foreign FOREIGN KEY ("typePartenariat_idTypePart") REFERENCES public."typePartenariat"("idTypePart") ON DELETE SET NULL;


--
-- Name: valeur valeur_idcon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: annafanjava
--

ALTER TABLE ONLY public.valeur
    ADD CONSTRAINT valeur_idcon_foreign FOREIGN KEY ("idCon") REFERENCES public.concernant("idCon") ON DELETE SET NULL;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

