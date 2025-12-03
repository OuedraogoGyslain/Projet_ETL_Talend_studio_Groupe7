-- Create source database
CREATE DATABASE "Phones" 
    WITH TEMPLATE = template0 
    ENCODING = 'UTF8' 
    LOCALE_PROVIDER = libc 
    LOCALE = 'fr';

\connect "Phones"

-- Table: brand_origin (source)

CREATE TABLE public.brand_origin (
    brand character varying(50) NOT NULL,
    country character varying(50),
    continent character varying(20)
);

ALTER TABLE ONLY public.brand_origin
    ADD CONSTRAINT brand_origin_pkey PRIMARY KEY (brand);
