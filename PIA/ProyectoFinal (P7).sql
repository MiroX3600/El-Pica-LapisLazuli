
use ProyectoFin

Select * from Empleado E join Puesto P
on E.Puesto_ID = P.Puesto_ID
order by E.Nombre1

Select * from Empleado E left join PtoDeVenta Pto
on E.Pto_ID = Pto.Pto_ID
order by E.Empleado_ID

Select * from Producto Pro right join Marca Ma
on Pro.Marca_ID = Ma.Marca_ID
order by Pro.Producto_ID

Select * from Marca Ma join Proovedor P
on Ma.Proovedor_ID = P.Proovedor_ID
order by Ma.Marca_ID

Select * from Producto P left join Medida M
on P.Medida_ID = M.Medida_ID

Select Producto_ID, Nombre, P.Tamaño_ID, T.Tamaño from Producto P join Tamaño T
on P.Tamaño_ID = T.Tamaño_ID
order by P.Producto_ID

Select Nombre1, Apellido1, Ciudad, E.Puesto_ID, P.NombrePuesto from Empleado E join Puesto P
on P.Puesto_ID = E.Puesto_ID
where Ciudad like 'San Nicolas'

Select Nombre1, Apellido1, E.Puesto_ID, P.NombrePuesto from Empleado E join Puesto P
on E.Puesto_ID = P.Puesto_ID
where Nombre1 like '%Fran%'

Select Pro.Categoria_ID, Producto_ID, Pro.Nombre, C.Categoria from Producto Pro join Categoria C
on C.Categoria_ID = Pro.Categoria_ID

Select Rea.Proovedor_ID, Rea.ReabastoNum, Rea.Almacen_ID, Proo.NombreProo
from Reabasto Rea join Proovedor Proo
on Rea.Proovedor_ID = Proo.Proovedor_ID

Insert into Reabasto (ReabastoNum, Almacen_ID, Proovedor_ID, Producto_ID, CostoXCanti, Canti, Pago, Fecha, Medida_ID,
Marca_ID)
values (2, 4, 7, 2, 500, 15, 8000, 18/02/19, 5, 5)

select * from Reabasto

------Consultas Avaanzadas: 1era-----

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (3, 5, 2, 5, 10, 2, 20, 1, 15/06/20, 2)

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (4, 5, 1, 5, 10, 2, 20, 1, 15/06/20, 2)

Select Empleado_ID, sum(TotalPagado)
from Ticket
group by Empleado_ID
having sum(TotalPagado) > 0

----- 2do ------

Insert into Reabasto (ReabastoNum, Almacen_ID, Proovedor_ID, Producto_ID, CostoXCanti, Canti, Pago, Fecha, Medida_ID,
Marca_ID)
values (3, 4, 7, 2, 500, 15, 8000, 18/03/19, 5, 5)

Select Proovedor_ID, sum(Total)
from Reabasto
group by Proovedor_ID
having sum(Total) > 0

----- 3ero -----

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (5, 5, 4, 5, 10, 2, 20, 1, 15/06/20, 2)

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (6, 5, 4, 5, 10, 2, 20, 1, 15/06/20, 2)

Select Empleado_ID, sum(TotalPagado)
from Ticket
group by Empleado_ID
having sum(TotalPagado) > 0

----- 4to ------

Insert into Reabasto (ReabastoNum, Almacen_ID, Proovedor_ID, Producto_ID, CostoXCanti, Canti, Pago, Fecha, Medida_ID,
Marca_ID)
values (4, 4, 7, 2, 500, 15, 8000, 18/03/19, 5, 5)

Insert into Reabasto (ReabastoNum, Almacen_ID, Proovedor_ID, Producto_ID, CostoXCanti, Canti, Pago, Fecha, Medida_ID,
Marca_ID)
values (5, 8, 7, 2, 500, 20, 15000, 18/03/19, 5, 5)

Select Proovedor_ID, sum(Total)
from Reabasto
group by Proovedor_ID
having sum(Total) > 10000

----- 5to ------


Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (9, 'Pepsi Light', 11, 500, 2, 13, 6, 2019, 2, 2)

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (7, 8, 6, 9, 13, 2, 26, 1, 01/11/2019, 5)

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (8, 9, 6, 9, 13, 4, 52, 1, 02/11/2019, 5)

Select Empleado_ID, sum(TotalPagado)
from Ticket
group by Empleado_ID
having sum(TotalPagado) > 70     

select * from Reabasto
Select * from Proovedor
Select * from Producto
Select * from Marca
Select * from Ticket
Select * from PtoDeVenta
Select * from Empleado
Select * from TipoPago
Select * from Tarjeta