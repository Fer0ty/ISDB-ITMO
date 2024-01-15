INSERT INTO person(name, birth_date)
    VALUES ('Он', '2002-05-25'),
           ('Я', '2003-05-19'),
           ('Рома', '2003-10-21'),
           ('Илья', '2001-12-22'),
           ('Иван Петрович', '1980-06-25');

INSERT INTO scene(name)
    VALUES ('звездное небо'),
           ('космический корабль'),
           ('кухня'),
           ('грузовой отсек'),
           ('блок исследований');

INSERT INTO object(scene_id, name)
    VALUES (1, 'звезды'),
           (3,'каша'),
           (3, 'стул'),
           (1, 'пустота'),
           (2, 'кресло');

INSERT INTO material(name)
    VALUES ('звездная пыль'),
           ('геркулес'),
           ('спинка'),
           ('ножки'),
           ('ничего');

INSERT INTO  object_material (material_id, object_id)
    VALUES (1,1),
           (2,2),
           (3,3),
           (4,3),
           (5,4),
           (3,5);

INSERT INTO action(scene_id, person_id, action_name, action_date)
    VALUES (1, 1, 'мог сосредоточиться', '11:22:15'),
           (1, 1, 'ощущал', '11:15:22'),
           (3, 3, 'ел', '8:12:44'),
           (3, 2 ,'сидел', '9:45:21'),
           (5,5,'занимался исследованием', '23:12:18');

INSERT INTO feeling(feeling_name)
    VALUES ('восхищение'),
           ('наслаждение'),
           ('умиротворение'),
           ('удовольствие'),
           ('любовь');

INSERT INTO person_feeling(person_id, feeling_id)
    VALUES (1,1),
           (3,2),
           (5,5),
           (2,3),
           (3,4);




