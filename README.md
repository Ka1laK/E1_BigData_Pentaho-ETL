# 🛠️ Amazon Data Integration & Analytics

Este repositorio contiene el desarrollo de un proceso ETL (Extracción, Transformación y Carga) utilizando Pentaho Data Integration (PDI) para la integración de datos del sistema de ventas de Amazon. El objetivo es gestionar eficientemente datos provenientes de distintas fuentes para facilitar su análisis y mejorar la toma de decisiones mediante **dashboards** 📊.

![image](https://github.com/user-attachments/assets/4b730a3a-68c4-43bc-b041-6e9a90de10d1)

## 📌 Descripción del Proyecto

Este proyecto se centra en el desarrollo de un flujo de datos ETL que integre y manipule grandes volúmenes de información de ventas de Amazon en diferentes países. Utilizamos varias bases de datos, incluyendo MySQL, Oracle, y SQL Server, para demostrar la capacidad de Pentaho en la integración de datos heterogéneos. Además, se documentan los desafíos técnicos que se encontraron y las soluciones aplicadas durante la instalación y configuración.

## 📑 Tabla de Contenidos

1. [Introducción](#introducción)
2. [Propósito](#propósito)
3. [Objetivos](#objetivos)
4. [Instalación y Configuración](#instalación-y-configuración)
5. [Transformaciones ETL](#transformaciones-etl)
6. [Errores Comunes y Soluciones](#errores-comunes-y-soluciones)
7. [Resultados y Conclusiones](#resultados-y-conclusiones)
8. [Referencias](#referencias)

## 🔍 Introducción

En un entorno empresarial donde los datos son un recurso invaluable, este proyecto busca crear un proceso ETL usando Pentaho para optimizar la manipulación de datos y facilitar su análisis en múltiples fuentes de datos. 

El flujo ETL está diseñado para integrar y transformar datos de ventas de Amazon en distintos países, demostrando la escalabilidad y flexibilidad de Pentaho en proyectos de Big Data.

## 🎯 Propósito

Diseñar un proceso ETL que permita integrar y gestionar datos desde diversas fuentes, aprovechando la potencia de Pentaho para consolidar información en un Data Warehouse. Este proceso facilitará el análisis de ventas en diferentes mercados, permitiendo la creación de **dashboards** interactivos para mejorar la toma de decisiones.

## 📝 Objetivos

- **Desarrollar un flujo ETL** en Pentaho que integre datos de archivos CSV, XLSX, MySQL, Oracle, y SQL Server.
- **Documentar problemas y soluciones** encontrados durante la instalación de herramientas clave como Pentaho, Java y PostgreSQL.
- **Optimizar la plataforma Pentaho** para adaptarse a diversos proyectos y necesidades empresariales en Big Data.

## ⚙️ Instalación y Configuración

Durante la implementación, enfrentamos varios errores comunes en la instalación de Java, Pentaho, y los conectores JDBC para las bases de datos utilizadas. Algunas soluciones fueron:

- **Error de Java no en el PATH**: Configuración manual del PATH de Java.
- **Error de instalación de Pentaho (libwebkitgtk-1.0-0)**: Solución mediante instalación de WebKitGTK actualizado.
- **Problemas de conexión con SQL Server**: Configuración de parámetros `encrypt=false` y `trustServerCertificate=true` en JDBC.

Para más detalles, consulta la sección de [Logs de Errores](#errores-comunes-y-soluciones).

## 🔄 Transformaciones ETL

Este proyecto incluye transformaciones específicas para cada región de ventas de Amazon:

- **Ventas Amazon Francia** (MySQL)
- **Ventas Amazon Alemania** (Oracle)
- **Ventas Amazon Brasil** (SQL Server)
- **Ventas Amazon Perú** (CSV)
- **Ventas Amazon Liberia** (XLSX)

Cada transformación se centra en limpiar y normalizar los datos para integrarlos en un **Data Warehouse** consolidado y así ser visualizados en **dashboards** de ayuda en la toma de decisiones.

## 🛠️ Errores Comunes y Soluciones

Se documentaron los errores más comunes y las soluciones aplicadas durante el proceso de instalación y configuración de Pentaho y sus dependencias. Algunas de las soluciones incluyeron:

- Configuración del PATH para Java y permisos de ejecución.
- Instalación de dependencias faltantes (e.g., `libswt-gtk-4-java`).
- Configuración de parámetros específicos en conexiones JDBC.

## 📈 Resultados y Conclusiones

El proceso ETL logró consolidar los datos de ventas de Amazon, permitiendo un análisis claro de cada mercado objetivo. Los datos fueron filtrados y validados para reflejar la realidad de cada país, asegurando una base sólida para futuras decisiones de negocio. Finalmente, se desarrollaron **dashboards** interactivos para visualizar y analizar el rendimiento de ventas, facilitando así la toma de decisiones informada.

## 📚 Referencias

- [Documentación oficial de Pentaho](https://docs.hitachivantara.com/)
- [Video explicativo en YouTube](https://www.youtube.com/watch?v=-1rCmPQEeb8&t=1352s)
- [Oracle Perú: Qué es ETL](https://www.oracle.com/pe/integration/what-is-etl/)
- [Guía de instalación SQL Server en Ubuntu](https://guias.donweb.com/como-instalar-sql-server-en-ubuntu-20-04/)
