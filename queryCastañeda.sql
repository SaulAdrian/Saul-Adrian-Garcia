Select * from Lenguajes
Select * from Organizaciones_Venta
Select * from materiales
Select * from Clientes
Select * from Transacciones_Venta

select Id_Cliente, Locacion, Pais, Descripcion
from clientes
where Pais='DE'

select mat.Descripcion, mat.Id_CatPro
from Categoria_Producto as cat, Materiales as mat
where cat.Id_CatPro=mat.Id_CatPro and mat.Id_CatPro='ACC'

---Productos mas vendidos en Marzo
select top 3 m.Descripcion, count( V.Producto_SKU)*v.Cantidad as Total
from Materiales as M, Transacciones_Venta as V
where m.Id_Material= V.Producto_SKU and v.Id_Mes='3'
group by m.Descripcion, v.Cantidad
order by Total asc

select * from Transacciones_Venta

---Cliente que dejo mas ganacia
select top 8 C.Descripcion, sum( V.Ganancia_USD) as ganancia 
from Clientes as C, Transacciones_Venta as V
where C.Id_Cliente=V.Id_Cliente
group by c.Descripcion, V.Id_Cliente
order by Ganancia desc

---Los 6 meses con mas ventas
select top 6 M.Nombre, count(V.Mes) as Total
from Transacciones_Venta as V, Meses as M
where V.Mes=M.Mes
group by M.Nombre
order by Total desc







