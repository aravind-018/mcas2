CREATE TABLE product (
    pdtID INT PRIMARY KEY,
    pname VARCHAR(50),
    price FLOAT,
    quantity INT
);

delimiter //
create procedure insertProd(in pcode INT, in pname varchar(50), in price float, in quantity int)
begin
if price>0 and quantity>0 then
	insert into product values(pcode,pname,price,quantity);
end if;
SELECT *FROM product;
end//
delimiter ;

call getprod();
call insertProd(1,'Gold',5456,5);
call insertProd(3,'Gold',554,25);

delimiter //
create trigger uptime
before update on product
for each row 
begin
set new.update_time=NOW();
end //
delimiter ;
