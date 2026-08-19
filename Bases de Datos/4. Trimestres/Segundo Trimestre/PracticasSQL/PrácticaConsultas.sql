use actdeport;
select Nombre, Ruta, Cantidad from recurso, usa where Cantidad>=0 order by Ruta;