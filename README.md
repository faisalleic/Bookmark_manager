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

## SETTING TEST ENVIRONMENT

Add a line at the top of spec_helper.rb:

admin=# ENV['ENVIRONMENT'] = 'test'
admin=# This ensures Environment Variable picks the right database ('bookmark_manager_test') when we use rspec.

Install TablePlus to view your database visually or edit
From: https://tableplus.io/
