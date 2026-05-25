{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Sample Data\
-- Author: Carlos Andrade\
\
INSERT INTO roles (role_name, permission_level) VALUES ('Admin', 'Full Access');\
INSERT INTO roles (role_name, permission_level) VALUES ('Technician', 'Assigned Tickets Only');\
INSERT INTO roles (role_name, permission_level) VALUES ('End User', 'Own Tickets Only');\
\
INSERT INTO departments (dept_name) VALUES ('IT');\
INSERT INTO departments (dept_name) VALUES ('HR');\
INSERT INTO departments (dept_name) VALUES ('Operations');\
INSERT INTO departments (dept_name) VALUES (\'91POS Support');\
\
INSERT INTO users (name, email, role_id, dept_id) VALUES ('Carlos Andrade', 'carlos@company.com', 1, 1);\
INSERT INTO users (name, email, role_id, dept_id) VALUES (\'91Luisana\'92, \'91luisana@company.com', 2, 1);\
INSERT INTO users (name, email, role_id, dept_id) VALUES (\'91Fer HR', \'91fer@company.com', 3, 2);\
INSERT INTO users (name, email, role_id, dept_id) VALUES (\'91Luis Ops', \'91luis@company.com', 3, 3);\
\
INSERT INTO tickets (title, description, status, priority, created_by, assigned_to, dept_id)\
VALUES ('VPN not connecting', 'User cannot connect to VPN from home', 'Open', 'High', 3, 2, 1);\
INSERT INTO tickets (title, description, status, priority, created_by, assigned_to, dept_id)\
VALUES ('Password reset needed', 'User locked out of account', 'In Progress', 'Medium', 3, 2, 2);\
INSERT INTO tickets (title, description, status, priority, created_by, assigned_to, dept_id)\
VALUES ('Software install request', 'Need Adobe installed on laptop', 'Pending', 'Low', 2, 1, 1);\
INSERT INTO tickets (title, description, status, priority, created_by, assigned_to, dept_id)\
VALUES ('Printer offline', 'HR printer not responding', 'Resolved', 'Medium', 4, 2, 2);\
INSERT INTO tickets (title, description, status, priority, created_by, assigned_to, dept_id)\
VALUES ('System access request', 'New hire needs system access', 'In Progress', 'High', 4, 1, 4);}