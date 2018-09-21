insert into year (id,label) values
(1,"First year (Bsc)"),
(2,"Second year (Bsc Hons)"),
(3,"Third year (Msc)");

insert into student (id,firstname,lastname) values
(1,"Olivier","Martin"),
(2,"Pierre","Martin"),
(3,"Jacques","Martin"),
(4,"Martin","François"),
(5,"Jennifer","Garner");

insert into module (id,name,year) values
(1,"linux",1),
(2,"docker",1),
(3,"symfony",2),
(4,"asp.net core",2),
(5,"aspect oriented architecture",3),
(6,"ddd and hexagonal architecture",3);

insert into enrolment (id_student,id_year,`from`,`to`) values
(1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),
(1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),
(1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),
(2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00"),
(2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00"),
(2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00"),
(3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");
