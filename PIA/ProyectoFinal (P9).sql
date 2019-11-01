
use ProyectoFin

-----Funcion-----

create function Cambio (@TicketNum int) returns int
as
begin
declare @Resta int
select @Resta = (TotalPagado - Total) from Ticket where @TicketNum = TicketNum
return @Resta
end


Select * from Ticket
Select TicketNum as Ticket, dbo.Cambio(1) as Cambio from Ticket where TicketNum = 1
Select TicketNum as Ticket, dbo.Cambio(2) as Cambio from Ticket where TicketNum = 2

----- Trigger -----
 
Create trigger Dispara1
on Medida
for insert
as
print 'Cambiooo!!!'

Insert into Medida (Medida_ID, Medida)
values (10, 'bolsitas')

Delete from Medida where Medida_ID = 10 
select * from Medida

----- Procedimientos Almacenados -----

create procedure Proce1
as
Print 'Holaaaaaa XDXDXD'

execute Proce1
drop Proce1


Create procedure Proce2
as
select * from Empleado
where Empleado_ID = 1

execute Proce2
drop Proce2


Create procedure Proce3
as
Insert into Medida (Medida_ID, Medida)
values (11, 'Papeles')

execute Proce3
select * from Medida
Delete from Medida where Medida_ID = 11
drop Proce3


Create procedure Proce4
as
Select Nombre1, Apellido1, E.Puesto_ID, P.NombrePuesto from Empleado E join Puesto P
on E.Puesto_ID = P.Puesto_ID
where Nombre1 like '%Fran%'

execute Proce4
drop Proce4


Create Procedure Proce5
as
print 'Procedimiento 5 de impresion'

execute Proce5
drop Proce5