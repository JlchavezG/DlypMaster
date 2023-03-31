ALTER TABLE `calificacionlugar`
  ADD PRIMARY KEY (`Id_CalificacionL`);



ALTER TABLE `categorial`
 ADD PRIMARY KEY (`Id_Categoria`);



ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Id_Comentario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_Lugar` (`id_Lugar`);



ALTER TABLE `costos`
  ADD PRIMARY KEY (`Id_Costos`),
  ADD KEY `id_lugar` (`id_lugar`);



ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_Estado`);



ALTER TABLE `estatus`
  ADD PRIMARY KEY (`Id_Estatus`);



ALTER TABLE `galerialugar`
  ADD PRIMARY KEY (`Id_Galeria`),
  ADD KEY `id_lugar` (`id_lugar`);



ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);



ALTER TABLE `horario`
  ADD PRIMARY KEY (`Id_Horario`);



ALTER TABLE `lugares`
  ADD PRIMARY KEY (`Id_Lugar`),
  ADD KEY `Id_Estado` (`Id_Estado`),
  ADD KEY `Id_Municipio` (`Id_Municipio`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_calificacionlugar` (`id_calificacionlugar`),
  ADD KEY `id_estatus` (`id_estatus`);



ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `Id_Estado` (`Id_Estado`);



ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`Id_Tusuario`);



ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Tusuario` (`Id_Tusuario`);




ALTER TABLE `calificacionlugar`
  MODIFY `Id_CalificacionL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



ALTER TABLE `categorial`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;



ALTER TABLE `comentarios`
  MODIFY `Id_Comentario` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `costos`
  MODIFY `Id_Costos` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `estado`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `estatus`
  MODIFY `Id_Estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `galerialugar`
  MODIFY `Id_Galeria` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `horario`
  MODIFY `Id_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;



ALTER TABLE `lugares`
  MODIFY `Id_Lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;



ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



ALTER TABLE `tusuario`
  MODIFY `Id_Tusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;





ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `costos`
  ADD CONSTRAINT `costos_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `galerialugar`
  ADD CONSTRAINT `galerialugar_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipio` (`Id_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categorial` (`Id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_4` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`Id_Horario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_5` FOREIGN KEY (`id_calificacionlugar`) REFERENCES `calificacionlugar` (`Id_CalificacionL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_6` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`Id_Estatus`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Id_Tusuario`) REFERENCES `tusuario` (`Id_Tusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
