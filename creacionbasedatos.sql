create database SIBW;
CREATE USER 'coronavirus'@'%' IDENTIFIED BY 'covid19';
GRANT create, delete, drop, index, insert, select, update ON SIBW.* TO 'coronavirus'@'%';
use SIBW;
CREATE TABLE eventos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  org VARCHAR(100),
  fecha DATE,
  cabecera VARCHAR(200),
  descripcion TEXT,
  enlaces TEXT,
  titulosEnlaces TEXT
);
CREATE TABLE fotos(
idEvento INT,
foto VARCHAR(200),
tituloFoto VARCHAR(200),
autorFoto VARCHAR(100)
);
CREATE TABLE prohibidas(
  id INT AUTO_INCREMENT PRIMARY KEY,
  palabra VARCHAR(200)
);
CREATE TABLE comentarios(
idEvento INT,
autor VARCHAR(100),
fecha DATE,
hora TIME,
comentario TEXT
);

INSERT INTO eventos (nombre, org, fecha, cabecera, descripcion, enlaces, titulosEnlaces) 
VALUES 
('Salida al Encinarejo y actividades recreativas nocturnas',
'AKTIVJAEN',
'2021-03-23',
'/imgs/img9.jpg',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut erat egestas, elementum tellus sed, laoreet neque. Proin quis dignissim mauris. Curabitur ut tristique massa. Fusce viverra a diam accumsan efficitur. Donec nec metus commodo, sodales augue eu, fermentum purus. Mauris tellus mauris, hendrerit ac massa sit amet, commodo bibendum nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla semper leo non augue imperdiet, eget sodales augue molestie. Nunc ac mauris sit amet elit ornare maximus sit amet ut dui. Integer varius risus in sollicitudin tincidunt. Suspendisse vitae accumsan sapien, sed accumsan nisl. Aenean in auctor elit. Nunc suscipit justo ac dapibus semper. Sed urna quam, tristique id eros viverra, luctus gravida nisi. Etiam rutrum lobortis vehicula. Sed ut ligula velit.\n
                \nNunc congue velit nec mi semper mattis. Nunc dignissim bibendum odio non eleifend. Cras dignissim est ipsum, id posuere ante bibendum sit amet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam lorem odio, tristique ac mi sed, pharetra ullamcorper nunc. Sed at nibh sem. Nunc aliquet efficitur lorem in dapibus. Aenean ultricies ligula non augue vestibulum condimentum at eu quam. Sed viverra, elit nec tempor malesuada, justo lorem viverra justo, vel vehicula enim nibh et ligula. Curabitur eget odio scelerisque, tincidunt nulla eu, eleifend ipsum. Pellentesque ultrices malesuada consequat. Fusce dignissim felis enim, nec pulvinar diam lobortis quis. Duis et tellus et velit auctor suscipit ut a mauris. Fusce porta vulputate egestas. Integer pretium, mauris maximus laoreet ultrices, ligula leo accumsan nunc, ut aliquet nisl libero ut nulla.\n',
'https://aktivjaen.es/',
'PAGINA DEL ORGANIZADOR'
);
INSERT INTO eventos (nombre, org, fecha, cabecera, descripcion, enlaces, titulosEnlaces) 
VALUES 
('Observación de constelaciones en Sierra Morena por la madrugada',
'TURISNAT',
'2021-03-30',
'/imgs/img2.jpg',
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut erat egestas, elementum tellus sed, laoreet neque. Proin quis dignissim mauris. Curabitur ut tristique massa. Fusce viverra a diam accumsan efficitur. Donec nec metus commodo, sodales augue eu, fermentum purus. Mauris tellus mauris, hendrerit ac massa sit amet, commodo bibendum nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla semper leo non augue imperdiet, eget sodales augue molestie. Nunc ac mauris sit amet elit ornare maximus sit amet ut dui. Integer varius risus in sollicitudin tincidunt. Suspendisse vitae accumsan sapien, sed accumsan nisl. Aenean in auctor elit. Nunc suscipit justo ac dapibus semper. Sed urna quam, tristique id eros viverra, luctus gravida nisi. Etiam rutrum lobortis vehicula. Sed ut ligula velit.\n
                \nNunc congue velit nec mi semper mattis. Nunc dignissim bibendum odio non eleifend. Cras dignissim est ipsum, id posuere ante bibendum sit amet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam lorem odio, tristique ac mi sed, pharetra ullamcorper nunc. Sed at nibh sem. Nunc aliquet efficitur lorem in dapibus. Aenean ultricies ligula non augue vestibulum condimentum at eu quam. Sed viverra, elit nec tempor malesuada, justo lorem viverra justo, vel vehicula enim nibh et ligula. Curabitur eget odio scelerisque, tincidunt nulla eu, eleifend ipsum. Pellentesque ultrices malesuada consequat. Fusce dignissim felis enim, nec pulvinar diam lobortis quis. Duis et tellus et velit auctor suscipit ut a mauris. Fusce porta vulputate egestas. Integer pretium, mauris maximus laoreet ultrices, ligula leo accumsan nunc, ut aliquet nisl libero ut nulla.\n',
'https://turisnat.es/',
'PAGINA DEL ORGANIZADOR'
);

INSERT INTO fotos (idEvento, foto, tituloFoto, autorFoto) VALUES (1, '/imgs/sierra.jpg','Anochecer en Sierra Morena','Fernando Aribias');
INSERT INTO fotos (idEvento, foto, tituloFoto, autorFoto) VALUES (1, '/imgs/sierra3.jpg','Paisaje de sierra morena','Guacano Fernandez');
INSERT INTO fotos (idEvento, foto, tituloFoto, autorFoto) VALUES (2, '/imgs/sierra2.jpg','Zona baja del cerro','Maria Gutierrez');

INSERT INTO comentarios (idEvento, autor, fecha, hora, comentario) VALUES (1, 'Peralta', '2021-03-30', '12:04', 'Me interesa muito');
INSERT INTO comentarios (idEvento, autor, fecha, hora, comentario) VALUES (1, 'Ramon', '2021-03-30', '15:04', 'Hola');
INSERT INTO comentarios (idEvento, autor, fecha, hora, comentario) VALUES (2, 'Juan', '2021-03-30', '12:04', 'Esto mola');
INSERT INTO comentarios (idEvento, autor, fecha, hora, comentario) VALUES (2, 'Aaron', '2021-03-30', '15:04', 'Si');

INSERT INTO prohibidas (palabra) VALUES ('tonto');
INSERT INTO prohibidas (palabra) VALUES ('pirineo');
INSERT INTO prohibidas (palabra) VALUES ('cipollin');
INSERT INTO prohibidas (palabra) VALUES ('pluscuamperfecto');
INSERT INTO prohibidas (palabra) VALUES ('mariadelmarabad');
INSERT INTO prohibidas (palabra) VALUES ('rendirme');
INSERT INTO prohibidas (palabra) VALUES ('alcaparro');