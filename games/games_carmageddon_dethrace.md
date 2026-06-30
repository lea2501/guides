# Carmageddon con dethrace

Guía de comandos copiables. Cada comando está en una sola línea, con rutas desde `~/` y sin depender de variables seteadas antes.

## Estado local validado

- Motor: `~/src/dethrace/build/dethrace`
- Repo local: commit `f4fbb519146b658bb07048400965862fd8307a8c`
- Versión reportada: `v0.10.1-517-gf4fbb51`
- Carmageddon base: `~/games/carma`
- Splat Pack: `~/games/carma-splat`
- Configuración: `~/.local/share/dethrace/dethrace.ini`
- Carmageddon base llega al menú con `-nocutscenes -nosound`.
- Splat Pack llega al menú con `-nocutscenes -nosound`.

## Compilar / actualizar dethrace

```shell
~/src/scripts/devuan/games/install_dethrace.sh
```

## Ejecutar

### Carmageddon base

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma -nocutscenes
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma -nocutscenes -nosound
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma -hires -nocutscenes
```

### Splat Pack

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma-splat
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma-splat -nocutscenes
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma-splat -nocutscenes -nosound
```

```shell
~/src/dethrace/build/dethrace --dir ~/games/carma-splat -hires -nocutscenes
```

## Validación rápida

Estos comandos abren el juego unos segundos y lo cortan con `timeout`. Si el log llega a `DoMainMenu`, `FrankieOrAnnie` o `SelectSkillLevel`, el juego pasó la inicialización y llegó al menú.

```shell
timeout 8s ~/src/dethrace/build/dethrace --dir ~/games/carma -nocutscenes -nosound
```

```shell
timeout 8s ~/src/dethrace/build/dethrace --dir ~/games/carma-splat -nocutscenes -nosound
```

## Configuración local

Archivo actual:

```shell
sed -n '1,160p' ~/.local/share/dethrace/dethrace.ini
```

Contenido esperado:

```ini
[Games]
c1 = /home/lea/games/carma
sp = /home/lea/games/carma-splat
```

## Opciones útiles

```shell
~/src/dethrace/build/dethrace --help
```

```text
--dir /ruta/al/juego
```

```text
-hires
```

```text
-nocutscenes
```

```text
-nosound
```

```text
-novoodoo
```

```text
-vgraphics
```

```text
-vrush
```

## Datos instalados

```shell
find ~/games/carma -maxdepth 2 -type f | sort | head -120
```

```shell
find ~/games/carma-splat -maxdepth 2 -type f | sort | head -120
```

## Notas

- No mezclar `CARMA/` y `CARSPLAT/` en la misma carpeta.
- `~/games/carma` corresponde a Carmageddon base.
- `~/games/carma-splat` corresponde a Splat Pack.
- Para Splat Pack fueron necesarios los archivos de soporte GOG `DKEYMAP*.TXT`, `KEYMAP*.TXT`, `OPTIONS.TXT` y `PATHS.TXT` dentro de `~/games/carma-splat/DATA/`; sin eso dethrace fallaba con `Couldn't open Key Map file`.
- El directorio `~/games/carma_openc1_removed_20260629_225854/` conserva los restos de OpenC1 que se quitaron de `~/games/carma`.
