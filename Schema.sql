{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Helpdesk Ticketing System\
-- Author: Carlos Andrade\
-- Description: A relational help desk ticketing system modeled after enterprise tools like Ivanti\
\
CREATE TABLE roles (\
  id INTEGER PRIMARY KEY AUTOINCREMENT,\
  role_name TEXT NOT NULL,\
  permission_level TEXT NOT NULL\
);\
\
CREATE TABLE departments (\
  id INTEGER PRIMARY KEY AUTOINCREMENT,\
  dept_name TEXT NOT NULL\
);\
\
CREATE TABLE users (\
  id INTEGER PRIMARY KEY AUTOINCREMENT,\
  name TEXT NOT NULL,\
  email TEXT UNIQUE NOT NULL,\
  role_id INTEGER,\
  dept_id INTEGER,\
  FOREIGN KEY (role_id) REFERENCES roles(id),\
  FOREIGN KEY (dept_id) REFERENCES departments(id)\
);\
\
CREATE TABLE tickets (\
  id INTEGER PRIMARY KEY AUTOINCREMENT,\
  title TEXT NOT NULL,\
  description TEXT,\
  status TEXT DEFAULT 'Open',\
  priority TEXT DEFAULT 'Medium',\
  created_by INTEGER,\
  assigned_to INTEGER,\
  dept_id INTEGER,\
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,\
  FOREIGN KEY (created_by) REFERENCES users(id),\
  FOREIGN KEY (assigned_to) REFERENCES users(id),\
  FOREIGN KEY (dept_id) REFERENCES departments(id)\
);}