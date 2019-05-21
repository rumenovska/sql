--create function dbo.fn_EmployeeFullName (@EmployeeId int)

--returns nvarchar(2000)
--as
--begin

--declare @Result nvarchar (2000)

--select @Result= e.FirstName + N'' + e.LastName
--from dbo.Employee e
--where Id= @EmployeeId

--return @Result
--end

--select dbo.fn_EmployeeFullName(13)

drop function dbo.fn_FormatProductName
create function dbo.fn_FormatProductName (@ProductId int)
returns nvarchar(30)
as
begin

declare @Result nvarchar(30)

select @Result= SUBSTRING(p.Code, 2,2 ) +'-' + RIGHT(p.Name,3) + '-' + cast (p.Price as nvarchar)

   
from dbo.Product p
where id = @ProductId
return @Result

end

select *
from dbo.Product

select dbo.fn_FormatProductName(3)

--alter function dbo.fn_ProductDetails (@ProductId int)
--returns table
--as
--return

--select p.Id, p.Code, p.Name, p.Price 
--from dbo.Product p
--where id= @ProductId
--go
--select dbo.fn_ProductDetails(6)
--go
--select * from dbo.OrderDetails
--create function dbo.fn_ListOfProduct ()
--returns @ResultTable table(ProductName nvarchar(100))
--as

--begin

--insert into @ResultTable
--select p.Name ProductName 
--from dbo.Product p
--inner join dbo.OrderDetails o
--on p.Id= o.ProductId;


--return;

--end
--select dbo.fn_ListOfProduct()