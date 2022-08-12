#Vaciar la tabla historial y resetear el contador del campo ID.

TRUNCATE TABLE `historial`;
ALTER TABLE `historial` AUTO_INCREMENT=0;
