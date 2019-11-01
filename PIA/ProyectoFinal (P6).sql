Create database ProyectoFin

use ProyectoFin

Create table PtoDeVenta (
	
	Pto_ID int not null primary key,
	Calle varchar (50) not null,
	Colonia varchar (50) not null,
	Ciudad varchar (50) not null,
	Estado varchar (50) not null,
	Pais varchar (50) not null,
	Ubicacion as (Calle + ', ' + Colonia + ', ' + Ciudad + ', ' + Estado + ', ' + Pais),
	CodPostal bigint not null,
	HoraApertura time not null,
	HoraCerrado time not null
)

Create table Empleado (
	Empleado_ID int not null primary key,
	Nombre1 varchar (20) not null,
	Nombre2 varchar (20),
	Apellido1 varchar (20),
	Apellido2 varchar (20),
	NomCompleto as (Nombre1 + ' ' + Apellido1 + ' ' + Apellido2),
	Edad int not null,
	Correo varchar (30) not null,
	Calle varchar (30) not null,
	Colonia varchar (30) not null,
	Ciudad varchar (30) not null,
	Estado varchar (30) not null,
	Pais varchar (30) not null,
	Vivienda as (Calle + ', ' + Colonia + ', ' + Ciudad + ', ' + Estado + ', ' + Pais),
	SegSocial bigint not null,
	Puesto_ID int not null,
	Pto_ID int not null,
	Turno_ID int not null
)

Alter table Empleado add Constraint FK_Puesto Foreign key (Puesto_ID) references Puesto (Puesto_ID)
Alter table Empleado add Constraint FK_Pto Foreign key (Pto_ID) references PtoDeVenta (Pto_ID)
Alter table Empleado add Constraint FK_Turno Foreign key (Turno_ID) references Turno (Turno_ID)


Create table Puesto (
	Puesto_ID int not null primary key,
	NombrePuesto varchar (30) not null,
	HoraEntrada time not null,
	HoraSalida time not null,
	--Horario
	PagoXHora int not null,
	HorasTrabajo int not null,
	Sueldo as (PagoXHora * HorasTrabajo)
)

Create table Producto (
	Producto_ID int not null primary key,
	Nombre varchar (20) not null,
	Marca_ID int not null,
	CantidadProducto int not null,
	Medida_ID int not null,
	Precio int not null,
	MesCadu int not null,--Mes_ID
	AñoCadu int not null,
	FechaCadu as (MesCadu + '/' + AñoCadu),
	Tamaño_ID int not null,
	Categoria_ID int not null
)

Alter table Producto add Constraint FK_Marca Foreign key (Marca_ID) references Marca (Marca_ID)
Alter table Producto add Constraint FK_Medida Foreign key (Medida_ID) references Medida (Medida_ID)
Alter table Producto add Constraint FK_Tamaño Foreign key (Tamaño_ID) references Tamaño (Tamaño_ID)
Alter table Producto add Constraint FK_Categoria Foreign key (Categoria_ID)
references Categoria (Categoria_ID)
Alter table Producto add Constraint FK_Mes Foreign key (MesCadu) references Meses (Mes_ID)
Alter table Producto drop column FechaCadu 

Create table Proovedor (
	Proovedor_ID int not null primary key,
	NombreProo varchar (30) not null,
	TelProo bigint not null,
	CorreoProo varchar (30)
)

Create table Almacen (
	Almacen_ID int not null primary key,
	Calle varchar not null,
	Colonia varchar not null,
	Ciudad varchar not null,
	Estado varchar not null,
	Pais varchar not null,
	Ubicacion as (Calle + ', ' + Colonia + ', ' + Ciudad + ', ' + Estado + ', ' + Pais)
)

alter table Almacen drop column Ubicacion
alter table Almacen alter column Calle varchar (40)
alter table Almacen alter column Colonia varchar (40)
alter table Almacen alter column Ciudad varchar (40)
alter table Almacen alter column Estado varchar (40)
alter table Almacen alter column Pais varchar (40)
alter table Almacen add Ubicacion as (Calle + ', ' + Colonia + ', ' + Ciudad + ', ' + Estado + ', ' + Pais)


Create table Medida (
	Medida_ID int not null primary key,
	Medida varchar (20) not null
)

