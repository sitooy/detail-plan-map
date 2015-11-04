-- Table: asemakaava.ak_tekstit

-- DROP TABLE asemakaava.ak_tekstit;

CREATE TABLE asemakaava.ak_tekstit
(
  id serial NOT NULL,
  luokka character varying(50),
  orig_lvl character varying(200),
  orig_file character varying(200),
  rotation real,
  string character varying(200),
  fontsize smallint,
  geom geometry,
  CONSTRAINT ak_tekstit_pkey PRIMARY KEY (id),
  CONSTRAINT enforce_dims_geom CHECK (st_ndims(geom) = 2),
  CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 3067)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE asemakaava.ak_tekstit
  OWNER TO gis;

-- Index: asemakaava.ak_tekstit_geom_1425279252285

-- DROP INDEX asemakaava.ak_tekstit_geom_1425279252285;

CREATE INDEX ak_tekstit_geom_1425279252285
  ON asemakaava.ak_tekstit
  USING gist
  (geom);

-- Index: asemakaava.ak_tekstit_luokka_1425279252110

-- DROP INDEX asemakaava.ak_tekstit_luokka_1425279252110;

CREATE INDEX ak_tekstit_luokka_1425279252110
  ON asemakaava.ak_tekstit
  USING btree
  (luokka);

