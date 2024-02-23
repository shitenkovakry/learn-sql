/*
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
*/

with
  table1 as (
     select concat(Name, '(', left(Occupation, 1), ')') as result
     from OCCUPATIONS
     order by Name asc
  ),
  table2 as (
     select
      concat('There are a total of ', count(Occupation), ' ', lower(Occupation),
             case when count(Occupation) > 1 then 's'
             end, '.') as result
     from OCCUPATIONS
     group by Occupation
     order by count(Occupation)
  )
(
    select result
    from table1
)
union
(
    select result
    from table2
);


/*правильное решение для сайта*/

     select concat(Name, '(', left(Occupation, 1), ')') as result
     from OCCUPATIONS
     order by Name asc;

     select
      concat('There are a total of ', count(Occupation), ' ', lower(Occupation),
             case when count(Occupation) > 1 then 's'
             end, '.') as result
     from OCCUPATIONS
     group by Occupation
     order by count(Occupation);
