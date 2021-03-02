/* Populate tables */

INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (1, 'Andres', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (2, 'Johnatan', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (3, 'Andrea', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (4, 'Jonas', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (5, 'Armando', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (6, 'Raúl', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (7, 'Ismael', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (8, 'Jose', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (9, 'Javier', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (10, 'Juan', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (11, 'Ernesto', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (12, 'Isaac', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (13, 'Jacob', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (14, 'Joel', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (15, 'Irma', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (16, 'Yavelin', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (17, 'Anastasia', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (18, 'German', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (19, 'Ana', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (20, 'Alberto', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (21, 'Irma', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (22, 'Sandra', 'Gordilla', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (23, 'Mateo', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (24, 'Marcos', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (25, 'Lucas', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (26, 'John', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (27, 'Numero', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (28, 'Deuteronomio', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (29, 'Josue', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES (30, 'Julian', 'Doe', 'john.doe@gmail.com', '2017-08-28', '');


INSERT INTO productos(nombre, precio, create_at) VALUES ('Panasonic Pantall LCD', 259990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Sony Camara digital DSC-W320B', 1234590, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Apple iPod Shuffle', 1499990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Sony Notebook Z110', 37990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Bianchi Bicicleta Aro 26 ', 69990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES ('Mica Comoda 5 Cajones', 299990, NOW());

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES (1,1,1);
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES (2,1,4);
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES (1,1,5);
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES (1,1,7);

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', 'Alguna nota importante', 1, NOW());
INSERT INTO facturas_items(cantidad, factura_id, producto_id) VALUES (3,2,6);

INSERT INTO users (username, password, enabled) VALUES('andres', '$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG', 1);
INSERT INTO users (username, password, enabled) VALUES('admin', '$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS', 1);

INSERT INTO authorities (user_id, authority) VALUES(1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES(2, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES(2, 'ROLE_ADMIN');

