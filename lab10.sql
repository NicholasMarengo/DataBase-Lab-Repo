﻿----------------------------------------------------------------------------------------
-- Courses and Prerequisites
-- by Alan G. Labouseur
-- Tested on Postgres 9.3.2
----------------------------------------------------------------------------------------

--
-- The table of courses.
--
create table Courses (
    num      integer not null,
    name     text    not null,
    credits  integer not null,
  primary key (num)
);


insert into Courses(num, name, credits)
values (499, 'CS/ITS Capping', 3 );

insert into Courses(num, name, credits)
values (308, 'Database Systems', 4 );

insert into Courses(num, name, credits)
values (221, 'Software Development Two', 4 );

insert into Courses(num, name, credits)
values (220, 'Software Development One', 4 );

insert into Courses(num, name, credits)
values (120, 'Introduction to Programming', 4);

select * 
from courses
order by num ASC;


--
-- Courses and their prerequisites
--
create table Prerequisites (
    courseNum integer not null references Courses(num),
    preReqNum integer not null references Courses(num),
  primary key (courseNum, preReqNum)
);

insert into Prerequisites(courseNum, preReqNum)
values (499, 308);

insert into Prerequisites(courseNum, preReqNum)
values (499, 221);

insert into Prerequisites(courseNum, preReqNum)
values (308, 120);

insert into Prerequisites(courseNum, preReqNum)
values (221, 220);

insert into Prerequisites(courseNum, preReqNum)
values (220, 120);

select *
from Prerequisites
order by courseNum DESC;


--
-- An example stored procedure ("function")
--
create or replace function get_courses_by_credits(int, REFCURSOR) returns refcursor as 
$$
declare
   num_credits int       := $1;
   resultset   REFCURSOR := $2;
begin
   open resultset for 
      select num, name, credits
      from   courses
       where  credits >= num_credits;
   return resultset;
end;
$$ 
language plpgsql;

select get_courses_by_credits(0, 'results');
Fetch all from results;

--question 1--


select *
from courses

select *
from prerequisites

create or replace function prereqsfor(INTEGER, refcursor) RETURNS refcursor as
$$
DECLARE
	course_num INT :=$1;
	resultset refcursor :=$2;
BEGIN
	open resultset FOR
	SELECT prereqnum
	FROM prerequisites
	WHERE course_num = coursenum
	ORDER BY prereqnum DESC
	LIMIT 1;
	RETURN resultset;
END;
$$
LANGUAGE plpgsql;

SELECT prereqsfor(499, 'results');
FETCH ALL FROM results


--question 2--

CREATE OR REPLACE FUNCTION isprereqfor(INT, refcursor) RETURNS refcursor AS 
$$
DECLARE 
	course_num INT :=$1;
	resultset refcursor :=$2;
BEGIN
	open resultset FOR
	select coursenum
	FROM prerequisites
	WHERE course_num = prereqnum;

	return resultset;
END 
$$ 
language plpgsql;

SELECT isprereqfor(120, 'results');
FETCH ALL FROM results;