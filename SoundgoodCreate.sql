--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: address_for_instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address_for_instructor (
    id integer NOT NULL,
    street character varying(500),
    zip character varying(500),
    city character varying(500)
);


ALTER TABLE public.address_for_instructor OWNER TO postgres;

--
-- Name: address_for_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_for_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_for_instructor_id_seq OWNER TO postgres;

--
-- Name: address_for_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_for_instructor_id_seq OWNED BY public.address_for_instructor.id;


--
-- Name: address_for_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address_for_students (
    id integer NOT NULL,
    street character varying(500),
    zip character varying(500),
    city character varying(500)
);


ALTER TABLE public.address_for_students OWNER TO postgres;

--
-- Name: address_for_students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_for_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_for_students_id_seq OWNER TO postgres;

--
-- Name: address_for_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_for_students_id_seq OWNED BY public.address_for_students.id;


--
-- Name: contact_person_email_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person_email_address (
    id integer NOT NULL,
    email_address character varying(500)
);


ALTER TABLE public.contact_person_email_address OWNER TO postgres;

--
-- Name: contact_person_email_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_person_email_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_person_email_address_id_seq OWNER TO postgres;

--
-- Name: contact_person_email_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_person_email_address_id_seq OWNED BY public.contact_person_email_address.id;


--
-- Name: contact_person_phone_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person_phone_number (
    id integer NOT NULL,
    phone_number character varying NOT NULL
);


ALTER TABLE public.contact_person_phone_number OWNER TO postgres;

--
-- Name: contact_person_phone_number_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contact_person_phone_number_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_person_phone_number_id_seq OWNER TO postgres;

--
-- Name: contact_person_phone_number_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contact_person_phone_number_id_seq OWNED BY public.contact_person_phone_number.id;


--
-- Name: enrolled_students_ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrolled_students_ensemble (
    student_id integer NOT NULL,
    ensemble_id integer NOT NULL
);


ALTER TABLE public.enrolled_students_ensemble OWNER TO postgres;

--
-- Name: enrolled_students_ensemble_ensemble_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrolled_students_ensemble_ensemble_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_students_ensemble_ensemble_id_seq OWNER TO postgres;

--
-- Name: enrolled_students_ensemble_ensemble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrolled_students_ensemble_ensemble_id_seq OWNED BY public.enrolled_students_ensemble.ensemble_id;


--
-- Name: enrolled_students_ensemble_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrolled_students_ensemble_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_students_ensemble_student_id_seq OWNER TO postgres;

--
-- Name: enrolled_students_ensemble_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrolled_students_ensemble_student_id_seq OWNED BY public.enrolled_students_ensemble.student_id;


