--Desactivar IDENTITY, ahora se puede insertar valor en idEmpleado
set identity_insert "Empleados" on
--Desactivar constraints, ahora se pueden insertar valores violando
--algunos CONSTRAINTS
ALTER TABLE "Empleados" NOCHECK CONSTRAINT ALL
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (1, 'Denys', 'Thérèsa', 'VP Quality Control', 'Mrs', '9/1/2019', '11/8/2019', '4 Pawling Court', 'Viçosa', 'America/Sao_Paulo', '59815-000', 'Brazil', '469-571-5561', 1, '', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, 'morbi sem mauris');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (2, 'Rozalski', 'Naéva', 'Information Systems Manager', 'Mrs', '1/3/2019', '7/9/2019', '52 Village Place', 'Bayuin', 'Asia/Manila', '4324', 'Philippines', '449-263-5739', 2, '', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 2, 'iaculis justo in hac habitasse platea dictumst');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (3, 'Lock', 'Géraldine', 'Financial Analyst', 'Mr', '11/5/2019', '19/6/2019', '6 Anthes Crossing', 'Rongxi', 'Asia/Chongqing', null, 'China', '523-942-2586', 3, '', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3, 'praesent id massa id nisl venenatis lacinia aenean');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (4, 'Drife', 'Dà', 'Environmental Tech', 'Mr', '1/8/2019', '4/12/2018', '2 Kenwood Lane', 'Bayzhansay', 'Asia/Almaty', null, 'Kazakhstan', '740-748-8715', 4, '', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4, 'consectetuer adipiscing elit proin interdum mauris non');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (5, 'Lanchester', 'Lucrèce', 'VP Quality Control', 'Dr', '25/1/2019', '14/2/2019', '1 Transport Trail', 'Jendouba', 'Africa/Tunis', null, 'Tunisia', '586-956-1435', 5, '', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 5, 'consectetuer adipiscing elit proin interdum mauris non ligula');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (6, 'Baurerich', 'Inès', 'Financial Analyst', 'Mrs', '24/12/2018', '19/7/2019', '6 Hayes Place', 'Nalbandyan', 'Asia/Yerevan', null, 'Armenia', '670-299-1324', 6, '', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 6, 'aliquam');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (7, 'Mogra', 'Béatrice', 'Biostatistician IV', 'Ms', '13/8/2019', '18/8/2019', '816 Doe Crossing Lane', 'Arosbaya', 'Asia/Makassar', null, 'Indonesia', '134-670-7251', 7, '', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 7, 'pellentesque viverra pede ac diam cras');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (8, 'Cheetam', 'Réjane', 'Senior Quality Engineer', 'Rev', '25/3/2019', '26/11/2018', '44676 Pierstorff Avenue', 'Bridgetown', 'America/Barbados', null, 'Barbados', '683-578-6759', 8, '', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 8, 'gravida sem');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (9, 'De Freyne', 'Michèle', 'Administrative Officer', 'Mr', '23/4/2019', '14/1/2019', '8 Florence Trail', 'Akune', 'Asia/Tokyo', '899-1741', 'Japan', '159-153-3555', 9, '', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 9, 'adipiscing molestie hendrerit at');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (10, 'Thornewill', 'Andrée', 'Registered Nurse', 'Ms', '11/7/2019', '23/11/2018', '31 Mayer Point', 'Wakaseko', 'Asia/Makassar', null, 'Indonesia', '908-909-2522', 10, '', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 10, 'et magnis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (11, 'Cayle', 'Maëline', 'General Manager', 'Dr', '11/4/2019', '30/7/2019', '033 Carpenter Crossing', 'San Antonio', 'America/Monterrey', '88710', 'Mexico', '994-868-8877', 1, '', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 11, 'rutrum nulla nunc purus phasellus in felis donec semper sapien');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (12, 'MacVay', 'Angèle', 'Engineer III', 'Mrs', '10/3/2019', '17/1/2019', '27 Macpherson Point', 'Linjiang', 'Asia/Shanghai', null, 'China', '351-509-1102', 2, '', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 12, 'sapien non mi');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (13, 'Beavington', 'Maïté', 'Mechanical Systems Engineer', 'Mr', '12/1/2019', '23/12/2018', '053 Sloan Junction', 'Al Buq‘ah', 'Asia/Hebron', null, 'Palestinian Territory', '858-759-5306', 3, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 13, 'in tempor turpis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (14, 'Wymer', 'Esbjörn', 'Research Nurse', 'Dr', '4/7/2019', '19/10/2019', '811 Talisman Hill', 'Il’inskiy', 'Europe/Moscow', '142143', 'Russia', '887-743-3029', 4, '', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 14, 'orci luctus et ultrices posuere cubilia curae duis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (15, 'Moule', 'Clémence', 'Research Nurse', 'Ms', '14/4/2019', '9/10/2019', '875 Sutherland Lane', 'Örebro', 'Europe/Stockholm', '700 09', 'Sweden', '223-670-5093', 5, '', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 15, 'aenean sit amet justo morbi');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (16, 'Summerley', 'Nuó', 'Biostatistician III', 'Ms', '26/5/2019', '4/4/2019', '560 Welch Pass', 'Tagoloan', 'Asia/Manila', '9222', 'Philippines', '206-555-0954', 6, '', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 16, 'quisque arcu libero');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (17, 'Fullegar', 'Marie-josée', 'Environmental Specialist', 'Mr', '10/2/2019', '31/5/2019', '073 Bartelt Crossing', 'Yaogu', 'Asia/Chongqing', null, 'China', '819-370-3310', 7, '', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 17, 'phasellus in felis donec semper sapien');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (18, 'Blaylock', 'Méline', 'Safety Technician IV', 'Dr', '29/4/2019', '15/11/2018', '24 Clarendon Lane', 'Pantijan No 2', 'Asia/Manila', '4133', 'Philippines', '261-421-6975', 8, '', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 18, 'non');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (19, 'Batchelour', 'Kallisté', 'Actuary', 'Mr', '5/1/2019', '19/7/2019', '4866 Loeprich Crossing', 'Bundoc', 'Asia/Manila', '3515', 'Philippines', '993-958-5809', 9, '', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 19, 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (20, 'Mounsie', 'Pénélope', 'Financial Advisor', 'Dr', '27/12/2018', '22/5/2019', '11026 Bayside Lane', 'Palguyod', 'Asia/Manila', '2437', 'Philippines', '842-507-9005', 10, '', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 20, 'in ante vestibulum ante');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (21, 'Savine', 'Mélanie', 'Product Engineer', 'Mr', '12/12/2018', '14/2/2019', '634 Main Crossing', 'Meixi', 'Asia/Shanghai', null, 'China', '659-654-4762', 1, '', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 21, 'risus praesent lectus vestibulum quam');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (22, 'Gilhouley', 'Mårten', 'Senior Quality Engineer', 'Mr', '23/8/2019', '9/8/2019', '04 Green Ridge Alley', 'Norrköping', 'Europe/Stockholm', '603 86', 'Sweden', '787-305-3833', 2, '', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 22, 'luctus nec');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (23, 'Wattins', 'Liè', 'Software Test Engineer I', 'Honorable', '13/10/2019', '14/12/2018', '5 Calypso Court', 'Quixadá', 'America/Fortaleza', '63900-000', 'Brazil', '993-600-3816', 3, '', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 23, 'odio elementum eu interdum');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (24, 'Radolf', 'Solène', 'Desktop Support Technician', 'Mr', '16/6/2019', '10/2/2019', '64328 Green Park', 'Paritjunus', 'Asia/Jakarta', null, 'Indonesia', '746-788-1710', 4, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 24, 'rutrum neque aenean auctor gravida');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (25, 'Shorthill', 'Rébecca', 'Desktop Support Technician', 'Mr', '23/9/2019', '26/3/2019', '94 Jana Park', 'San Jose', 'America/Los_Angeles', '95194', 'United States', '408-474-3166', 5, '', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 25, 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (26, 'Reijmers', 'Océane', 'Database Administrator IV', 'Dr', '6/12/2018', '7/8/2019', '1391 Transport Circle', 'Buaran', 'Asia/Jakarta', null, 'Indonesia', '294-152-7320', 6, '', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 26, 'mauris non ligula pellentesque ultrices');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (27, 'Petti', 'Célia', 'Quality Engineer', 'Dr', '9/2/2019', '31/8/2019', '04697 Eagle Crest Court', 'Stochov', 'Europe/Prague', '273 03', 'Czech Republic', '868-676-6082', 7, '', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 27, 'cubilia curae duis faucibus accumsan odio');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (28, 'Drivers', 'Rébecca', 'Geological Engineer', 'Ms', '9/10/2019', '5/3/2019', '70933 Red Cloud Point', 'Lewopao', 'Asia/Makassar', null, 'Indonesia', '267-514-8337', 8, '', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 28, 'id');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (29, 'Begwell', 'Anaëlle', 'Database Administrator IV', 'Dr', '6/7/2019', '14/9/2019', '91388 Burrows Pass', 'Zhongxi', 'Asia/Shanghai', null, 'China', '497-364-8748', 9, '', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 29, 'a libero nam dui proin leo odio porttitor id');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (30, 'Drew', 'Yè', 'Electrical Engineer', 'Dr', '24/11/2018', '9/7/2019', '0 Fallview Hill', 'Changbao', 'Asia/Chongqing', null, 'China', '173-463-8179', 10, '', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 30, 'risus dapibus augue vel accumsan');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (31, 'Fullman', 'Judicaël', 'Programmer Analyst IV', 'Mrs', '30/5/2019', '12/9/2019', '7 Nancy Crossing', 'Xiangtang', 'Asia/Harbin', null, 'China', '800-235-2124', 1, '', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 31, 'donec diam neque vestibulum eget vulputate');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (32, 'Dobing', 'Léa', 'Developer II', 'Dr', '17/7/2019', '3/1/2019', '613 Buell Pass', 'Rizal', 'Asia/Manila', '7104', 'Philippines', '622-885-9644', 2, '', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 32, 'feugiat non pretium quis lectus suspendisse potenti');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (33, 'De Luna', 'Faîtes', 'Web Designer I', 'Dr', '17/12/2018', '27/8/2019', '155 Northwestern Plaza', 'Rasskazovo', 'Europe/Moscow', '680001', 'Russia', '134-773-9819', 3, '', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 33, 'nulla justo aliquam quis turpis eget');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (34, 'Coxwell', 'Marie-josée', 'Senior Developer', 'Mrs', '14/9/2019', '14/6/2019', '97 Shasta Terrace', 'Cañada de Gómez', 'America/Argentina/Cordoba', '2500', 'Argentina', '950-701-6213', 4, '', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 34, 'non velit donec diam neque vestibulum eget vulputate ut ultrices');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (35, 'Folbige', 'Chloé', 'Electrical Engineer', 'Dr', '24/7/2019', '22/1/2019', '928 Harper Pass', 'Thị Trấn Quan Hóa', 'Asia/Ho_Chi_Minh', null, 'Vietnam', '634-304-1116', 5, '', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 35, 'duis mattis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (36, 'Benz', 'Mén', 'Social Worker', 'Rev', '3/7/2019', '16/2/2019', '81 La Follette Trail', 'Hanshou', 'Asia/Shanghai', null, 'China', '170-874-4791', 6, '', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 36, 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (37, 'Vowell', 'Méng', 'Staff Accountant I', 'Mrs', '13/1/2019', '5/6/2019', '7556 Briar Crest Center', 'Sedinginan', 'Asia/Jakarta', null, 'Indonesia', '990-431-6313', 7, '', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 37, 'quis turpis eget elit sodales scelerisque mauris');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (38, 'Pilpovic', 'Marie-josée', 'Account Executive', 'Mrs', '25/3/2019', '26/5/2019', '44642 Brentwood Junction', 'Sośnicowice', 'Europe/Warsaw', '44-153', 'Poland', '134-819-7762', 8, '', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 38, 'ac diam cras pellentesque volutpat dui maecenas tristique est et');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (39, 'Keizman', 'Ophélie', 'Recruiter', 'Dr', '1/1/2019', '4/10/2019', '67690 Monterey Way', 'Saki', 'Africa/Lagos', null, 'Nigeria', '767-472-2714', 9, '', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 39, 'felis sed lacus morbi sem mauris laoreet ut rhoncus');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (40, 'Axtonne', 'Mélissandre', 'Design Engineer', 'Honorable', '16/9/2019', '30/12/2018', '08 Waubesa Park', 'Thionville', 'Europe/Paris', '57119 CEDEX', 'France', '960-372-7717', 10, '', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 40, 'non mi integer ac neque duis bibendum morbi non');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (41, 'Hobden', 'Audréanne', 'Financial Analyst', 'Honorable', '20/1/2019', '21/3/2019', '76758 Golf Course Junction', 'Jinkou', 'Asia/Shanghai', null, 'China', '226-905-3418', 1, '', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 41, 'sed tincidunt eu felis fusce posuere felis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (42, 'Rosenblath', 'Maïlis', 'Environmental Specialist', 'Honorable', '16/4/2019', '20/8/2019', '623 Huxley Road', 'Paris 11', 'Europe/Paris', '75522 CEDEX 11', 'France', '811-479-7074', 2, '', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 42, 'in congue etiam justo etiam pretium');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (43, 'Krauze', 'Lài', 'VP Product Management', 'Dr', '25/4/2019', '1/6/2019', '2277 Dawn Terrace', 'Baota', 'Asia/Shanghai', null, 'China', '269-206-2746', 3, '', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 43, 'donec ut mauris eget massa tempor convallis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (44, 'Swinford', 'Angélique', 'Physical Therapy Assistant', 'Rev', '20/8/2019', '13/8/2019', '4 Clemons Circle', 'Paraíso', 'America/Sao_Paulo', '15825-000', 'Brazil', '263-447-2928', 4, '', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 44, 'luctus nec molestie sed justo pellentesque viverra pede ac');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (45, 'Kalvin', 'Uò', 'Senior Editor', 'Mrs', '13/4/2019', '26/11/2018', '88106 Quincy Court', 'Tecpán Guatemala', 'America/Guatemala', '04006', 'Guatemala', '590-766-5153', 5, '', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 45, 'mus');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (46, 'Steeden', 'Clémence', 'Help Desk Operator', 'Mrs', '13/12/2018', '22/10/2018', '035 Mcguire Place', 'Freguesia do Ribeirao da Ilha', 'America/Sao_Paulo', '38310-000', 'Brazil', '171-764-5640', 6, '', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 46, 'in faucibus orci luctus et');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (47, 'McWard', 'Judicaël', 'Assistant Manager', 'Dr', '20/8/2019', '30/4/2019', '42768 Westridge Circle', 'Aguisan', 'Asia/Manila', '4101', 'Philippines', '453-438-4935', 7, '', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 47, 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (48, 'Sallter', 'Cléa', 'Civil Engineer', 'Honorable', '26/9/2019', '24/5/2019', '3371 Magdeline Hill', 'Kuybyshevskiy Zaton', 'Europe/Moscow', '422826', 'Russia', '484-907-2480', 8, '', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 48, 'turpis sed ante vivamus tortor duis mattis');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (49, 'Krauss', 'Göran', 'Cost Accountant', 'Ms', '15/3/2019', '20/1/2019', '89 Nevada Street', 'Anton', 'Europe/Sofia', '2089', 'Bulgaria', '403-718-5177', 9, '', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 49, 'sem duis aliquam convallis nunc proin at');
insert into Empleados (idEmpleado, apellido, nombre, titulo, tituloDeCortesia, fechaNacimiento, fechaContratacion, direccion, ciudad, region, codigoPostal, pais, telefonoCasa, extension, foto, notas, reportaAEmpleado, pathFoto) values (50, 'Rumming', 'Cléa', 'Accountant II', 'Mrs', '24/1/2019', '4/8/2019', '84869 Ridge Oak Alley', 'Aqsay', 'Asia/Oral', null, 'Kazakhstan', '683-794-0761', 10, '', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 50, 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl');

--Reactivo configuración
set identity_insert "Empleados" off;
ALTER TABLE "Empleados" CHECK CONSTRAINT ALL;
