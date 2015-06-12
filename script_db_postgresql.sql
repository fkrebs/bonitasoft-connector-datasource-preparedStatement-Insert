-- Table: test_prepared_statement
-- DROP TABLE test_prepared_statement;

CREATE TABLE test_prepared_statement
(
  id integer NOT NULL DEFAULT nextval('test_prepared_statment_id_seq'::regclass),
  test_string character varying,
  test_int integer,
  test_double double precision,
  test_date timestamp with time zone,
  CONSTRAINT test_id_pm PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE test_prepared_statement
  OWNER TO postgres;

  
-- Sequence: test_prepared_statement_id_seq
-- DROP SEQUENCE test_prepared_statement_id_seq;

CREATE SEQUENCE test_prepared_statement_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 3
  CACHE 1;
ALTER TABLE test_prepared_statement_id_seq
  OWNER TO postgres;  