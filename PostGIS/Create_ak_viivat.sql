-- Table: asemakaava.ak_viivat

-- DROP TABLE asemakaava.ak_viivat;

CREATE TABLE asemakaava.ak_viivat
(
  id serial NOT NULL,
  luokka character varying(200),
  orig_lvl character varying(200),
  orig_file character varying(200),
  geom geometry,
  CONSTRAINT ak_viivat_pkey PRIMARY KEY (id),
  CONSTRAINT enforce_dims_geom CHECK (st_ndims(geom) = 2),
  CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) = 3067)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE asemakaava.ak_viivat
  OWNER TO gis;

-- Index: asemakaava.ak_viivat_geom_1426579904659

-- DROP INDEX asemakaava.ak_viivat_geom_1426579904659;

CREATE INDEX ak_viivat_geom_1426579904659
  ON asemakaava.ak_viivat
  USING gist
  (geom);

-- Index: asemakaava.ak_viivat_luokka_1426579903618

-- DROP INDEX asemakaava.ak_viivat_luokka_1426579903618;

CREATE INDEX ak_viivat_luokka_1426579903618
  ON asemakaava.ak_viivat
  USING btree
  (luokka);

