#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

sqlplus64 "snizam/04054152@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

--Event

-- Weight Lifting: 12347
-- Note: Add 3 days per week to populate following the same structure
INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12347-09-21-17', 12346, 'Sam', '2021-10-09', 17, 'Weight Lifting', 10, 'Room 6');

INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12347-16-21-19', 12346, 'Dan', '2021-10-16', 19, 'Weight Lifting', 10, 'Room 5');

INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12347-11-21-12', 12346, 'Emma', '2021-10-11', 12, 'Weight Lifting', 15, 'Room 8');


-- Yoga: 12345
INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12345-08-21-16',12345, 'Emma', '2021-10-08', 9, 'Yoga', 15, 'Yoga Studio 2');

INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12345-08-21-07', 12345,'Gwen', '2021-10-09', 7, 'Yoga', 11, 'Yoga Studio 1');

INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12345-10-21-09',12345, 'Rachel', '2021-10-10', 9, 'Yoga', 25, 'Yoga Studio 3');

INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12345-11-21-07', 12345,'Gwen', '2021-10-11', 7, 'Yoga', 12, 'Yoga Studio 1');

-- Pilates: 12346
INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12346-10-21-10', 12346, 'Jennifer', '2021-10-09', 10, 'Pilates', 0, 'Yoga Studio 2');

INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12346-11-21-10',12346,  'Rob', '2021-10-10', 10, 'Pilates', 14, 'Dance Studio 1');

INSERT INTO event (event_code, event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12346-20-21-11',12346,  'Emma', '2021-10-20', 11, 'Pilates', 6, 'Dance Studio 2');

-- Swimming: 12348
INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12348-08-21-16', 12348, 'Rachel', '2021-10-08', 16, 'Swimming', 10, 'Swimming Pool');

INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12348-08-21-08', 12348, 'Dan', '2021-10-08', 8, 'Swimming', 20, 'Swimming Pool');

INSERT INTO event (event_code,event_id, instructor, event_date, event_time, event_name, vacancies, event_location) 
VALUES ('12348-08-21-12', 12348, 'Sam', '2021-10-08', 12, 'Swimming', 0, 'Swimming Pool');


--Credit Card
INSERT INTO credit_card (user_id, card_holder_name, cvv, card_number, expiry_date)
VALUES (1, 'Damoon', 123, 123456789, '2023-10-08');

INSERT INTO credit_card (user_id, card_holder_name, cvv, card_number, expiry_date)
VALUES (2, 'Shahzeb', 133, 123654321, '2023-09-08');

INSERT INTO direct_deposit (user_id, transit_number, institution_number, card_number)
VALUES (3, 000, 111, 5454434321210909);

--Direct Deposit
INSERT INTO direct_deposit (user_id, transit_number, institution_number, card_number)
VALUES (4, 010, 121, 5454434321210505);

INSERT INTO direct_deposit (user_id, transit_number, institution_number, card_number)
VALUES (5, 030, 113, 5454434321210707);

-- Personal Info for clients

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (1, 'Damoon', 'Smith', '2001-08-10', 20, 1, 185, 200);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (2, 'Jacob', 'Rokhvarg', '2001-08-11', 20, 1, 172, 165);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (3, 'Shahzeb', 'Do Buy', '2001-08-12', 20, 1, 175, 168);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (4, 'Ahmed', 'ONeal', '1995-11-10', 27, 0, 185, 200);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (5, 'Yi Fan', 'Liu', '2001-08-11', 20, 1, 178, 165);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (6, 'Igor', 'Skevdia', '1986-04-22', 35, 0, 175, 250);


-- Personal Info for
INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (19, 'Rachel', 'Cumminhs', '1999-08-02', 22, 0, 180, 120);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (29, 'Rob', 'Atkins', '1997-05-02', 24, 0, 190, 220);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (39, 'Emma', 'Williams', '1995-08-02', 26, 0, 162, 110);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (49, 'Gwen', 'Cox', '2000-11-12', 21, 0, 187, 140);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (59, 'Jennifer', 'Alba', '1999-08-06', 22, 0, 150, 100);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (69, 'Sam', 'Ilivan', '2000-12-20', 21, 0, 174, 250);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (79, 'Dan', 'Cubino', '1994-08-06', 27, 0, 180, 150);

-- Populating Attendance
-- 12345
insert into attendance (user_id, event_code) values (3, '12345-10-21-09');
insert into attendance (user_id, event_code) values (6, '12345-10-21-09');
insert into attendance (user_id, event_code) values (1, '12345-10-21-09');
insert into attendance (user_id, event_code) values (2, '12345-10-21-09');

insert into attendance (user_id, event_code) values (4, '12345-08-21-16');
insert into attendance (user_id, event_code) values (5, '12345-08-21-16');
insert into attendance (user_id, event_code) values (1, '12345-08-21-16');
insert into attendance (user_id, event_code) values (2, '12345-08-21-16');
insert into attendance (user_id, event_code) values (3, '12345-08-21-16');

insert into attendance (user_id, event_code) values (2, '12345-11-21-07');
insert into attendance (user_id, event_code) values (5, '12345-11-21-07');

-- 12347
insert into attendance (user_id, event_code) values (1, '12347-09-21-17');
insert into attendance (user_id, event_code) values (2, '12347-09-21-17');

insert into attendance (user_id, event_code) values (1, '12347-16-21-19');
insert into attendance (user_id, event_code) values (3, '12347-16-21-19');
insert into attendance (user_id, event_code) values (6, '12347-16-21-19');

insert into attendance (user_id, event_code) values (2, '12347-11-21-12');
insert into attendance (user_id, event_code) values (3, '12347-11-21-12');
insert into attendance (user_id, event_code) values (4, '12347-11-21-12');
insert into attendance (user_id, event_code) values (6, '12347-11-21-12');

-- 12346

insert into attendance (user_id, event_code) values (5, '12346-10-21-10');
insert into attendance (user_id, event_code) values (2, '12346-10-21-10');
insert into attendance (user_id, event_code) values (4, '12346-10-21-10');

insert into attendance (user_id, event_code) values (3, '12346-11-21-10');
insert into attendance (user_id, event_code) values (6, '12346-11-21-10');

insert into attendance (user_id, event_code) values (2, '12346-20-21-11');
insert into attendance (user_id, event_code) values (3, '12346-20-21-11');
insert into attendance (user_id, event_code) values (4, '12346-20-21-11');
insert into attendance (user_id, event_code) values (6, '12346-20-21-11');



exit;
EOF