Create table Ticket (
	TicketNum int not null primary key,
	Pto_ID int not null,
	Empleado_ID int not null,
	Producto_ID int not null,
	Precio int not null,
	Cantidad int not null,
	Total as (Precio * Cantidad),
	TotalPagado int not null,
	TipoPago_ID int not null,
	CantPago int not null,--eliminado
	Fecha datetime not null,
	Tarjeta_ID int
)

Alter table Ticket add Constraint FK_PtoTicket Foreign key (Pto_ID) references PtoDeVenta (Pto_ID)
Alter table Ticket add Constraint FK_Empleado Foreign key (Empleado_ID) references Empleado (Empleado_ID)
Alter table Ticket add Constraint FK_Producto Foreign key (Producto_ID) references Producto (Producto_ID)
Alter table Ticket add Constraint FK_TipPago Foreign key (TipoPago_ID) references TipoPago (TipoPago_ID)
Alter table Ticket add Constraint FK_Tarjeta Foreign key (Tarjeta_ID) references Tarjeta (Tarjeta_ID)
Alter table Ticket drop column CantPago

Create table TipoPago (
	TipoPago_ID int not null primary key,
	TipoPago varchar not null
)

alter table TipoPago alter column TipoPago varchar (20)

Create table Tarjeta (
	Tarjeta_ID int not null primary key,
	NombreTarj varchar (20) not null,
	TipoTarj varchar (20) not null
)

Create table Tamaño (
	Tamaño_ID int not null primary key,
	Tamaño varchar (20) not null
)

Create table Reabasto (
	ReabastoNum bigint not null primary key,
	Almacen_ID int not null,
	Proovedor_ID int not null,
	Producto_ID int not null,
	CostoXCanti int not null,
	Canti int not null,
	Total as (CostoXCanti * Canti),
	Pago int not null,
	Fecha datetime not null,
	Medida_ID int not null,
	Marca_ID int not null
)

Alter table Reabasto add Constraint FK_Almacen Foreign key (Almacen_ID) references Almacen (Almacen_ID)
Alter table Reabasto add Constraint FK_Proo Foreign key (Proovedor_ID) references Proovedor (Proovedor_ID)
Alter table Reabasto add Constraint FK_Prod Foreign key (Producto_ID) references Producto (Producto_ID)
Alter table Reabasto add Constraint FK_Medid Foreign key (Medida_ID) references Medida (Medida_ID)
Alter table Reabasto add Constraint FK_Marc Foreign Key (Marca_ID) references Marca (Marca_ID)
	
Create table Turno (
	Turno_ID int not null primary key,
	Turno varchar (20) not null
)

Create table Meses (
	Mes_ID int not null primary key,
	Mes varchar (30)
)

Create table Categoria (
	Categoria_ID int not null primary key,
	Categoria varchar not null
)

alter table Categoria alter column Categoria varchar (20)

Create table Marca (
	Marca_ID int not null primary key,
	Nombre varchar (30) not null,
	Proovedor_ID int not null
)

Alter table Marca add Constraint FK_Proovedor Foreign key (Proovedor_ID) references Proovedor (Proovedor_ID)


Create table Inventario (
	Producto_ID int not null,
	Almacen_ID int not null,
	Cantidad int not null,
	Medida_ID int not null
)
	
Alter table Inventario add Constraint FK_ProInv Foreign key (Producto_ID) references Producto (Producto_ID)
Alter table Inventario add Constraint FK_AlmInv Foreign key (Almacen_ID) references Almacen (Almacen_ID)
Alter table Inventario add Constraint FK_MedInv Foreign key (Medida_ID) references Medida (Medida_ID)

