# SQL Lesson 16: Creating tables

## An example

Here's an example schema for the Movies table that we've been using in the lessons up to now.

### Movies table schema

```sql
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER
);
```

## Exercise

In this exercise, you'll need to create a new table for us to insert some new rows into.
