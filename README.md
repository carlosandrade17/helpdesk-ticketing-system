# Helpdesk Ticketing System
**Author:** Carlos Andrade  
**Degree:** Bachelor of Science in Information Technology — Arizona State University

## Overview
A relational help desk ticketing system designed and built from scratch using SQL and SQLite. 
This project was modeled after enterprise ticketing tools like Ivanti, which I work with 
daily in my current role at U-Haul International HQ in Phoenix, AZ.

## Purpose
This project demonstrates my ability to:
- Design a relational database schema from scratch
- Implement role based user permissions
- Write SQL queries for data validation and reporting
- Document QA test cases covering real world scenarios

## Database Structure
The system contains 4 relational tables:

| Table | Description |
|---|---|
| roles | Defines user permission levels — Admin, Technician, End User |
| departments | Company departments — IT, HR, Operations, Corporate Support |
| users | System users linked to roles and departments |
| tickets | Help desk tickets with status, priority, and assignments |

## User Roles and Permissions
| Role | Permission Level |
|---|---|
| Admin | Full Access |
| Technician | Assigned Tickets Only |
| End User | Own Tickets Only |

## Ticket Statuses
Modeled after real Ivanti workflow:
- Open
- In Progress
- Pending
- Resolved

## SQL Queries
10 queries written covering:
- Basic SELECT and WHERE filtering
- JOIN queries connecting multiple tables
- Self joins for created_by and assigned_to users
- COUNT and GROUP BY for data analysis
- CASE WHEN for conditional logic
- ORDER BY for priority sorting
- Performance tracking per technician
- Full audit report

## QA Test Cases
Documented test cases covering:
- Duplicate email constraint violation
- Foreign key constraint failures
- Null constraint violations
- Duplicate data insertion
- Data validation across joined tables

## Tools Used
- SQLite
- DB Browser for SQLite
- Git and GitHub

## Key Learnings
- JOIN = connect tables together using a shared ID
- AS = rename a column or table to something readable
- COUNT + GROUP BY = summarize and analyze data
- Self join = joining the same table twice with different nicknames
- Referential integrity = database enforces valid relationships between tables
- Constraint violations = real world QA test scenarios
