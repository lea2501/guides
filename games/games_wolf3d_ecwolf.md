# ECWolf

Ejecutable local: `~/src/ECWolf/build/ecwolf`

ECWolf es la opción orientada a mejoras modernas y mods, comparable al papel
de GZDoom en Doom. La instalación y las actualizaciones se hacen con:

```shell
~/src/scripts/devuan/games/install_ecwolf.sh
```

## Recursos

```text
https://github.com/ECWolfEngine/ECWolf
https://maniacsvault.net/ecwolf/wiki/Main_Page
```

## Datos del juego

ECWolf busca los datos originales en `~/.local/share/ecwolf`. Para usar la
copia de Wolfenstein 3D ya instalada sin duplicarla:

```shell
mkdir -p ~/.local/share/ecwolf
ln -s ~/games/wolf3d/wolf3d/*.WL6 ~/.local/share/ecwolf/
```

Los tres directorios de Spear of Destiny contienen archivos `.SOD` con los
mismos nombres. No conviene enlazarlos juntos: agregar desde el selector de
juego solamente la misión que se quiera ejecutar, o mantener perfiles
separados.

## Uso

Abrir el selector de juego:

```shell
~/src/ECWolf/build/ecwolf
```

Ejecutar el mod Astrostein instalado:

```shell
~/src/ECWolf/build/ecwolf --fullscreen --res 1920 1080 --nowait --file ~/games/wolf3d/mods/ecwolf/astrostein_spifferaneous_edition/astrostein_spiff_hd.pk3
```

La configuración y las partidas guardadas de ECWolf quedan separadas de los
datos originales dentro de los directorios XDG del usuario.