------------Valores PtoVenta----------

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (1, 'Sonora', 'San Miguel', 'Monterrey', 'Nuevo Leon', 'México', 158475, '7:30:00', '20:00:00')
 
Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (2, 'Sino', 'Torres', 'San Nicolas', 'Nuevo Leon', 'México', 521472, '7:30:00', '20:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (3, 'Cerro', 'Corona', 'San Pedro', 'Nuevo Leon', 'México', 514879, '7:00:00', '22:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (4, 'Campana', 'Frida', 'San Nicolas', 'Nuevo Leon', 'México', 548961, '7:30:00', '20:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (5, 'Trino', 'Trono', 'San Nicolas', 'Nuevo Leon', 'México', 256987, '7:15:00', '20:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (6, 'Topo', 'Trago', 'Apodaca', 'Nuevo Leon', 'México', 215487, '8:15:00', '21:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (7, 'Tinmio', 'Zocalo', 'San Nicolas', 'Nuevo Leon', 'México', 215698, '6:45:00', '20:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (8, 'Tronami', 'ABCDEF', 'Monterrey', 'Nuevo Leon', 'Méxcio', 215965, '8:30:00', '20:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (9, 'Tonito', 'logiano', 'Saltillo', 'Coahuila', 'México', 215987, '9:30:00', '21:00:00')

Insert into PtoDeVenta (Pto_ID, Calle, Colonia, Ciudad, Estado, Pais, CodPostal, HoraApertura, HoraCerrado)
values (10, 'so live', 'a life', 'you will', 'remember', 'Estados Unidos', 125987, '10:00:00', '21:00:00') 

------Valores Empleado-----

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (1, 'Fernando', 'Alberto', 'Fernandez', 'Gonzales', 21, 'Fer@hotmail.com', 'Gonzalitos', 'Truncas', 'Monterrey', 
'Nuevo Leon', 'México', 152684, 1, 2, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (2, 'Francisco', 'Gino', 'Boca', 'Valdez', 25, 'boca@hotmail.com', 'sho', 'the', 'San Nicolas', 'Nuevo Leon',
'México', 215698, 3, 4, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (3, 'Francis', 'Gio', 'Boca', 'Valdez', 30, 'boca@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 215678, 3, 9, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (4, 'Fracis', 'Gio', 'Boca', 'Valdez', 24, 'boca@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 285678, 8, 7, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (5, 'Francis', 'Gio', 'Boca', 'Valdez', 29, 'boca@hotmail.com', 'sho', 'Santiago', 'Apodaca', 'Nuevo Leon',
'México', 215478, 3, 10, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (6, 'Frida', 'Alejandra', 'Tita', 'Americia', 45, 'shi@hotmail.com', 'sho', 'the', 'Saltillo', 'Coahuila',
'México', 214878, 10, 4, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (7, 'Alexis', 'Cara', 'Cora', 'Carason', 22, 'AleCo@hotmail.com', 'djjkd', 'poliddf', 'San Pedro', 'Nuevo Leon',
'México', 226578, 2, 5, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (8, 'Coral', 'Alejandri', 'Cabo', 'Ortiz', 30, 'OrtCabo@hotmail.com', 'svjhsjo', 'ksieydbf', 'Virginia beach',
'Virginia','Estados Unidos', 598642, 6, 8, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (9, 'Francisqui', 'Goma', 'Lorenzo', 'Glorietto', 26, 'Lore@hotmail.com', 'losdkhgit', 'abnsfhir', 'gical',
'Brizia', 'Italia', 548963, 10, 10, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (10, 'Sirra', 'Magdalena', 'Hernandez', 'Vol', 36, 'Magda@hotmail.com', 'fjgiout', 'lodjkye', 'Monterrey', 
'kolsiski', 'Austria', 548896, 3, 6, 1)

select * from Empleado


-------Valores Puesto----

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (1, 'Cajero', '7:30:00', '15:30:00', 300, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (2, 'Cajero', '15:30:00', '23:00:00', 300, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (3, 'Conserje', '7:30:00', '15:30:00', 150, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (4, 'Conserje', '15:30:00', '23:00:00', 150, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (5, 'Guardia', '7:30:00', '15:30:00', 350, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (6, 'Guardia', '15:30:00', '23:00:00', 350, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (7, 'Acomodador', '7:30:00', '15:30:00', 300, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (8, 'Acomodador', '15:30:00', '23:00:00', 300, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (9, 'Cajero 2', '7:30:00', '15:30:00', 300, 8)

Insert into Puesto (Puesto_ID, NombrePuesto, HoraEntrada, HoraSalida, PagoXHora, HorasTrabajo)
values (10, 'Cajero 2', '15:30:00', '23:00:00', 300, 8) 

Select * from Puesto

------valores Producto---

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (1, 'Takis Fuego', 1, 350, 4, 15, 6, 2020, 1, 1)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (2, 'MyM´s', 5, 200, 4, 15, 7, 2020, 1, 4)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (3, 'Pepsi', 11, 500, 2, 14, 9, 2020, 2, 2)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (4, 'Galletas Emperador', 4, 100, 4, 14, 12, 2020, 2, 4)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (5, 'Nerds', 2, 50, 4, 10, 11, 2021, 1, 3)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (6, 'Runners', 1, 400, 4, 12, 10, 2021, 2, 1)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (7, 'Gamesa clasicas', 4, 100, 4, 15, 4, 2020, 2, 3)

Insert into Producto (Producto_ID, Nombre, Marca_ID, CantidadProducto, Medida_ID, Precio, MesCadu, AñoCadu, Tamaño_ID,
Categoria_ID)
values (8, 'Caja Emperador', 4, 8, 6, 20, 12, 2022, 3, 4) 

select * from Producto

-----Valores Proovedor-----

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (1, 'Bimbo', 8156321456, 'Bimbo@hotmail.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (2, 'Coca Cola', 8145987452, 'CocaSupport@hotmail.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (3, 'Pepsi Co', 8154796584, 'PepsiSup@hotmail.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (4, 'Nestlé', 8152364789, 'NestSup@hotmail.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (5, 'Danone', 8156324875, 'DanoSupport@gmail.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (6, 'Kellogs', 8156320125, 'KellogSup@live.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (7, 'Mars', 81256321478, 'Mars@hotmail.support.com')

Insert into Proovedor (Proovedor_ID, NombreProo, TelProo, CorreoProo)
values (8, 'Mondelez', 8156321478, 'Mondelez@Support.com')

select * from Proovedor

------Valores Almacen----

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (1, 'Filadelfia', 'Callespo', 'Monterrey', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (2, 'Coutinho', 'Contry', 'San Nicolas', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (3, 'Gitana', 'Ceveda', 'Apodaca', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (4, 'Lenin', 'Comunista', 'San Pedro', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (5, 'Karl', 'Levington', 'San Nicolas', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (6, 'Maximato', 'Independencia', 'Monterrey', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (7, 'cerro', 'Alpes', 'Saltillo', 'Coahuila', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (8, 'Comandante', 'licenciado', 'Rosales', 'Tabasco', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (9, 'Hercules', 'Simion', 'Apodaca', 'Nuevo Leon', 'México')

Insert into Almacen (Almacen_ID, Calle, Colonia, Ciudad, Estado, Pais)
values (10, 'Atlaton', 'polo', 'San Nicolas', 'Nuevo Leon', 'México')

select * from Almacen

-----Valores Medida----

Insert into Medida (Medida_ID, Medida)
values (1, 'litros')

Insert into Medida (Medida_ID, Medida)
values (2, 'mililitros')

Insert into Medida (Medida_ID, Medida)
values (3, 'Kilogramos')

Insert into Medida (Medida_ID, Medida)
values (4, 'gramos')

Insert into Medida (Medida_ID, Medida)
values (5, 'cajas')

Insert into Medida (Medida_ID, Medida)
values (6, 'Paquetes')

Insert into Medida (Medida_ID, Medida)
values (7, 'latas')

Insert into Medida (Medida_ID, Medida)
values (8, 'bolsas')

Insert into Medida (Medida_ID, Medida)
values (9, 'botellas')


------Valores Ticket

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (1, 2, 1, 7, 15, 2, 50, 2, 19/05/19, null)

Insert into Ticket (TicketNum, Pto_ID, Empleado_ID, Producto_ID, Precio, Cantidad, TotalPagado, TipoPago_ID,
Fecha, Tarjeta_ID)
values (2, 5, 2, 5, 10, 2, 20, 1, 15/06/20, 2)

select * from Ticket

-------Valores TipoPago -------

Insert into TipoPago (TipoPago_ID, TipoPago)
values (1, 'Tarjeta')

Insert into TipoPago (TipoPago_ID, TipoPago)
values (2, 'Efectivo')

---Valores tarjetas----

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (1, 'Citibanamex', 'credito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (2, 'BanRegio', 'debito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (3, 'AmericanExpress', 'Credito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (4, 'Santander', 'debito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (5, 'visa', 'credito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (6, 'HSBC', 'debito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (7, 'Banco Azteca', 'debito')

Insert into Tarjeta (Tarjeta_ID, NombreTarj, TipoTarj)
values (8, 'Libreton', 'Debito')  


------Valores Tamaño -----

Insert into Tamaño (Tamaño_ID, Tamaño)
values (1, 'Pequeño')

Insert into Tamaño (Tamaño_ID, Tamaño)
values (2, 'Mediano')

Insert into Tamaño (Tamaño_ID, Tamaño)
values (3, 'Grande')



------Valores Reabasto-----

Insert into Reabasto (ReabastoNum, Almacen_ID, Proovedor_ID, Producto_ID, CostoXCanti, Canti, Pago, Fecha, Medida_ID,
Marca_ID)
values (1, 5, 3, 3, 500, 15, 8000, 18/02/20, 5, 9)

select * from Reabasto

------ valores Turno------

Insert into Turno (Turno_ID, Turno)
values (1, 'Matutino')

Insert into Turno (Turno_ID, Turno)
values (2, 'Vespertino')

------Valores Meses------

Insert into Meses (Mes_ID, Mes)
values (1, 'Enero')

Insert into Meses (Mes_ID, Mes)
values (2, 'Febrero')

Insert into Meses (Mes_ID, Mes)
values (3, 'Marzo')

Insert into Meses (Mes_ID, Mes)
values (4, 'Abril')

Insert into Meses (Mes_ID, Mes)
values (5, 'Mayo')

Insert into Meses (Mes_ID, Mes)
values (6, 'Junio')

Insert into Meses (Mes_ID, Mes)
values (7, 'Julio')

Insert into Meses (Mes_ID, Mes)
values (8, 'Agosto')

Insert into Meses (Mes_ID, Mes)
values (9, 'Septiembre')

Insert into Meses (Mes_ID, Mes)
values (10, 'Octubre')

Insert into Meses (Mes_ID, Mes)
values (11, 'Noviembre')

Insert into Meses (Mes_ID, Mes)
values (12, 'Diciembre')

------Valores Categoria-----

Insert into Categoria (Categoria_ID, Categoria)
values (1, 'Picante')

Insert into Categoria (Categoria_ID, Categoria)
values (2, 'Gaseosa')

Insert into Categoria (Categoria_ID, Categoria)
values (3, 'Dulce')

Insert into Categoria (Categoria_ID, Categoria)
values (4, 'Chocolate')

Insert into Categoria (Categoria_ID, Categoria)
values (5, 'Salado')

------Valores Marca-----

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (1, 'Barcel', 1)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (2, 'Wonka', 4)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (3, 'Marinela', 1)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (4, 'Gamesa', 3)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (5, 'MyM´s', 7)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (6, 'Snickers', 7)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (7, 'Milky-way', 7)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (8, 'Skittles', 7)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (9, 'Tridents', 8)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (10, 'halls', 8)

Insert into Marca (Marca_ID, Nombre, Proovedor_ID)
values (11, 'Pepsi', 3)


------Valores Inventario------

Insert into Inventario (Producto_ID, Almacen_ID, Cantidad, Medida_ID)
values(2, 9, 100, 5) 

select * from Inventario

----Updates-----

Update Empleado set edad = 21 where Nombre1 = 'Francisco'

Update Empleado set edad = 32 where Nombre2 = 'Gio'

Update Empleado set edad = 44 where Empleado_ID = 1

Update Empleado set Nombre2 = 'Javier' where Empleado_ID = 5

Update Empleado set Nombre2 = 'Jorge' where Empleado_ID = 7

select * from Empleado

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (11, 'Rodrigo', 'Emilio', 'Perez', 'Fernandez', 30, 'RoPe@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 256987, 1, 6, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (12, 'Festin', 'Rodri', 'Coba', 'Lore', 30, 'Fes@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 256987, 2, 8, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (13, 'Emilio', 'Emilio', 'Emilioson', 'Wainas', 30, 'EmiEmi@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 256987, 3, 7, 1)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (14, 'Daniel', 'Sancho', 'Perez', 'Fernandez', 30, 'Ripo@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 256987, 6, 7, 2)

Insert into Empleado (Empleado_ID, Nombre1, Nombre2, Apellido1, Apellido2, Edad, Correo, Calle, Colonia, Ciudad, Estado,
Pais, SegSocial, Puesto_ID, Pto_ID, Turno_ID)
values (15, 'Rafael', 'James', 'Rafelson', 'Jameson', 30, 'SonJame@hotmail.com', 'sho', 'the', 'Monterrey', 'Nuevo Leon',
'México', 256987, 10, 6, 2)

Delete from Empleado where Empleado_ID = 11

Delete from Empleado where Empleado_ID = 12

Delete from Empleado where Empleado_ID = 13

Delete from Empleado where Empleado_ID = 14

Delete from Empleado where Empleado_ID = 15

select * from Empleado