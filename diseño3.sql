/*Insercion corta*/
insert into duenios values('juanito@hotmail.com', 0987654321, 1750987643, 'Juanito', 'Yavirac-Tech');
select * from duenios;

/*Insercion larga*/
insert into duenios(correo, telf_duenio, num_licencia, nombre, lugar_trabajo) values('carlitos@hotmail.com',
																					987654321, 1753957693,
																					'Carlitos', 'Yavirac-Tech');

/* Insercion masiva*/
insert into duenio values(generate_series(3, 10),)




alter table nombreTabla add column nombreRegistro tipoDato(valor) not null o nada;
alter table clientes add column est_rec character(1)

UPDATE nombre_tabla SET columna1 = 'nuevo_valor' WHERE NombrecampoPK = 'valor1';
update clientes set est_rec = ‘i’ where id_cliente = 1;
