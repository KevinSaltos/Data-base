-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.7.2
-- PostgreSQL version: 9.4
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE new_database;
-- CREATE DATABASE new_database
-- ;
-- -- ddl-end --
-- 

-- object: public."Vehiculos" | type: TABLE --
-- DROP TABLE public."Vehiculos";
CREATE TABLE public."Vehiculos"(
	"Num_placa" integer NOT NULL,
	"Color" character varying(20) NOT NULL,
	"Anio_fabricacion" date NOT NULL,
	"Modelo" character varying NOT NULL,
	"Cilindraje" integer NOT NULL,
	"Correo" character varying NOT NULL,
	CONSTRAINT "Num_art_clave_primaria" PRIMARY KEY ("Num_placa")

);
-- ddl-end --
-- object: public."Matricula" | type: TABLE --
-- DROP TABLE public."Matricula";
CREATE TABLE public."Matricula"(
	"Num_matricula" integer NOT NULL,
	"Num_placa" integer NOT NULL,
	"Renovacion_matricula" boolean NOT NULL,
	"Categoria" char NOT NULL,
	"Año" date NOT NULL,
	"Correo" character varying NOT NULL,
	CONSTRAINT "id_detalle_clave primaria" PRIMARY KEY ("Num_matricula")

);
-- ddl-end --
-- object: public."Dueños" | type: TABLE --
-- DROP TABLE public."Dueños";
CREATE TABLE public."Dueños"(
	"Correo" character varying NOT NULL,
	"Teléfono" integer NOT NULL,
	"Num_licencia" integer NOT NULL,
	"Nombre" character varying NOT NULL,
	"Lugar_trabajo" character varying DEFAULT No,
	CONSTRAINT "id_orden_calve primaria" PRIMARY KEY ("Correo")

);
-- ddl-end --
-- object: "Correo" | type: CONSTRAINT --
-- ALTER TABLE public."Vehiculos" DROP CONSTRAINT "Correo";
ALTER TABLE public."Vehiculos" ADD CONSTRAINT "Correo" FOREIGN KEY ("Correo")
REFERENCES public."Dueños" ("Correo") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


-- object: "Correo" | type: CONSTRAINT --
-- ALTER TABLE public."Matricula" DROP CONSTRAINT "Correo";
ALTER TABLE public."Matricula" ADD CONSTRAINT "Correo" FOREIGN KEY ("Correo")
REFERENCES public."Dueños" ("Correo") MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --



