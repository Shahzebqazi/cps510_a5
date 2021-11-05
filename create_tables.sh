#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

sqlplus64 "snizam/04054152@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

CREATE TABLE event (
    event_id INTEGER PRIMARY KEY,
    instructor VARCHAR2(100) NULL,
    event_date VARCHAR2(20),
    event_time INTEGER NOT NULL,
    name_of_event VARCHAR2(100),
    vacancies INTEGER,
    event_location VARCHAR2(100)
    /*is_eighteen_plus_only VARCHAR2(10)*/
);

CREATE TABLE instructor (
    instructor_id INTEGER REFERENCES personal_information(user_id),
    instructor_payment_id INTEGER REFERENCES direct_deposit(user_id), /*Foreign key, a pointer from the instructor payment id to the user id, in order to direct deposit pay the instructor*/
    instructor_event_id INTEGER REFERENCES event(event_id) /*Foreign key, a pointer from the instructor event id to the event id, in order to see which class each instructor is teaching*/
    /*instructor_info_id INTEGER REFERENCES personal_information(user_id) Foreign key, a pointer from the instructor info id to the user id, in order to access the instructors personal information*/ 
);

CREATE TABLE direct_deposit (
    user_id INTEGER PRIMARY KEY,
    transit_number INTEGER NOT NULL,
    institution_number INTEGER NOT NULL,
    card_number INTEGER NOT NULL
);

--Create personal_information table
CREATE TABLE personal_information (
    user_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(30),
    last_name VARCHAR2(30),
    birthdate VARCHAR2(30),
    age INTEGER,
    health_condition VARCHAR2(30),
    height INTEGER,
    weight INTEGER
);

--Create credit_card table
CREATE TABLE credit_card (
    user_id INTEGER PRIMARY KEY,
    card_holder_name VARCHAR2(20),
    cvv INTEGER NOT NULL,
    card_number INTEGER NOT NULL,
    expiry_date VARCHAR2(20) NOT NULL
);

--Create schedule table
CREATE TABLE schedule (
    user_id INTEGER REFERENCES personal_information(user_id), /*refers to the userID of the client taking a particular class */
    event_id INTEGER REFERENCES event(event_id) /*refers to the eventID of the particular class */
);

exit;
EOF
