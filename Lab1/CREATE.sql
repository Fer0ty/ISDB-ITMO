CREATE TABLE
    feeling(
        feeling_id serial PRIMARY KEY,
        feeling_name varchar(25),
        UNIQUE(feeling_name)
    );

CREATE TABLE
    person (
        person_id serial PRIMARY KEY,
        name varchar (25) NOT NULL,
        birth_date date NOT NULL
    );

CREATE TABLE
    person_feeling(
        person_id  integer REFERENCES person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
        feeling_id integer REFERENCES feeling(feeling_id) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    scene (
        scene_id serial PRIMARY KEY,
        name varchar(25) NOT NULL
    );

CREATE TABLE
    object (
        object_id serial PRIMARY KEY,
        scene_id integer  REFERENCES scene(scene_id),
        name varchar (25) NOT NULL
    );

CREATE TABLE
    material (
        material_id serial PRIMARY KEY,
        name varchar (25) NOT NULL,
        UNIQUE (name)
    );

CREATE TABLE
    object_material(
       material_id  integer REFERENCES material(material_id) ON UPDATE CASCADE ON DELETE CASCADE,
       object_id integer REFERENCES object(object_id) ON UPDATE CASCADE ON DELETE CASCADE,
       CONSTRAINT object_material_pk PRIMARY KEY (material_id, object_id)
    );

CREATE TABLE
    action (
        action_id serial PRIMARY KEY,
        scene_id integer,
        person_id integer,
        action_name varchar (25) NOT NULL,
        action_date time NOT NULL,
        UNIQUE (person_id, action_date)
    );
