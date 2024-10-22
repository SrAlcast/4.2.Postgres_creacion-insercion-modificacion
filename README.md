# 🚚 Laboratorio 4.2: Gestión de Bases de Datos en una Empresa de Logística

## 📝 Descripción del Proyecto

Este laboratorio está diseñado para simular la creación y gestión de una base de datos para una empresa de logística que maneja envíos y entregas en múltiples regiones. El objetivo es crear un sistema eficiente de manejo de información de clientes, empleados, proveedores de servicios logísticos y envíos. A lo largo del laboratorio, se realizarán diversas operaciones como la creación, modificación, inserción y eliminación de datos.

## 🎯 Objetivos del Laboratorio

- **🗂️ Creación de una base de datos estructurada**: Definir un esquema relacional que gestione la información de clientes, empleados, proveedores, envíos y regiones.
- **💾 Inserción de datos**: Población de las tablas con datos iniciales, asegurando la consistencia e integridad referencial.
- **🔄 Actualización y modificación de registros**: Realizar cambios en la base de datos en función de nuevos requisitos o actualizaciones de la información existente.
- **🗑️ Eliminación de datos obsoletos**: Mantener la base de datos actualizada y libre de datos innecesarios o erróneos.
- **🔍 Consultas y reportes avanzados**: Realizar consultas complejas para extraer información relevante para la empresa.

## 📊 Esquema de la Base de Datos

El esquema de la base de datos está compuesto por las siguientes tablas:

- **Clientes**: Información sobre los clientes que solicitan envíos.
- **Empleados**: Datos de los empleados que gestionan los envíos.
- **Proveedores**: Información de empresas externas que ofrecen servicios de logística.
- **Envíos**: Detalles de los envíos realizados.
- **Detalle de Envíos**: Información específica sobre los productos incluidos en cada envío.
- **Regiones**: Regiones donde la empresa opera y realiza entregas.

## 🔧 Ejercicios Realizados

1. **🛠️ Creación de la Base de Datos y Tablas**:
   - Se diseñaron las tablas con sus respectivas claves primarias y foráneas.
   - Se aseguraron las relaciones entre las tablas mediante el uso de restricciones y claves foráneas.

2. **💡 Inserción de Datos**:
   - Población inicial de la base de datos con información relevante para la empresa (clientes, empleados, proveedores, envíos, etc.).

3. **✏️ Modificación y Actualización**:
   - Modificación de registros existentes en función de cambios de información.
   - Actualización de datos de clientes, envíos o regiones, siguiendo los requerimientos del ejercicio.

4. **🗑️ Eliminación de Registros**:
   - Eliminación de registros obsoletos o incorrectos manteniendo la integridad de la base de datos.

5. **🔍 Consultas SQL**:
   - Ejecución de consultas avanzadas para extraer información clave (informes de envíos por región, análisis de proveedores, etc.).

## 🚀 Cómo Empezar

Para ejecutar este proyecto en tu entorno local:

1. Clona este repositorio en tu máquina local.
   ```bash
   git clone https://github.com/tu-usuario/tu-repositorio.git
   ```
2. Configura tu entorno de base de datos SQL (MySQL, PostgreSQL, etc.).
3. Carga el esquema de la base de datos desde el archivo `esquema.sql`.
4. Ejecuta los scripts SQL proporcionados para realizar las operaciones de creación, inserción y modificación de datos.

## 📋 Requisitos

- **SQL**: MySQL, PostgreSQL o cualquier motor de base de datos relacional.
- **Herramientas**: Cliente de base de datos como MySQL Workbench, DBeaver o pgAdmin.
 
