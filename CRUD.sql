create database CRUD

use CRUD

drop database CRUD

drop table Empleados

create table Empleados(
Id_Usuario int identity(1,1),
Nombre varchar(max),
Dpi BigInt,
Sexo varchar(15),
Correo varchar(max),
Fecha_Nacimiento date,
Edad int,
Fecha_Ingreso date,
Direccion varchar(max),
Nit int,
Departamento varchar(max)
)

DROP procedure sp_load
create procedure sp_load
as begin
select * from Empleados
End

--CRUD: CREATE, READ, UPDATE, DELETE | Procedimientos almacenados
DROP procedure sp_create
create procedure sp_create
@Nombre varchar(15),
@Dpi BigInt,
@Sexo varchar(15),
@Correo varchar(max),
@Fecha date,
@Edad int,
@Fecha_Ingreso date,
@Direccion varchar(max),
@Nit int,
@Departamento varchar(max)
as begin
insert into Empleados values(@Nombre, @Dpi, @Sexo, @Correo, @Fecha, @Edad, @Fecha_Ingreso, @Direccion, @Nit, @Departamento)
end

DROP procedure sp_read
create procedure sp_read
@Id int
as begin
select * from Empleados where Id_Usuario=@Id
end

DROP procedure sp_update
create procedure sp_update
@Id int,
@Nombre varchar(15),
@Dpi BigInt,
@Sexo varchar(15),
@Correo varchar(max),
@Fecha date,
@Edad int,
@Fecha_Ingreso date,
@Direccion varchar(max),
@Nit int,
@Departamento varchar(max)
as begin
update Empleados set Nombre=@Nombre, Dpi=@Dpi, Sexo=@Sexo, Correo=@Correo, Fecha_Nacimiento=@Fecha, Edad=@Edad, Fecha_Ingreso=@Fecha_Ingreso, Direccion=@Direccion, Nit=@Nit, Departamento=@Departamento
where Id_Usuario=@Id
end

drop procedure sp_delete
create procedure sp_delete
@Id int
as begin
delete from Empleados where Id_Usuario=@Id
end



select * from Empleados