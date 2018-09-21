select s.firstname,s.lastname,y.label
from student s 
inner join enrolment e on s.id=e.id_student
inner join year y on y.id=e.id_year
where e.from='2017-01-01 00:00:00'
order by s.lastname ASC;