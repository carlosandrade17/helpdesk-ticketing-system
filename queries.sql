{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Queries\
-- Author: Carlos Andrade\
-- Description: SQL queries for data validation, reporting and root cause analysis\
\
-- Query 1: Show all open tickets\
SELECT * FROM tickets WHERE status = 'Open';\
\
-- Query 2: Show all high priority tickets\
SELECT * FROM tickets WHERE priority = 'High';\
\
-- Query 3: Tickets with assigned user names instead of IDs\
SELECT tickets.title, tickets.status, tickets.priority,\
users.name AS assigned_to\
FROM tickets\
JOIN users ON tickets.assigned_to = users.id;\
\
-- Query 4: Count tickets per department\
SELECT departments.dept_name, COUNT(tickets.id) AS total_tickets\
FROM tickets\
JOIN departments ON tickets.dept_id = departments.id\
GROUP BY departments.dept_name;\
\
-- Query 5: Full ticket report with all names\
SELECT\
tickets.title,\
tickets.status,\
tickets.priority,\
tickets.created_at,\
creator.name AS created_by,\
assignee.name AS assigned_to,\
departments.dept_name\
FROM tickets\
JOIN users AS creator ON tickets.created_by = creator.id\
JOIN users AS assignee ON tickets.assigned_to = assignee.id\
JOIN departments ON tickets.dept_id = departments.id;\
\
-- Query 6: Show only unresolved tickets\
SELECT tickets.title, tickets.status, tickets.priority,\
users.name AS assigned_to\
FROM tickets\
JOIN users ON tickets.assigned_to = users.id\
WHERE tickets.status != 'Resolved';\
\
-- Query 7: Show tickets by priority highest first\
SELECT tickets.title, tickets.status, tickets.priority,\
departments.dept_name\
FROM tickets\
JOIN departments ON tickets.dept_id = dep}