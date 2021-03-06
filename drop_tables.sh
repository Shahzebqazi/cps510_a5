#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

sqlplus64 "snizam/04054152@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

DROP TABLE EVENT CASCADE CONSTRAINTS;
DROP TABLE DIRECT_DEPOSIT CASCADE CONSTRAINTS;
DROP TABLE CREDIT_CARD CASCADE CONSTRAINTS;
DROP TABLE PERSONAL_INFORMATION CASCADE CONSTRAINTS;
DROP TABLE SCHEDULE CASCADE CONSTRAINTS;
DROP TABLE INSTRUCTOR CASCADE CONSTRAINTS;
DROP TABLE ATTENDANCE CASCADE CONSTRAINTS

DROP VIEW confirmed_attendees; 
DROP VIEW evening_events; 
DROP VIEW membership_card; 

exit;
EOF
