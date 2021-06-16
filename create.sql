create table publisher (
        id serial PRIMARY KEY,
        name text,
        country text
);
create table books (
        id serial PRIMARY KEY,
        title text,
        publisher serial references publisher(id)
);
create table subjects (
        id serial PRIMARY KEY,
        name text
);
create table books_subjects (
        book serial references books(id),
        subject serial references subjects(id)
);
