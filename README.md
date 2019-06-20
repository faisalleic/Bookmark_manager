# Bookmark Manager

## Overview:

In this project, we will be building a simple bookmark manager web application. The goal of it will be to view, create, update or delete your bookmarks.

## Setting up database

$> psql
admin=# psql
admin=# CREATE DATABASE "bookmark-manager";
admin=# \c bookmark-manager;
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
admin=# INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com'), ('http://www.google.com'), ('http://destroyallsoftware.com');


## Test Database setup:

admin=# CREATE DATABASE bookmark_manager_test;
admin=# \c bookmark-manager_test;
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));


Install TablePlus
From: https://tableplus.io/
