CREATE TABLE address (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 street VARCHAR(500),
 zip VARCHAR(500),
 city VARCHAR(500)
);

ALTER TABLE address ADD CONSTRAINT PK_address PRIMARY KEY (id);


CREATE TABLE contact_person_email (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email_address VARCHAR(500)
);

ALTER TABLE contact_person_email ADD CONSTRAINT PK_contact_person_email PRIMARY KEY (id);


CREATE TABLE contact_person_phone (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number VARCHAR(500)
);

ALTER TABLE contact_person_phone ADD CONSTRAINT PK_contact_person_phone PRIMARY KEY (id);


CREATE TABLE instruments_for_rental (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(500),
 type VARCHAR(500) NOT NULL,
 instrument_price INT
);

ALTER TABLE instruments_for_rental ADD CONSTRAINT PK_instruments_for_rental PRIMARY KEY (id);


CREATE TABLE lesson_prices (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 sibling_discount INT,
 price INT,
 skill_level VARCHAR(500)
);

ALTER TABLE lesson_prices ADD CONSTRAINT PK_lesson_prices PRIMARY KEY (id);


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(500),
 name VARCHAR(500)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE person_address (
 person_id INT NOT NULL,
 address_id INT NOT NULL
);

ALTER TABLE person_address ADD CONSTRAINT PK_person_address PRIMARY KEY (person_id,address_id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_contact_person_email (
 student_id INT NOT NULL,
 email_id INT NOT NULL
);

ALTER TABLE student_contact_person_email ADD CONSTRAINT PK_student_contact_person_email PRIMARY KEY (student_id,email_id);


CREATE TABLE student_contact_person_phone (
 student_id INT NOT NULL,
 phone_id INT NOT NULL
);

ALTER TABLE student_contact_person_phone ADD CONSTRAINT PK_student_contact_person_phone PRIMARY KEY (student_id,phone_id);


CREATE TABLE teachable_instruments (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 type VARCHAR(500)
);

ALTER TABLE teachable_instruments ADD CONSTRAINT PK_teachable_instruments PRIMARY KEY (id);

CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 teaches_ensembles BIT(1),
 person_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_instruments (
 instrument_id INT NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE instructor_instruments ADD CONSTRAINT PK_instructor_instruments PRIMARY KEY (instrument_id,instructor_id);

CREATE TABLE email_addresses (
    person_id INT NOT NULL,
    email_address VARCHAR(500) NOT NULL
);

ALTER TABLE email_addresses ADD CONSTRAINT PK_email_addresses PRIMARY KEY (person_id,email_address);

CREATE TABLE phone_numbers (
    person_id INT NOT NULL,
    phone_number VARCHAR (500) NOT NULL
);

ALTER TABLE phone_numbers ADD CONSTRAINT PK_phone_numbers PRIMARY KEY (person_id,phone_number);


CREATE TABLE present_skill (
 skill VARCHAR(500) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE present_skill ADD CONSTRAINT PK_present_skill PRIMARY KEY (skill,student_id);


CREATE TABLE rent_instrument (
 rental_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 date_when_rented DATE NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT
);

ALTER TABLE rent_instrument ADD CONSTRAINT PK_rent_instrument PRIMARY KEY (rental_id);


CREATE TABLE siblings (
 student_id INT NOT NULL,
 sibling_id INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (student_id,sibling_id);


CREATE TABLE times_available (
 time_available TIMESTAMP(10) NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE times_available ADD CONSTRAINT PK_times_available PRIMARY KEY (time_available,instructor_id);


CREATE TABLE ensemble (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 room VARCHAR(500),
 time TIMESTAMP(10),
 minimum_students INT,
 maximum_students INT,
 genre VARCHAR(500),
 instructor_salary INT,
 instructor_id INT,
 price_id INT NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (id);


CREATE TABLE group_lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 room VARCHAR(500),
 time TIMESTAMP(10),
 minimum_students INT,
 level VARCHAR(500),
 instructor_salary INT,
 instrument VARCHAR(500),
 instructor_id INT,
 price_id INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE individual_lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 room VARCHAR(500),
 time TIMESTAMP(10),
 level VARCHAR(500),
 instructor_salary INT,
 instrument VARCHAR(500),
 price_id INT NOT NULL,
 student_id INT,
 instructor_id INT
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (id);


CREATE TABLE enrolled_students_ensemble (
 student_id INT NOT NULL,
 ensemble_id INT NOT NULL
);

ALTER TABLE enrolled_students_ensemble ADD CONSTRAINT PK_enrolled_students_ensemble PRIMARY KEY (student_id,ensemble_id);


CREATE TABLE enrolled_students_group_lesson (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE enrolled_students_group_lesson ADD CONSTRAINT PK_enrolled_students_group_lesson PRIMARY KEY (student_id,lesson_id);


ALTER TABLE person_address ADD CONSTRAINT FK_person_address_0 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE;
ALTER TABLE person_address ADD CONSTRAINT FK_person_address_1 FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE CASCADE;


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE student_contact_person_email ADD CONSTRAINT FK_student_contact_person_email_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE student_contact_person_email ADD CONSTRAINT FK_student_contact_person_email_1 FOREIGN KEY (email_id) REFERENCES contact_person_email (id) ON DELETE CASCADE;


ALTER TABLE student_contact_person_phone ADD CONSTRAINT FK_student_contact_person_phone_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE student_contact_person_phone ADD CONSTRAINT FK_student_contact_person_phone_1 FOREIGN KEY (phone_id) REFERENCES contact_person_phone (id) ON DELETE CASCADE;

ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE instructor_instruments ADD CONSTRAINT FK_instructor_instruments_0 FOREIGN KEY (instrument_id) REFERENCES teachable_instruments (id) ON DELETE CASCADE;
ALTER TABLE instructor_instruments ADD CONSTRAINT FK_instructor_instruments_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE;

ALTER TABLE email_addresses ADD CONSTRAINT FK_email_addresses_0 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE;

ALTER TABLE phone_numbers ADD CONSTRAINT FK_phone_numbers_0 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE;


ALTER TABLE present_skill ADD CONSTRAINT FK_present_skill_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;


ALTER TABLE rent_instrument ADD CONSTRAINT FK_rent_instrument_0 FOREIGN KEY (instrument_id) REFERENCES instruments_for_rental (id) ON DELETE NO ACTION;
ALTER TABLE rent_instrument ADD CONSTRAINT FK_rent_instrument_1 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE NO ACTION;


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE siblings ADD CONSTRAINT FK_siblings_1 FOREIGN KEY (sibling_id) REFERENCES student (id) ON DELETE CASCADE;


ALTER TABLE times_available ADD CONSTRAINT FK_times_available_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE CASCADE;


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE NO ACTION;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (price_id) REFERENCES lesson_prices (id) ON DELETE NO ACTION;


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE NO ACTION;
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (price_id) REFERENCES lesson_prices (id) ON DELETE NO ACTION;


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (price_id) REFERENCES lesson_prices (id) ON DELETE NO ACTION;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_2 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE NO ACTION;


ALTER TABLE enrolled_students_ensemble ADD CONSTRAINT FK_enrolled_students_ensemble_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE enrolled_students_ensemble ADD CONSTRAINT FK_enrolled_students_ensemble_1 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id) ON DELETE CASCADE;


ALTER TABLE enrolled_students_group_lesson ADD CONSTRAINT FK_enrolled_students_group_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE enrolled_students_group_lesson ADD CONSTRAINT FK_enrolled_students_group_lesson_1 FOREIGN KEY (lesson_id) REFERENCES group_lesson (id) ON DELETE CASCADE;


