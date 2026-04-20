declare
first number:=0;
second number:=1;
third number;
n number:=&n;
i number;
 
begin
dbms_output.put_line('Fibonacci series is:');
dbms_output.put_line(first);
dbms_output.put_line(second);
 
for i in 2..n
loop
third:=first+second;
first:=second;
second:=third;
dbms_output.put_line(third);
end loop;
end;
/