#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

sqlplus64 "snizam/04054152@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

--Advanced queries

--Select the instructors name who is teaching an event with id: 12346
SELECT event_id, event.instructor         
FROM instructor, event
WHERE event.event_id = instructor.instructor_event_id AND instructor_event_id = 12346;

--Select the user id and card number of the instructor to be payed (from direct --deposit table), for teaching an event with event id 12346
SELECT instructor.instructor_payment_id, direct_deposit.card_number 
FROM direct_deposit, instructor, event
WHERE event.event_id = instructor.instructor_event_id AND direct_deposit.user_id = instructor_payment_id AND event.event_id = 12346;

--Select all names of instructors who are healthy
SELECT personal_information.first_name, personal_information.last_name
FROM instructor, personal_information
WHERE instructor.instructor_id = personal_information.user_id AND personal_information.health_condition = 'healthy';

--Views

Select * from membership_card;
Select * from evening_events;
Select * from confirmed_attendees;

exit;
EOF
