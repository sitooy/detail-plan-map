-- Table: asemakaava.ak_alueet

-- DROP TABLE asemakaava.ak_alueet;

CREATE TABLE asemakaava.ak_alueet
(
  id serial NOT NULL,
  luokka character varying(200),
  color character varying(20),
  orig_lvl character varying(200),
  orig_file character varying(200),
  geom geometry,
  CONSTRAINT ak_alueet_pkey PRIMARY KEY (id),
  CONSTRAINT enforce_dims_geom CHECK (st_ndims(geom) = 2),
  CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 3067)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE asemakaava.ak_alueet
  OWNER TO gis;

-- Index: asemakaava.ak_alueet_geom_1425296598542

-- DROP INDEX asemakaava.ak_alueet_geom_1425296598542;

CREATE INDEX ak_alueet_geom_1425296598542
  ON asemakaava.ak_alueet
  USING gist
  (geom);

-- Index: asemakaava.ak_alueet_luokka_1425296598484

-- DROP INDEX asemakaava.ak_alueet_luokka_1425296598484;

CREATE INDEX ak_alueet_luokka_1425296598484
  ON asemakaava.ak_alueet
  USING btree
  (luokka);

