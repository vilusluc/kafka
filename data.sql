create table customers (
    id SERIAL PRIMARY KEY,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    email varchar(100) not null,
    createAt date,
    updateedAt  timestamp DEFAULT current_timestamp,
    constraint uk_email unique(email)
);

create table addresses (
    id SERIAL PRIMARY KEY,
    civic_number integer,
    app_number varchar(10),
    street varchar(45),
    city varchar(45) DEFAULT 'Quebec',
    country varchar(35) DEFAULT 'Canada',
    province varchar (35) DEFAULT 'Quebec',
    postal_code varchar(7),
    createAt date,
    updateedAt  timestamp DEFAULT current_timestamp,
    customer_id integer not null,
    constraint fk_customer_address foreign key(customer_id) references customers(id)
);

insert into customers (firstname, lastname, email, createAt)
values('Jean', 'Valjean', 'jean.valjean@hotmail.com', '2021-02-10');

insert into customers (firstname, lastname, email, createAt)
values('Jean', 'Vilus', 'jean.vilus@hotmail.com', '2021-02-10');

insert into customers (firstname, lastname, email, createAt)
values('Luc-Anderson', 'Vilus', 'luc-anderson.vilus@hotmail.com', '2021-02-10');
insert into customers (firstname, lastname, email, createAt)
values('Sebastien', 'Malenfant', 'sebastien.malenfant@gmai.com', '2021-02-11');

insert into addresses(civic_number, app_number, street, postal_code, CREATE_TS, customer_id)
values(2435, null, 'Chemin efface', 'D6Y9G9', '2021-02-11', 3);
insert into addresses(civic_number, app_number, street, postal_code, CREATE_TS, customer_id)
values(2435, null, 'St-Jean', 'G3T7W9', '2021-02-10', 1);
insert into addresses(civic_number, app_number, street, postal_code, CREATE_TS, customer_id)
values(2435, null, 'Chemin efface', 'D6Y9G9', '2021-02-11', 2);