# ReflectionHLE

Ejecutable local: `~/src/ReflectionHLE/build/reflectionhle`

ReflectionHLE es la opción conservadora, comparable a Chocolate Doom: busca
reproducir las versiones originales de Wolfenstein 3D y Spear of Destiny con
un backend moderno. También incluye ports de otros juegos de la familia.

La instalación y las actualizaciones se hacen con:

```shell
~/src/scripts/devuan/games/install_reflectionhle.sh
```

## Recursos

```text
https://github.com/ReflectionHLE/ReflectionHLE
https://github.com/ReflectionHLE/ReflectionHLE/blob/master/COMPILING.md
```

## Datos del juego

Iniciar el launcher:

```shell
~/src/ReflectionHLE/build/reflectionhle
```

Desde el launcher, agregar cada instalación mediante la selección de su
directorio. Las copias locales son:

```text
~/games/wolf3d/wolf3d
~/games/wolf3d/spear/m1
~/games/wolf3d/spear/m2
~/games/wolf3d/spear/m3
```

ReflectionHLE comprueba los archivos de cada versión y recuerda las rutas; no
hace falta copiarlos ni crear enlaces. Mantener las tres misiones de Spear en
directorios separados evita las colisiones entre sus archivos `.SOD`.

## Uso desde la terminal

Listar las versiones de juego que entiende la compilación:

```shell
~/src/ReflectionHLE/build/reflectionhle -listgamevers
```

Después de registrar los datos con el launcher, iniciar una versión concreta:

```shell
~/src/ReflectionHLE/build/reflectionhle -gamever NOMBRE_DE_VERSION
```

Mostrar todas las opciones disponibles:

```shell
~/src/ReflectionHLE/build/reflectionhle -?
```

La configuración se guarda en `~/.config/reflectionhle` y los datos propios
del port en `~/.local/share/reflectionhle`.
