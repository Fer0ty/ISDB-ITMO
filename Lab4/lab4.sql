-- task 1
explain analyse SELECT "Н_ЛЮДИ"."ОТЧЕСТВО", "Н_ВЕДОМОСТИ"."ДАТА" FROM "Н_ЛЮДИ"
RIGHT JOIN "Н_ВЕДОМОСТИ" on "Н_ЛЮДИ"."ИД" = "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ИМЯ" > 'Ярослав' and "Н_ВЕДОМОСТИ"."ИД"= 39921;

create index task11 on "Н_ВЕДОМОСТИ" USING hash("ИД") ;
create index task12 on "Н_ВЕДОМОСТИ" USING hash("ЧЛВК_ИД");
create index task13 on "Н_ЛЮДИ" using hash("ИД");
create index task14 on "Н_ЛЮДИ" using btree("ИМЯ");

-- task 1 index
explain analyse SELECT "Н_ЛЮДИ"."ОТЧЕСТВО", "Н_ВЕДОМОСТИ"."ДАТА" FROM "Н_ЛЮДИ"
RIGHT JOIN "Н_ВЕДОМОСТИ" on "Н_ЛЮДИ"."ИД" = "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ИМЯ" > 'Ярослав' and "Н_ВЕДОМОСТИ"."ИД"= 39921;

drop index task11;
drop index task12;
drop index task13;
drop index task14;

-- task 2
explain analyse SELECT "Н_ЛЮДИ"."ОТЧЕСТВО", "Н_ОБУЧЕНИЯ"."НЗК", "Н_УЧЕНИКИ"."НАЧАЛО" FROM "Н_УЧЕНИКИ"
LEFT JOIN "Н_ОБУЧЕНИЯ" on "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД"
LEFT JOIN "Н_ЛЮДИ" on "Н_ЛЮДИ"."ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ФАМИЛИЯ" > 'Ёлкин' and "Н_ОБУЧЕНИЯ"."НЗК" = '999080' and "Н_УЧЕНИКИ"."ИД" > 250098;


create index task23 on "Н_УЧЕНИКИ" using hash("ЧЛВК_ИД");
create index task25 on "Н_ЛЮДИ" using hash("ИД");
create index task26 on "Н_ОБУЧЕНИЯ" using hash("НЗК");

--task 2 index2
explain analyse SELECT "Н_ЛЮДИ"."ОТЧЕСТВО", "Н_ОБУЧЕНИЯ"."НЗК", "Н_УЧЕНИКИ"."НАЧАЛО" FROM "Н_УЧЕНИКИ"
LEFT JOIN "Н_ОБУЧЕНИЯ" on "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД"
LEFT JOIN "Н_ЛЮДИ" on "Н_ЛЮДИ"."ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ФАМИЛИЯ" > 'Ёлкин' and "Н_ОБУЧЕНИЯ"."НЗК" = '999080' and "Н_УЧЕНИКИ"."ИД" > 250098;
drop index task23;
drop index task25;
drop index task26;


