-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema accion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema accion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `accion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `accion` ;

-- -----------------------------------------------------
-- Table `accion`.`actividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accion`.`actividades` (
  `id_actividad` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id_actividad`),
  UNIQUE INDEX `id_actividad` (`id_actividad` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `accion`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accion`.`usuario` (
  `codigo_usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NOT NULL,
  `Apellido1` VARCHAR(30) NOT NULL,
  `Apellido2` VARCHAR(30) NULL DEFAULT NULL,
  `Estado` VARCHAR(30) NOT NULL,
  `Municipio` VARCHAR(30) NOT NULL,
  `Colonia` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_usuario`),
  UNIQUE INDEX `codigo_usuario` (`codigo_usuario` ASC) VISIBLE,
  UNIQUE INDEX `Email` (`Email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `accion`.`calificacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accion`.`calificacion` (
  `codigo_usuario` INT UNSIGNED NOT NULL,
  `actividad` INT UNSIGNED NOT NULL,
  `resultado` INT UNSIGNED NOT NULL,
  INDEX `codigo_usuario` (`codigo_usuario` ASC) VISIBLE,
  INDEX `actividad` (`actividad` ASC) VISIBLE,
  CONSTRAINT `calificacion_ibfk_1`
    FOREIGN KEY (`codigo_usuario`)
    REFERENCES `accion`.`usuario` (`codigo_usuario`),
  CONSTRAINT `calificacion_ibfk_2`
    FOREIGN KEY (`actividad`)
    REFERENCES `accion`.`actividades` (`id_actividad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `accion`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accion`.`rol` (
  `id_rol` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE INDEX `id_rol` (`id_rol` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `accion`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accion`.`login` (
  `codigo_usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(30) NOT NULL,
  `contraseña` VARBINARY(500) NOT NULL,
  `id_rol` INT UNSIGNED NOT NULL,
  `activo` BIT(1) NULL DEFAULT b'1',
  UNIQUE INDEX `codigo_usuario` (`codigo_usuario` ASC) VISIBLE,
  INDEX `id_rol` (`id_rol` ASC) VISIBLE,
  CONSTRAINT `login_ibfk_1`
    FOREIGN KEY (`codigo_usuario`)
    REFERENCES `accion`.`usuario` (`codigo_usuario`),
  CONSTRAINT `login_ibfk_2`
    FOREIGN KEY (`id_rol`)
    REFERENCES `accion`.`rol` (`id_rol`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `accion` ;

-- -----------------------------------------------------
-- procedure actualizar_usuario
-- -----------------------------------------------------

DELIMITER $$
USE `accion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_usuario`(in codigo int, in nombre varchar(30), in apellido1 varchar(30), in apellido2 varchar(30), in estado varchar(30), in municipio varchar(30), in colonia varchar(30), in email varchar(50))
BEGIN

UPDATE Usuario
SET Nombre = nombre , Apellido1 = apellido1, Apellido2 = apellido2, Estado = estado, 
Municipio = Municipio, Colonia = colonia, Email = email
WHERE codigo_usuario = codigo;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure consultar_usuarios
-- -----------------------------------------------------

DELIMITER $$
USE `accion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_usuarios`()
BEGIN
Select U.codigo_usuario, U.Nombre, U.Apellido1, U.Apellido2, U.Estado, U.Municipio, U.Colonia , U. Email,
 L.nombre_usuario, L.activo, R.id_rol from Rol R, Usuario U inner join Login L on U.codigo_usuario = L.codigo_usuario
        where L.activo = 1 and R.id_rol = 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure registrar
-- -----------------------------------------------------

DELIMITER $$
USE `accion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar`(in nombre varchar(30), in apellido1 varchar(30), in apellido2 varchar(30), in estado varchar(30), in municipio varchar(30), in colonia varchar(30), in email varchar(50), in nombre_usuario varchar(30), in contraseña VARBINARY(500))
BEGIN
insert into Usuario (Nombre, Apellido1, Apellido2, Estado,
    Municipio, Colonia, Email) values (nombre, apellido1, apellido2,
    estado, municipio, colonia, email);
    
insert into Login (nombre_usuario, contraseña, id_rol) values (nombre_usuario, md5(contraseña), 1);
END$$

DELIMITER ;
USE `accion`;

DELIMITER $$
USE `accion`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `accion`.`borrar_usuario`
BEFORE DELETE ON `accion`.`usuario`
FOR EACH ROW
begin
	delete from login where codigo_usuario = old.codigo_usuario;
    delete from calificacion where codigo_usuario = old.codigo_usuario;
end$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
