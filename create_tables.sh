#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

sqlplus64 "snizam/04054152@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

--Create personal_information table
--Create personal_information table
CREATE TABLE personal_information (
    user_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    birthdate VARCHAR2(30),
    age INTEGER,
    health_condition BIT, -- Could make this a boolean
    height INTEGER,
    weight INTEGER
);

CREATE TABLE event (
    event_code VARCHAR2(14) PRIMARY KEY,
    event_id INTEGER NOT NULL,
    instructor VARCHAR2(100) NULL,
    event_date VARCHAR2(20),
    event_time INTEGER NOT NULL,
    event_name VARCHAR2(100),
    vacancies INTEGER,
    event_location VARCHAR2(100)
);

--Create credit_card table
CREATE TABLE credit_card (
    user_id INTEGER REFERENCES personal_information(user_id) PRIMARY KEY,
    card_holder_name VARCHAR2(20),
    cvv INTEGER NOT NULL,
    card_number INTEGER NOT NULL,
    expiry_date VARCHAR2(20) NOT NULL
);

CREATE TABLE direct_deposit (
    user_id INTEGER  REFERENCES personal_information(user_id) PRIMARY KEY,
    transit_number INTEGER NOT NULL,
    institution_number INTEGER NOT NULL,
    card_number INTEGER NOT NULL
);


--Create schedule table
CREATE TABLE schedule (
    user_id INTEGER REFERENCES personal_information(user_id), /*refers to the userID of the client taking a particular class */
    event_id INTEGER REFERENCES event(event_id) /*refers to the eventID of the particular class */
);

CREATE TABLE instructor (
    instructor_id INTEGER REFERENCES personal_information(user_id),
    instructor_payment_id INTEGER REFERENCES direct_deposit(user_id), /*Foreign key, a pointer from the instructor payment id to the user id, in order to direct deposit pay the instructor*/
    instructor_event_id INTEGER REFERENCES event(event_id) /*Foreign key, a pointer from the instructor event id to the event id, in order to see which class each instructor is teaching*/
    /*instructor_info_id INTEGER REFERENCES personal_information(user_id) Foreign key, a pointer from the instructor info id to the user id, in order to access the instructors personal information*/ 
);

create table attendance (
    user_id integer,
    event_code VARCHAR2(14)
);

--views 

--Displays a list of attendees for an instructor for a class. 
CREATE VIEW confirmed_attendees AS
SELECT first_name,last_name
FROM personal_information, schedule, event
WHERE schedule.user_id = personal_information.user_id AND schedule.event_id = event.event_id;

--Displays only weekend events and classes that occur after noon
CREATE VIEW evening_events AS
SELECT name_of_event, event_date, event_time
FROM event
WHERE event_time > 0;

--Displays a user’s name and user id to generate information for a membership card
CREATE VIEW membership_card AS
SELECT first_name, last_name, user_id
FROM personal_information;

exit;
EOF
