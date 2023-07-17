
create database  house;
create  type Gender as enum('Male','Female');
create  type house_type as enum('Apartment','House');
create type  family_status as enum('Married', 'Single','Divorced','Widow');


create table adress(
                       id serial primary key ,
                       city varchar,
                       region varchar,
                       street varchar

);
create table owner(
                      id serial primary key ,
                      first_name varchar,
                      last_name varchar,
                      email varchar,
                      date_of_birth date,
                      Gender gender);

create table costomers(
                          id serial primary key ,
                          first_name varchar,
                          last_name varchar,
                          email varchar,
                          date_of_birth date,
                          Gender gender,
                          nationality varchar,
                          FamilyStatus family_status

);

create table houses(
                       id serial primary key ,
                       price numeric,
                       rating float,
                       description  text,
                       room int,
                       furniture  boolean
);
drop table houses ;

create table agencies(
                         id serial primary key,
                         phone_number varchar

);
alter  table  agencies add column name varchar;
drop table agencies;


create table rent_infos(
                           id serial primary key,
                           owner_id serial,
                           costomer_id serial,
                           agency_id serial,
                           house_id serial
);

create table rent_infos(
    id serial primary key
);



alter table agencies alter column name  set not null;
--alter table agencies alter column phone_number check
alter  table agencies  add column address_id int references agencies(id);
alter  table houses   add column adress_id int references  houses(id);
alter  table houses   add column owner_id int references  houses(id);
