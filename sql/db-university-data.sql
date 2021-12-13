-- DATI

use db_university;


-- TEST TABELLA DEPARTMENTS


insert into departments (name, address, email, website, phone) value ('Medicina', 'Viale Alesandro Manzoni, Milano', 'medicina@gmail.com', 'MedicinaDipartimento.it', 0331905832);
insert into departments (name, address, email, website, phone, head_of_department) value ('Scientifico', 'via Alessandro Magno, Bologna', 'scientifico@gmail.com', 'DipartimentoScientifico.it', 0334685129, 'Francesco Ronga');
insert into departments (name, address, email, website, phone, head_of_department) value ('Architettura', 'via Spaccanapoli, Napoli', 'architettura@gmail.com', 'ArchitetturaDipartimento.it', 0339462870, 'Federico Grande');
insert into departments (name, address, email, website, phone, head_of_department) value ('Psicologia', 'Viale Treviso, Roma', 'psicologia@gmail.com', 'PsicologiaDipartimento.it', 0339443889, 'Mattia Ok');


select * from departments;
select address from departments;
select * from departments where id = 4;


update departments set website = 'architetturastorica.com' where id = 3;
update departments set email = 'MedicinaPerMalatiTerminali@libero.org' where id = 1;
update departments set head_of_department = 'Franco Pallo' where id = 2;


delete from departments where id = 1;
delete from departments where id = 3;


-- TEST TABELLA DEGRESS


insert into degress (name, email, departments_id, website) value ('criminologia', 'criminologia34@gmail.com', 4, 'criminologiaNCIS.org');
insert into degress (name, email, address, departments_id) value ('biologia marina', 'BioMarina@libero.it', 'via Cuordileone, Varese', 2);


select * from degress;
select departments_id from degress;


update degress set email = 'criminologiaNCIS@github.oki' where id = 3;


delete from degress where id = 1;


-- TEST TABELLA COURSES


insert into courses (name, description, cfu, degress_id) value ('fisica', 'hksajskjackjcbkducbksbc', 50, 3);
insert into courses (name, website, cfu, degress_id) value ('matematica', 'matematicaApplicata.it', 4, 2);


select * from courses;
select * from courses where id = 3;


update courses set website = 'fisica.com' where id = 1;


delete from courses where id = 2;


-- TEST TABELLA TEACHERS


insert into teachers (name, surname, phone, email) value ('Franca', 'Carosello', 331905467, 'francacarosello@hotmail.com');
insert into teachers (name, surname, office_address) value ('Robbie', 'Williams', 'Via l attimo fuggente');


select surname from teachers;


update teachers set name = 'Robert' where id = 2;
update teachers set name = 'Robbie' where id = 3;


delete from teachers where id = 1;