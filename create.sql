create table publisher (
        id INTEGER PRIMARY KEY,
        name text,
        country text
);
create table books (
        id INTEGER PRIMARY KEY,
        title text,
        publisher INTEGER references publisher(id)
);
create table subjects (
        id INTEGER PRIMARY KEY,
        name text
);
create table books_subjects (
        book INTEGER references books(id),
        subject INTEGER references subjects(id)
);
