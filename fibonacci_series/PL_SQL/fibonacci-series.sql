declare
  
-- declare variable first = 0,
-- second = 1 and temp of datatype number
first number := 0;
second number := 1;
temp number;
  
n number := 5;
i number;
  
begin
  
    dbms_output.put_line('Series:');
  
--print first two term first and second
    dbms_output.put_line(first);
    dbms_output.put_line(second);
  
-- loop i = 2 to n
    for i in 2..n
    loop
        temp:=first+second;
  
first := second;
second := temp;
  
--print terms of fibonacci series
    dbms_output.put_line(temp);
end loop;
  
end;
--Program End