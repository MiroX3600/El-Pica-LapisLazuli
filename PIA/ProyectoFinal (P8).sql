
use ProyectoFin

Select * from Ticket
Select * from Empleado
Select * from Puesto

Select TicketNum, Pto_ID, Empleado_ID,
	(Select Nombre1 from Empleado E
	where E.Empleado_ID = T.Empleado_ID) as Empleado 
from Ticket T

with cteEmpleado (Empleado_ID, Nombre1, Apellido1, NombrePuesto)
as (select Empleado_ID, Nombre1, Apellido1,
		(Select NombrePuesto from Puesto P
		where E.Puesto_ID = P.Puesto_ID) as Puesto
	from Empleado E)
select * from cteEmpleado

Select Empleado_ID, Nombre1, Apellido1, 
	(Select NombrePuesto from Puesto P
	where E.Puesto_ID = P.Puesto_ID) as Puesto 
into TablaDato from Empleado E

Select * from TablaDato

Drop table TablaDato

---- Vistas ------

Create view Vista1
as select Empleado_ID, Nombre1, Apellido1 from Empleado
where Empleado_ID = 1

Create view Vista2
as select Empleado_ID, Nombre1, Apellido1 from Empleado
where Empleado_ID = 5

Create view Vista3
as select Empleado_ID, Nombre1, Apellido1,
	(Select NombrePuesto from Puesto P
	where P.Puesto_ID = E.Puesto_ID) as Puesto
from Empleado E
where Empleado_ID = 2

Create view Vista4
as select Empleado_ID, Nombre1, Apellido1,
	(Select NombrePuesto from Puesto P
	where P.Puesto_ID = E.Puesto_ID) as Puesto
from Empleado E
where Empleado_ID = 8

Create view Vista5
as select Proovedor_ID, NombreProo, CorreoProo from Proovedor
where Proovedor_ID = 1

select * from Proovedor

Select * from Vista1
Select * from Vista2
Select * from Vista3
Select * from Vista4
Select * from Vista5