--
-- Name: enrolled_students_group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrolled_students_group_lesson (
    student_id integer NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.enrolled_students_group_lesson OWNER TO postgres;

--
-- Name: enrolled_students_group_lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrolled_students_group_lesson_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_students_group_lesson_lesson_id_seq OWNER TO postgres;

--
-- Name: enrolled_students_group_lesson_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrolled_students_group_lesson_lesson_id_seq OWNED BY public.enrolled_students_group_lesson.lesson_id;


--
-- Name: enrolled_students_group_lesson_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrolled_students_group_lesson_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_students_group_lesson_student_id_seq OWNER TO postgres;

--
-- Name: enrolled_students_group_lesson_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrolled_students_group_lesson_student_id_seq OWNED BY public.enrolled_students_group_lesson.student_id;


--
-- Name: ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ensemble (
    id integer NOT NULL,
    room character varying(500),
    "time" timestamp without time zone,
    date date,
    minimum_students integer,
    genre character varying(500),
    instructor_salay integer,
    instructor_id integer NOT NULL,
    price_id integer NOT NULL
);


ALTER TABLE public.ensemble OWNER TO postgres;

--
-- Name: ensemble_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_id_seq OWNER TO postgres;

--
-- Name: ensemble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_id_seq OWNED BY public.ensemble.id;


--
-- Name: ensemble_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_instructor_id_seq OWNER TO postgres;

--
-- Name: ensemble_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_instructor_id_seq OWNED BY public.ensemble.instructor_id;


--
-- Name: ensemble_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ensemble_price (
    id integer NOT NULL,
    sibling_discount integer,
    price integer
);


ALTER TABLE public.ensemble_price OWNER TO postgres;

--
-- Name: ensemble_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_price_id_seq OWNER TO postgres;

--
-- Name: ensemble_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_price_id_seq OWNED BY public.ensemble.price_id;


--
-- Name: ensemble_price_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ensemble_price_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ensemble_price_id_seq1 OWNER TO postgres;

--
-- Name: ensemble_price_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ensemble_price_id_seq1 OWNED BY public.ensemble_price.id;


--
-- Name: fee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fee (
    student_id integer NOT NULL,
    fee_for_lessons integer,
    fee_for_instruments integer
);


ALTER TABLE public.fee OWNER TO postgres;

--
-- Name: fee_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fee_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fee_student_id_seq OWNER TO postgres;

--
-- Name: fee_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fee_student_id_seq OWNED BY public.fee.student_id;


--
-- Name: group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lesson (
    id integer NOT NULL,
    room character varying(500),
    "time" timestamp without time zone,
    date date,
    minimum_students integer,
    level character varying(500),
    instructor_salary integer,
    instrument character varying,
    instructor_id integer NOT NULL,
    price_id integer NOT NULL
);


ALTER TABLE public.group_lesson OWNER TO postgres;

--
-- Name: group_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_id_seq OWNER TO postgres;

--
-- Name: group_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_id_seq OWNED BY public.group_lesson.id;


--
-- Name: group_lesson_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_instructor_id_seq OWNER TO postgres;

--
-- Name: group_lesson_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_instructor_id_seq OWNED BY public.group_lesson.instructor_id;


--
-- Name: group_lesson_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lesson_price (
    id integer NOT NULL,
    sibling_discount integer,
    price integer
);


ALTER TABLE public.group_lesson_price OWNER TO postgres;

--
-- Name: group_lesson_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_price_id_seq OWNER TO postgres;

--
-- Name: group_lesson_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_price_id_seq OWNED BY public.group_lesson.price_id;


--
-- Name: group_lesson_price_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_lesson_price_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_lesson_price_id_seq1 OWNER TO postgres;

--
-- Name: group_lesson_price_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_lesson_price_id_seq1 OWNED BY public.group_lesson_price.id;


--
-- Name: individual_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson (
    id integer NOT NULL,
    room character varying(500),
    "time" timestamp without time zone,
    date date,
    level character varying(500),
    instructor_salary integer,
    instrument character varying(500),
    instructor_id integer NOT NULL,
    student_id integer NOT NULL,
    price_id integer NOT NULL
);


ALTER TABLE public.individual_lesson OWNER TO postgres;

--
-- Name: individual_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_id_seq OWNED BY public.individual_lesson.id;


--
-- Name: individual_lesson_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_instructor_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_instructor_id_seq OWNED BY public.individual_lesson.instructor_id;


--
-- Name: individual_lesson_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson_price (
    id integer NOT NULL,
    sibling_discount integer,
    price integer
);


ALTER TABLE public.individual_lesson_price OWNER TO postgres;

--
-- Name: individual_lesson_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_price_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_price_id_seq OWNED BY public.individual_lesson.price_id;


--
-- Name: individual_lesson_price_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_price_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_price_id_seq1 OWNER TO postgres;

--
-- Name: individual_lesson_price_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_price_id_seq1 OWNED BY public.individual_lesson_price.id;


--
-- Name: individual_lesson_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.individual_lesson_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.individual_lesson_student_id_seq OWNER TO postgres;

--
-- Name: individual_lesson_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.individual_lesson_student_id_seq OWNED BY public.individual_lesson.student_id;


--
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    id integer NOT NULL,
    person_number character varying(12),
    name character varying(500),
    teaches_ensembles boolean,
    salary integer
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- Name: instructor_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_address (
    address_id integer NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_address OWNER TO postgres;

--
-- Name: instructor_address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_address_address_id_seq OWNER TO postgres;

--
-- Name: instructor_address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_address_address_id_seq OWNED BY public.instructor_address.address_id;


--
-- Name: instructor_address_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_address_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_address_instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_address_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_address_instructor_id_seq OWNED BY public.instructor_address.instructor_id;


--
-- Name: instructor_email_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_email_address (
    email_address character varying(500) NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_email_address OWNER TO postgres;

--
-- Name: instructor_email_address_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_email_address_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_email_address_instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_email_address_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_email_address_instructor_id_seq OWNED BY public.instructor_email_address.instructor_id;


--
-- Name: instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_id_seq OWNED BY public.instructor.id;


--
-- Name: instructor_instruments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_instruments (
    instructor_id integer NOT NULL,
    instrument_id integer NOT NULL
);


ALTER TABLE public.instructor_instruments OWNER TO postgres;

--
-- Name: instructor_instruments_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_instruments_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_instruments_instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_instruments_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_instruments_instructor_id_seq OWNED BY public.instructor_instruments.instructor_id;


--
-- Name: instructor_instruments_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_instruments_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_instruments_instrument_id_seq OWNER TO postgres;

--
-- Name: instructor_instruments_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_instruments_instrument_id_seq OWNED BY public.instructor_instruments.instrument_id;


--
-- Name: instructor_phone_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_phone_number (
    phone_number character varying(500) NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_phone_number OWNER TO postgres;

--
-- Name: instructor_phone_number_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_phone_number_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructor_phone_number_instructor_id_seq OWNER TO postgres;

--
-- Name: instructor_phone_number_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_phone_number_instructor_id_seq OWNED BY public.instructor_phone_number.instructor_id;


--
-- Name: instruments_for_rental; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instruments_for_rental (
    id integer NOT NULL,
    brand character varying(500),
    type character varying(500) NOT NULL,
    instrument_price integer,
    quantity_in_stock integer
);


ALTER TABLE public.instruments_for_rental OWNER TO postgres;

--
-- Name: instruments_for_rental_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instruments_for_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instruments_for_rental_id_seq OWNER TO postgres;

--
-- Name: instruments_for_rental_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instruments_for_rental_id_seq OWNED BY public.instruments_for_rental.id;


--
-- Name: present_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.present_skill (
    student_id integer NOT NULL,
    skill character varying(500)
);


ALTER TABLE public.present_skill OWNER TO postgres;

--
-- Name: present_skill_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.present_skill_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.present_skill_student_id_seq OWNER TO postgres;

--
-- Name: present_skill_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.present_skill_student_id_seq OWNED BY public.present_skill.student_id;


--
-- Name: rent_instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rent_instrument (
    id integer NOT NULL,
    date_when_rented date NOT NULL,
    instrument_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.rent_instrument OWNER TO postgres;

--
-- Name: rent_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rent_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rent_instrument_id_seq OWNER TO postgres;

--
-- Name: rent_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rent_instrument_id_seq OWNED BY public.rent_instrument.id;


--
-- Name: rent_instrument_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rent_instrument_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rent_instrument_instrument_id_seq OWNER TO postgres;

--
-- Name: rent_instrument_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rent_instrument_instrument_id_seq OWNED BY public.rent_instrument.instrument_id;


--
-- Name: rent_instrument_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rent_instrument_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rent_instrument_student_id_seq OWNER TO postgres;

--
-- Name: rent_instrument_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rent_instrument_student_id_seq OWNED BY public.rent_instrument.student_id;


--
-- Name: siblings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siblings (
    student_id integer NOT NULL,
    sibling_id integer NOT NULL
);


ALTER TABLE public.siblings OWNER TO postgres;

--
-- Name: siblings_sibling_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siblings_sibling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.siblings_sibling_id_seq OWNER TO postgres;

--
-- Name: siblings_sibling_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siblings_sibling_id_seq OWNED BY public.siblings.sibling_id;


--
-- Name: siblings_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siblings_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.siblings_student_id_seq OWNER TO postgres;

--
-- Name: siblings_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siblings_student_id_seq OWNED BY public.siblings.student_id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id integer NOT NULL,
    name character varying(500),
    person_number character varying(12)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_address (
    student_id integer NOT NULL,
    address_id integer NOT NULL
);


ALTER TABLE public.student_address OWNER TO postgres;

--
-- Name: student_address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_address_address_id_seq OWNER TO postgres;

--
-- Name: student_address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_address_address_id_seq OWNED BY public.student_address.address_id;


--
-- Name: student_address_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_address_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_address_student_id_seq OWNER TO postgres;

--
-- Name: student_address_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_address_student_id_seq OWNED BY public.student_address.student_id;


--
-- Name: student_contact_person_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_contact_person_email (
    student_id integer NOT NULL,
    email_id integer NOT NULL
);


ALTER TABLE public.student_contact_person_email OWNER TO postgres;

--
-- Name: student_contact_person_email_email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_contact_person_email_email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_contact_person_email_email_id_seq OWNER TO postgres;

--
-- Name: student_contact_person_email_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_contact_person_email_email_id_seq OWNED BY public.student_contact_person_email.email_id;


--
-- Name: student_contact_person_email_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_contact_person_email_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_contact_person_email_student_id_seq OWNER TO postgres;

--
-- Name: student_contact_person_email_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_contact_person_email_student_id_seq OWNED BY public.student_contact_person_email.student_id;


--
-- Name: student_contact_person_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_contact_person_phone (
    student_id integer NOT NULL,
    phone_id integer NOT NULL
);


ALTER TABLE public.student_contact_person_phone OWNER TO postgres;

--
-- Name: student_contact_person_phone_phone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_contact_person_phone_phone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_contact_person_phone_phone_id_seq OWNER TO postgres;

--
-- Name: student_contact_person_phone_phone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_contact_person_phone_phone_id_seq OWNED BY public.student_contact_person_phone.phone_id;


--
-- Name: student_contact_person_phone_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_contact_person_phone_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_contact_person_phone_student_id_seq OWNER TO postgres;

--
-- Name: student_contact_person_phone_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_contact_person_phone_student_id_seq OWNED BY public.student_contact_person_phone.student_id;


--
-- Name: student_email_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_email_address (
    email_address character varying(500) NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.student_email_address OWNER TO postgres;

--
-- Name: student_email_address_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_email_address_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_email_address_student_id_seq OWNER TO postgres;

--
-- Name: student_email_address_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_email_address_student_id_seq OWNED BY public.student_email_address.student_id;


--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_id_seq OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- Name: student_phone_number; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_phone_number (
    phone_number character varying(500) NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.student_phone_number OWNER TO postgres;

--
-- Name: student_phone_number_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_phone_number_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_phone_number_student_id_seq OWNER TO postgres;

--
-- Name: student_phone_number_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_phone_number_student_id_seq OWNED BY public.student_phone_number.student_id;


--
-- Name: teachable_instruments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachable_instruments (
    id integer NOT NULL,
    type character varying(500) NOT NULL
);


ALTER TABLE public.teachable_instruments OWNER TO postgres;

--
-- Name: teachable_instruments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachable_instruments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachable_instruments_id_seq OWNER TO postgres;

--
-- Name: teachable_instruments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachable_instruments_id_seq OWNED BY public.teachable_instruments.id;


--
-- Name: times_available; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.times_available (
    time_available timestamp(6) without time zone NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.times_available OWNER TO postgres;

--
-- Name: times_available_instructor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.times_available_instructor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.times_available_instructor_id_seq OWNER TO postgres;

--
-- Name: times_available_instructor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.times_available_instructor_id_seq OWNED BY public.times_available.instructor_id;


--
-- Name: address_for_instructor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_for_instructor ALTER COLUMN id SET DEFAULT nextval('public.address_for_instructor_id_seq'::regclass);


--
-- Name: address_for_students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_for_students ALTER COLUMN id SET DEFAULT nextval('public.address_for_students_id_seq'::regclass);


--
-- Name: contact_person_email_address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_email_address ALTER COLUMN id SET DEFAULT nextval('public.contact_person_email_address_id_seq'::regclass);


--
-- Name: contact_person_phone_number id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_phone_number ALTER COLUMN id SET DEFAULT nextval('public.contact_person_phone_number_id_seq'::regclass);


--
-- Name: enrolled_students_ensemble student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_ensemble ALTER COLUMN student_id SET DEFAULT nextval('public.enrolled_students_ensemble_student_id_seq'::regclass);


--
-- Name: enrolled_students_ensemble ensemble_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_ensemble ALTER COLUMN ensemble_id SET DEFAULT nextval('public.enrolled_students_ensemble_ensemble_id_seq'::regclass);


--
-- Name: enrolled_students_group_lesson student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_group_lesson ALTER COLUMN student_id SET DEFAULT nextval('public.enrolled_students_group_lesson_student_id_seq'::regclass);


--
-- Name: enrolled_students_group_lesson lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_group_lesson ALTER COLUMN lesson_id SET DEFAULT nextval('public.enrolled_students_group_lesson_lesson_id_seq'::regclass);


--
-- Name: ensemble id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN id SET DEFAULT nextval('public.ensemble_id_seq'::regclass);


--
-- Name: ensemble instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN instructor_id SET DEFAULT nextval('public.ensemble_instructor_id_seq'::regclass);


--
-- Name: ensemble price_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble ALTER COLUMN price_id SET DEFAULT nextval('public.ensemble_price_id_seq'::regclass);


--
-- Name: ensemble_price id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble_price ALTER COLUMN id SET DEFAULT nextval('public.ensemble_price_id_seq1'::regclass);


--
-- Name: fee student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fee ALTER COLUMN student_id SET DEFAULT nextval('public.fee_student_id_seq'::regclass);


--
-- Name: group_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN id SET DEFAULT nextval('public.group_lesson_id_seq'::regclass);


--
-- Name: group_lesson instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN instructor_id SET DEFAULT nextval('public.group_lesson_instructor_id_seq'::regclass);


--
-- Name: group_lesson price_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson ALTER COLUMN price_id SET DEFAULT nextval('public.group_lesson_price_id_seq'::regclass);


--
-- Name: group_lesson_price id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson_price ALTER COLUMN id SET DEFAULT nextval('public.group_lesson_price_id_seq1'::regclass);


--
-- Name: individual_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN id SET DEFAULT nextval('public.individual_lesson_id_seq'::regclass);


--
-- Name: individual_lesson instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN instructor_id SET DEFAULT nextval('public.individual_lesson_instructor_id_seq'::regclass);


--
-- Name: individual_lesson student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN student_id SET DEFAULT nextval('public.individual_lesson_student_id_seq'::regclass);


--
-- Name: individual_lesson price_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson ALTER COLUMN price_id SET DEFAULT nextval('public.individual_lesson_price_id_seq'::regclass);


--
-- Name: individual_lesson_price id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_price ALTER COLUMN id SET DEFAULT nextval('public.individual_lesson_price_id_seq1'::regclass);


--
-- Name: instructor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor ALTER COLUMN id SET DEFAULT nextval('public.instructor_id_seq'::regclass);


--
-- Name: instructor_address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_address ALTER COLUMN address_id SET DEFAULT nextval('public.instructor_address_address_id_seq'::regclass);


--
-- Name: instructor_address instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_address ALTER COLUMN instructor_id SET DEFAULT nextval('public.instructor_address_instructor_id_seq'::regclass);


--
-- Name: instructor_email_address instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_email_address ALTER COLUMN instructor_id SET DEFAULT nextval('public.instructor_email_address_instructor_id_seq'::regclass);


--
-- Name: instructor_instruments instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments ALTER COLUMN instructor_id SET DEFAULT nextval('public.instructor_instruments_instructor_id_seq'::regclass);


--
-- Name: instructor_instruments instrument_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments ALTER COLUMN instrument_id SET DEFAULT nextval('public.instructor_instruments_instrument_id_seq'::regclass);


--
-- Name: instructor_phone_number instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_phone_number ALTER COLUMN instructor_id SET DEFAULT nextval('public.instructor_phone_number_instructor_id_seq'::regclass);


--
-- Name: instruments_for_rental id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instruments_for_rental ALTER COLUMN id SET DEFAULT nextval('public.instruments_for_rental_id_seq'::regclass);


--
-- Name: present_skill student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.present_skill ALTER COLUMN student_id SET DEFAULT nextval('public.present_skill_student_id_seq'::regclass);


--
-- Name: rent_instrument id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument ALTER COLUMN id SET DEFAULT nextval('public.rent_instrument_id_seq'::regclass);


--
-- Name: rent_instrument instrument_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument ALTER COLUMN instrument_id SET DEFAULT nextval('public.rent_instrument_instrument_id_seq'::regclass);


--
-- Name: rent_instrument student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument ALTER COLUMN student_id SET DEFAULT nextval('public.rent_instrument_student_id_seq'::regclass);


--
-- Name: siblings student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings ALTER COLUMN student_id SET DEFAULT nextval('public.siblings_student_id_seq'::regclass);


--
-- Name: siblings sibling_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings ALTER COLUMN sibling_id SET DEFAULT nextval('public.siblings_sibling_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- Name: student_address student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_address ALTER COLUMN student_id SET DEFAULT nextval('public.student_address_student_id_seq'::regclass);


--
-- Name: student_address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_address ALTER COLUMN address_id SET DEFAULT nextval('public.student_address_address_id_seq'::regclass);


--
-- Name: student_contact_person_email student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_email ALTER COLUMN student_id SET DEFAULT nextval('public.student_contact_person_email_student_id_seq'::regclass);


--
-- Name: student_contact_person_email email_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_email ALTER COLUMN email_id SET DEFAULT nextval('public.student_contact_person_email_email_id_seq'::regclass);


--
-- Name: student_contact_person_phone student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_phone ALTER COLUMN student_id SET DEFAULT nextval('public.student_contact_person_phone_student_id_seq'::regclass);


--
-- Name: student_contact_person_phone phone_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_phone ALTER COLUMN phone_id SET DEFAULT nextval('public.student_contact_person_phone_phone_id_seq'::regclass);


--
-- Name: student_email_address student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_email_address ALTER COLUMN student_id SET DEFAULT nextval('public.student_email_address_student_id_seq'::regclass);


--
-- Name: student_phone_number student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phone_number ALTER COLUMN student_id SET DEFAULT nextval('public.student_phone_number_student_id_seq'::regclass);


--
-- Name: teachable_instruments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachable_instruments ALTER COLUMN id SET DEFAULT nextval('public.teachable_instruments_id_seq'::regclass);


--
-- Name: times_available instructor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times_available ALTER COLUMN instructor_id SET DEFAULT nextval('public.times_available_instructor_id_seq'::regclass);


--
-- Data for Name: address_for_instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address_for_instructor (id, street, zip, city) FROM stdin;
\.


--
-- Data for Name: address_for_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address_for_students (id, street, zip, city) FROM stdin;
\.


--
-- Data for Name: contact_person_email_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_person_email_address (id, email_address) FROM stdin;
\.


--
-- Data for Name: contact_person_phone_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_person_phone_number (id, phone_number) FROM stdin;
\.


--
-- Data for Name: enrolled_students_ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrolled_students_ensemble (student_id, ensemble_id) FROM stdin;
\.


--
-- Data for Name: enrolled_students_group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrolled_students_group_lesson (student_id, lesson_id) FROM stdin;
\.


--
-- Data for Name: ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ensemble (id, room, "time", date, minimum_students, genre, instructor_salay, instructor_id, price_id) FROM stdin;
\.


--
-- Data for Name: ensemble_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ensemble_price (id, sibling_discount, price) FROM stdin;
\.


--
-- Data for Name: fee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fee (student_id, fee_for_lessons, fee_for_instruments) FROM stdin;
\.


--
-- Data for Name: group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_lesson (id, room, "time", date, minimum_students, level, instructor_salary, instrument, instructor_id, price_id) FROM stdin;
\.


--
-- Data for Name: group_lesson_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_lesson_price (id, sibling_discount, price) FROM stdin;
\.


--
-- Data for Name: individual_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.individual_lesson (id, room, "time", date, level, instructor_salary, instrument, instructor_id, student_id, price_id) FROM stdin;
\.


--
-- Data for Name: individual_lesson_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.individual_lesson_price (id, sibling_discount, price) FROM stdin;
\.


--
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor (id, person_number, name, teaches_ensembles, salary) FROM stdin;
\.


--
-- Data for Name: instructor_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor_address (address_id, instructor_id) FROM stdin;
\.


--
-- Data for Name: instructor_email_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor_email_address (email_address, instructor_id) FROM stdin;
\.


--
-- Data for Name: instructor_instruments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor_instruments (instructor_id, instrument_id) FROM stdin;
\.


--
-- Data for Name: instructor_phone_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructor_phone_number (phone_number, instructor_id) FROM stdin;
\.


--
-- Data for Name: instruments_for_rental; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instruments_for_rental (id, brand, type, instrument_price, quantity_in_stock) FROM stdin;
\.


--
-- Data for Name: present_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.present_skill (student_id, skill) FROM stdin;
\.


--
-- Data for Name: rent_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rent_instrument (id, date_when_rented, instrument_id, student_id) FROM stdin;
\.


--
-- Data for Name: siblings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siblings (student_id, sibling_id) FROM stdin;
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, name, person_number) FROM stdin;
\.


--
-- Data for Name: student_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_address (student_id, address_id) FROM stdin;
\.


--
-- Data for Name: student_contact_person_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_contact_person_email (student_id, email_id) FROM stdin;
\.


--
-- Data for Name: student_contact_person_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_contact_person_phone (student_id, phone_id) FROM stdin;
\.


--
-- Data for Name: student_email_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_email_address (email_address, student_id) FROM stdin;
\.


--
-- Data for Name: student_phone_number; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_phone_number (phone_number, student_id) FROM stdin;
\.


--
-- Data for Name: teachable_instruments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachable_instruments (id, type) FROM stdin;
\.


--
-- Data for Name: times_available; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.times_available (time_available, instructor_id) FROM stdin;
\.


--
-- Name: address_for_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_for_instructor_id_seq', 1, false);


--
-- Name: address_for_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_for_students_id_seq', 1, false);


--
-- Name: contact_person_email_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_person_email_address_id_seq', 1, false);


--
-- Name: contact_person_phone_number_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_person_phone_number_id_seq', 1, false);


--
-- Name: enrolled_students_ensemble_ensemble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrolled_students_ensemble_ensemble_id_seq', 1, false);


--
-- Name: enrolled_students_ensemble_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrolled_students_ensemble_student_id_seq', 1, false);


--
-- Name: enrolled_students_group_lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrolled_students_group_lesson_lesson_id_seq', 1, false);


--
-- Name: enrolled_students_group_lesson_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrolled_students_group_lesson_student_id_seq', 1, false);


--
-- Name: ensemble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_id_seq', 1, false);


--
-- Name: ensemble_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_instructor_id_seq', 1, false);


--
-- Name: ensemble_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_price_id_seq', 1, false);


--
-- Name: ensemble_price_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ensemble_price_id_seq1', 1, false);


--
-- Name: fee_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fee_student_id_seq', 1, false);


--
-- Name: group_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_id_seq', 1, false);


--
-- Name: group_lesson_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_instructor_id_seq', 1, false);


--
-- Name: group_lesson_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_price_id_seq', 1, false);


--
-- Name: group_lesson_price_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_lesson_price_id_seq1', 1, false);


--
-- Name: individual_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_id_seq', 1, false);


--
-- Name: individual_lesson_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_instructor_id_seq', 1, false);


--
-- Name: individual_lesson_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_price_id_seq', 1, false);


--
-- Name: individual_lesson_price_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_price_id_seq1', 1, false);


--
-- Name: individual_lesson_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_lesson_student_id_seq', 1, false);


--
-- Name: instructor_address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_address_address_id_seq', 1, false);


--
-- Name: instructor_address_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_address_instructor_id_seq', 1, false);


--
-- Name: instructor_email_address_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_email_address_instructor_id_seq', 1, false);


--
-- Name: instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_id_seq', 1, false);


--
-- Name: instructor_instruments_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_instruments_instructor_id_seq', 1, false);


--
-- Name: instructor_instruments_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_instruments_instrument_id_seq', 1, false);


--
-- Name: instructor_phone_number_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_phone_number_instructor_id_seq', 1, false);


--
-- Name: instruments_for_rental_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instruments_for_rental_id_seq', 1, false);


--
-- Name: present_skill_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.present_skill_student_id_seq', 1, false);


--
-- Name: rent_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rent_instrument_id_seq', 1, false);


--
-- Name: rent_instrument_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rent_instrument_instrument_id_seq', 1, false);


--
-- Name: rent_instrument_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rent_instrument_student_id_seq', 1, false);


--
-- Name: siblings_sibling_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siblings_sibling_id_seq', 1, false);


--
-- Name: siblings_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siblings_student_id_seq', 1, false);


--
-- Name: student_address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_address_address_id_seq', 1, false);


--
-- Name: student_address_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_address_student_id_seq', 1, false);


--
-- Name: student_contact_person_email_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_contact_person_email_email_id_seq', 1, false);


--
-- Name: student_contact_person_email_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_contact_person_email_student_id_seq', 1, false);


--
-- Name: student_contact_person_phone_phone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_contact_person_phone_phone_id_seq', 1, false);


--
-- Name: student_contact_person_phone_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_contact_person_phone_student_id_seq', 1, false);


--
-- Name: student_email_address_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_email_address_student_id_seq', 1, false);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- Name: student_phone_number_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_phone_number_student_id_seq', 1, false);


--
-- Name: teachable_instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachable_instruments_id_seq', 1, false);


--
-- Name: times_available_instructor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.times_available_instructor_id_seq', 1, false);


--
-- Name: address_for_instructor address_for_instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_for_instructor
    ADD CONSTRAINT address_for_instructor_pkey PRIMARY KEY (id);


--
-- Name: address_for_students address_for_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address_for_students
    ADD CONSTRAINT address_for_students_pkey PRIMARY KEY (id);


--
-- Name: contact_person_email_address contact_person_email_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_email_address
    ADD CONSTRAINT contact_person_email_address_pkey PRIMARY KEY (id);


--
-- Name: contact_person_phone_number contact_person_phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person_phone_number
    ADD CONSTRAINT contact_person_phone_number_pkey PRIMARY KEY (id);


--
-- Name: enrolled_students_ensemble enrolled_students_ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_ensemble
    ADD CONSTRAINT enrolled_students_ensemble_pkey PRIMARY KEY (student_id, ensemble_id);


--
-- Name: enrolled_students_group_lesson enrolled_students_group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_group_lesson
    ADD CONSTRAINT enrolled_students_group_lesson_pkey PRIMARY KEY (student_id, lesson_id);


--
-- Name: ensemble ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (id);


--
-- Name: ensemble_price ensemble_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble_price
    ADD CONSTRAINT ensemble_price_pkey PRIMARY KEY (id);


--
-- Name: fee fee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT fee_pkey PRIMARY KEY (student_id);


--
-- Name: group_lesson group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pkey PRIMARY KEY (id);


--
-- Name: group_lesson_price group_lesson_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson_price
    ADD CONSTRAINT group_lesson_price_pkey PRIMARY KEY (id);


--
-- Name: individual_lesson individual_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_pkey PRIMARY KEY (id);


--
-- Name: individual_lesson_price individual_lesson_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson_price
    ADD CONSTRAINT individual_lesson_price_pkey PRIMARY KEY (id);


--
-- Name: instructor_address instructor_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_address
    ADD CONSTRAINT instructor_address_pkey PRIMARY KEY (address_id, instructor_id);


--
-- Name: instructor_email_address instructor_email_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_email_address
    ADD CONSTRAINT instructor_email_address_pkey PRIMARY KEY (email_address, instructor_id);


--
-- Name: instructor_instruments instructor_instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments
    ADD CONSTRAINT instructor_instruments_pkey PRIMARY KEY (instructor_id, instrument_id);


--
-- Name: instructor_phone_number instructor_phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_phone_number
    ADD CONSTRAINT instructor_phone_number_pkey PRIMARY KEY (phone_number, instructor_id);


--
-- Name: instructor instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id);


--
-- Name: instruments_for_rental instruments_for_rental_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instruments_for_rental
    ADD CONSTRAINT instruments_for_rental_pkey PRIMARY KEY (id);


--
-- Name: rent_instrument rent_instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument
    ADD CONSTRAINT rent_instrument_pkey PRIMARY KEY (id);


--
-- Name: siblings siblings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (student_id, sibling_id);


--
-- Name: student_address student_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_address
    ADD CONSTRAINT student_address_pkey PRIMARY KEY (student_id, address_id);


--
-- Name: student_contact_person_email student_contact_person_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_email
    ADD CONSTRAINT student_contact_person_email_pkey PRIMARY KEY (student_id, email_id);


--
-- Name: student_contact_person_phone student_contact_person_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_phone
    ADD CONSTRAINT student_contact_person_phone_pkey PRIMARY KEY (student_id, phone_id);


--
-- Name: student_email_address student_email_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_email_address
    ADD CONSTRAINT student_email_address_pkey PRIMARY KEY (email_address, student_id);


--
-- Name: student_phone_number student_phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phone_number
    ADD CONSTRAINT student_phone_number_pkey PRIMARY KEY (phone_number, student_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: teachable_instruments teachable_instruments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachable_instruments
    ADD CONSTRAINT teachable_instruments_pkey PRIMARY KEY (id);


--
-- Name: times_available times_available_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times_available
    ADD CONSTRAINT times_available_pkey PRIMARY KEY (time_available, instructor_id);


--
-- Name: fki_address_id_to_instructor_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_address_id_to_instructor_address ON public.instructor_address USING btree (address_id);


--
-- Name: fki_address_id_to_student_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_address_id_to_student_address ON public.student_address USING btree (address_id);


--
-- Name: fki_email_id_to_cpemail; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_email_id_to_cpemail ON public.student_contact_person_email USING btree (email_id);


--
-- Name: fki_ensemble_id_to_enrolled_ensemble; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_ensemble_id_to_enrolled_ensemble ON public.enrolled_students_ensemble USING btree (ensemble_id);


--
-- Name: fki_instructor_id_to_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_address ON public.instructor_address USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_email ON public.instructor_email_address USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_ensemble; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_ensemble ON public.ensemble USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_glesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_glesson ON public.group_lesson USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_ilesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_ilesson ON public.individual_lesson USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_instruments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_instruments ON public.instructor_instruments USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_phone ON public.instructor_phone_number USING btree (instructor_id);


--
-- Name: fki_instructor_id_to_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instructor_id_to_time ON public.times_available USING btree (instructor_id);


--
-- Name: fki_instrument_id_to_instruments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instrument_id_to_instruments ON public.instructor_instruments USING btree (instrument_id);


--
-- Name: fki_instruments_id_to_instruments_for_rental; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_instruments_id_to_instruments_for_rental ON public.rent_instrument USING btree (instrument_id);


--
-- Name: fki_lesson_id_to_enrolled_glesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lesson_id_to_enrolled_glesson ON public.enrolled_students_group_lesson USING btree (lesson_id);


--
-- Name: fki_phone_id_to_cpphone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_phone_id_to_cpphone ON public.student_contact_person_phone USING btree (phone_id);


--
-- Name: fki_price_id_to_ensemble; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_price_id_to_ensemble ON public.ensemble USING btree (price_id);


--
-- Name: fki_price_id_to_glesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_price_id_to_glesson ON public.group_lesson USING btree (price_id);


--
-- Name: fki_price_id_to_ilesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_price_id_to_ilesson ON public.individual_lesson USING btree (price_id);


--
-- Name: fki_student_id_to_cpemail; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_cpemail ON public.student_contact_person_email USING btree (student_id);


--
-- Name: fki_student_id_to_cpphone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_cpphone ON public.student_contact_person_phone USING btree (student_id);


--
-- Name: fki_student_id_to_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_email ON public.student_email_address USING btree (student_id);


--
-- Name: fki_student_id_to_enrolled_ensemble; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_enrolled_ensemble ON public.enrolled_students_ensemble USING btree (student_id);


--
-- Name: fki_student_id_to_enrolled_glesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_enrolled_glesson ON public.enrolled_students_group_lesson USING btree (student_id);


--
-- Name: fki_student_id_to_fee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_fee ON public.fee USING btree (student_id);


--
-- Name: fki_student_id_to_ilesson; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_ilesson ON public.individual_lesson USING btree (student_id);


--
-- Name: fki_student_id_to_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_phone ON public.student_phone_number USING btree (student_id);


--
-- Name: fki_student_id_to_present_skill; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_present_skill ON public.present_skill USING btree (student_id);


--
-- Name: fki_student_id_to_rent_instrument; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_rent_instrument ON public.rent_instrument USING btree (student_id);


--
-- Name: fki_student_id_to_sibling1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_sibling1 ON public.siblings USING btree (student_id);


--
-- Name: fki_student_id_to_sibling2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_sibling2 ON public.siblings USING btree (sibling_id);


--
-- Name: fki_student_id_to_student_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_student_id_to_student_address ON public.student_address USING btree (student_id);


--
-- Name: instructor_address address_id_to_instructor_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_address
    ADD CONSTRAINT address_id_to_instructor_address FOREIGN KEY (address_id) REFERENCES public.address_for_instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: student_address address_id_to_student_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_address
    ADD CONSTRAINT address_id_to_student_address FOREIGN KEY (address_id) REFERENCES public.address_for_students(id) ON DELETE CASCADE NOT VALID;


--
-- Name: student_contact_person_email email_id_to_cpemail; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_email
    ADD CONSTRAINT email_id_to_cpemail FOREIGN KEY (email_id) REFERENCES public.contact_person_email_address(id) ON DELETE CASCADE NOT VALID;


--
-- Name: enrolled_students_ensemble ensemble_id_to_enrolled_ensemble; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_ensemble
    ADD CONSTRAINT ensemble_id_to_enrolled_ensemble FOREIGN KEY (ensemble_id) REFERENCES public.ensemble(id) ON DELETE CASCADE NOT VALID;


--
-- Name: instructor_address instructor_id_to_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_address
    ADD CONSTRAINT instructor_id_to_address FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: instructor_email_address instructor_id_to_email; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_email_address
    ADD CONSTRAINT instructor_id_to_email FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: ensemble instructor_id_to_ensemble; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT instructor_id_to_ensemble FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) NOT VALID;


--
-- Name: group_lesson instructor_id_to_glesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT instructor_id_to_glesson FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) NOT VALID;


--
-- Name: individual_lesson instructor_id_to_ilesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT instructor_id_to_ilesson FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) NOT VALID;


--
-- Name: instructor_instruments instructor_id_to_instruments; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments
    ADD CONSTRAINT instructor_id_to_instruments FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: instructor_phone_number instructor_id_to_phone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_phone_number
    ADD CONSTRAINT instructor_id_to_phone FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: times_available instructor_id_to_time; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times_available
    ADD CONSTRAINT instructor_id_to_time FOREIGN KEY (instructor_id) REFERENCES public.instructor(id) ON DELETE CASCADE NOT VALID;


--
-- Name: instructor_instruments instrument_id_to_instruments; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_instruments
    ADD CONSTRAINT instrument_id_to_instruments FOREIGN KEY (instrument_id) REFERENCES public.teachable_instruments(id) ON DELETE CASCADE NOT VALID;


--
-- Name: rent_instrument instruments_id_to_instruments_for_rental; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument
    ADD CONSTRAINT instruments_id_to_instruments_for_rental FOREIGN KEY (instrument_id) REFERENCES public.instruments_for_rental(id) NOT VALID;


--
-- Name: enrolled_students_group_lesson lesson_id_to_enrolled_glesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_group_lesson
    ADD CONSTRAINT lesson_id_to_enrolled_glesson FOREIGN KEY (lesson_id) REFERENCES public.group_lesson(id) ON DELETE CASCADE NOT VALID;


--
-- Name: student_contact_person_phone phone_id_to_cpphone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_phone
    ADD CONSTRAINT phone_id_to_cpphone FOREIGN KEY (phone_id) REFERENCES public.contact_person_phone_number(id) ON DELETE CASCADE NOT VALID;


--
-- Name: ensemble price_id_to_ensemble; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT price_id_to_ensemble FOREIGN KEY (price_id) REFERENCES public.ensemble_price(id) NOT VALID;


--
-- Name: group_lesson price_id_to_glesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT price_id_to_glesson FOREIGN KEY (price_id) REFERENCES public.group_lesson_price(id) NOT VALID;


--
-- Name: individual_lesson price_id_to_ilesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT price_id_to_ilesson FOREIGN KEY (price_id) REFERENCES public.individual_lesson_price(id) NOT VALID;


--
-- Name: student_contact_person_email student_id_to_cpemail; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_email
    ADD CONSTRAINT student_id_to_cpemail FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- Name: student_contact_person_phone student_id_to_cpphone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_contact_person_phone
    ADD CONSTRAINT student_id_to_cpphone FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- Name: student_email_address student_id_to_email; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_email_address
    ADD CONSTRAINT student_id_to_email FOREIGN KEY (student_id) REFERENCES public.student(id) ON UPDATE CASCADE NOT VALID;


--
-- Name: enrolled_students_ensemble student_id_to_enrolled_ensemble; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_ensemble
    ADD CONSTRAINT student_id_to_enrolled_ensemble FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- Name: enrolled_students_group_lesson student_id_to_enrolled_glesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled_students_group_lesson
    ADD CONSTRAINT student_id_to_enrolled_glesson FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- Name: fee student_id_to_fee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fee
    ADD CONSTRAINT student_id_to_fee FOREIGN KEY (student_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: individual_lesson student_id_to_ilesson; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT student_id_to_ilesson FOREIGN KEY (student_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: student_phone_number student_id_to_phone; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phone_number
    ADD CONSTRAINT student_id_to_phone FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- Name: present_skill student_id_to_present_skill; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.present_skill
    ADD CONSTRAINT student_id_to_present_skill FOREIGN KEY (student_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: rent_instrument student_id_to_rent_instrument; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent_instrument
    ADD CONSTRAINT student_id_to_rent_instrument FOREIGN KEY (student_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: siblings student_id_to_sibling1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT student_id_to_sibling1 FOREIGN KEY (student_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: siblings student_id_to_sibling2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT student_id_to_sibling2 FOREIGN KEY (sibling_id) REFERENCES public.student(id) NOT VALID;


--
-- Name: student_address student_id_to_student_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_address
    ADD CONSTRAINT student_id_to_student_address FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE NOT VALID;


--
-- PostgreSQL database dump complete
--

