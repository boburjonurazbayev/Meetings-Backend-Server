---------------------------------------------------------Create database pressa

DROP DATABASE IF EXISTS pressa;
CREATE DATABASE pressa;
\c pressa;

----------------------------------------------------------Events table

create type verify as enum('unverified', 'verified', 'cancelled' );
create type eventType as enum('online', 'offline');
create type organizerType as enum('jismoniy', 'yuridik');

DROP TABLE IF EXISTS events;
CREATE TABLE events(
    event_id serial primary key,
    event_category varchar(60) not null,
    event_sub_category varchar(60) not null,
    event_date date not null,
    event_time time not null,
    event_type eventType not null,
    event_link varchar(60),
    event_title varchar(100) not null,
    event_description text not null,
    event_text text,
    event_photos text [],
    event_verify verify default 'unverified' not null, 
    organiser_type organizerType not null,
    organiser_company varchar(60),
    organiser_name varchar(60) not null,
    organiser_profession varchar(60) not null,
    contact text []
);

create index verify_ind on events (event_verify) where event_verify = 'verified';

explain select * from events where event_verify = 'verified';

---------------------------------------------------------------Admins table

DROP TABLE IF EXISTS admins;
CREATE TABLE admins(
    admin_id serial primary key,
    admin_name varchar(64) not null,
    admin_password varchar(60) not null
);