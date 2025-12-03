-- Create target database
CREATE DATABASE "Phones_cible"
    WITH TEMPLATE = template0 
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = libc 
    LOCALE = 'fr';

\connect "Phones_cible"

-- Table Cible_postgres(structure uniquement)

CREATE TABLE public."Cible_postgres" (
    marque character varying(50),
    modele character varying(50),
    prix_usd real,
    ram_gb integer,
    storage_gb integer,
    support5g character varying(3),
    os character varying(7),
    date_sortie character varying(20),
    prix_cfa real,
    vendeur character varying(50),
    "Pays" character varying(50)
);


ALTER TABLE public."Cible_postgres" OWNER TO postgres;


-- Table etl_metrics (structure uniquement)

CREATE TABLE public.etl_metrics (
    job_name character varying,
    job_start timestamp without time zone,
    job_end timestamp without time zone,
    duration_ms bigint,
    rows_inserted integer,
    rows_rejected integer,
    job_status character varying
);


ALTER TABLE public.etl_metrics OWNER TO postgres;
