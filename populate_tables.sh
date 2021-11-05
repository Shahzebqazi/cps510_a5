#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64
"snizam/Haskell1!@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)
(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

--Event
INSERT INTO event (event_id, instructor, event_date, event_time, name_of_event, vacancies, event_location) 
VALUES (12346, 'Sam', '2021-10-09', 5, 'weight lifting', 10, 'Room6');

INSERT INTO event (event_id, instructor, event_date, event_time, name_of_event, vacancies, event_location) 
VALUES (12345, 'Dan', '2021-10-08', 4, 'yoga', 10, 'Room5');

INSERT INTO event (event_id, instructor, event_date, event_time, name_of_event, vacancies, event_location) 
VALUES(12344, 'Rob', '2021-10-21', 6, 'wrestling', 15, 'Room8');

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

--Clients
INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (1, 'Damoon', 'Smith', '2001-08-10', 20, 'healthy', 6, 170);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (2, 'Jacob', 'Rokhvarg', '2001-08-15', 20, 'healthy', 6, 165);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (3, 'Shahzeb', 'Jones', '2001-08-13', 20, 'healthy', 6, 168);

--Instructors
INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (4444, 'Sam', 'Jones', '1998-08-11', 33, 'healthy', 6, 170);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (5555, 'Dan', 'James', '1999-04-19', 44, 'healthy', 6, 165);

INSERT INTO personal_information (user_id, first_name, last_name, birthdate, age, health_condition, height, weight)
VALUES (6666, 'Rob', 'Lee', '1975-03-18', 55, 'healthy', 6, 168);

/*Damoon, Jacob, and Shahzeb have all signed up for a class*/
INSERT INTO schedule (user_id, event_id)
VALUES(1, 12345);

INSERT INTO schedule (user_id, event_id)
VALUES(2, 12345);

INSERT INTO schedule (user_id, event_id)
VALUES(3, 12346);

INSERT INTO instructor(instructor_id, instructor_payment_id, instructor_event_id)
VALUES(4444, 3, 12346);

INSERT INTO instructor(instructor_id, instructor_payment_id, instructor_event_id)
VALUES(5555, 4, 12345);

INSERT INTO instructor(instructor_id, instructor_payment_id, instructor_event_id)
VALUES(6666, 5, 12344);

exit;
EOF
