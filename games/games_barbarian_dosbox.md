# Barbarian de Psygnosis con DOSBox-X

Launcher local: `~/games/emu/dos/platform/barb/play-barbarian-dosbox-x.sh`

Esta configuración conserva la versión DOS original pero reemplaza su interfaz
de órdenes por flechas, letras normales y controles directos de gamepad. El
perfil es independiente de la configuración global de DOSBox-X.

## Iniciar

```shell
~/games/emu/dos/platform/barb/play-barbarian-dosbox-x.sh
```

En la pantalla inicial de Barbarian hay que elegir **keyboard** como método de
control. El mapper convierte el gamepad en las teclas de función que espera el
juego.

## Controles de teclado

| Tecla cómoda | Acción | Tecla original |
|---|---|---|
| Flecha izquierda | Caminar a la izquierda | `F1` |
| Flecha derecha | Caminar a la derecha | `F2` |
| Flecha abajo | Agacharse/bajar | `F3` |
| Flecha arriba | Trepar/subir | `F4` |
| `S` | Detenerse | `F5` |
| `Z` | Saltar hacia adelante | `F6` |
| `X` | Correr | `F7` |
| `A` | Atacar | `F8` |
| `Q` | Saltar hacia atrás | `F9` |
| `W` | Soltar el arma y huir | `F10` |
| Espacio | Cambiar barra de órdenes | Espacio |

## Controles de gamepad

| Gamepad | Acción | Tecla original |
|---|---|---|
| Cruceta o stick izquierdo | Moverse | `F1`–`F4` |
| `A` | Atacar | `F8` |
| `B` | Saltar hacia adelante | `F6` |
| `X` | Correr | `F7` |
| `Y` | Detenerse | `F5` |
| `LB` | Saltar hacia atrás | `F9` |
| `RB` | Soltar el arma y huir | `F10` |
| Select/Back | Cambiar barra de órdenes | `Espacio` |

Las teclas `F1`–`F10` originales siguen funcionando. El juego permite encolar
órdenes y conserva cierto retardo entre ellas: el mapper mejora la ergonomía,
pero no cambia esa parte de su lógica.

## Archivos

```text
~/games/emu/dos/platform/barb/dosbox-x-barbarian.conf
~/games/emu/dos/platform/barb/mapper-barbarian.map
~/games/emu/dos/platform/barb/play-barbarian-dosbox-x.sh
```

El perfil usa EGA, relación de aspecto corregida, una ventana de 1280×960 y una
CPU 8086 a 4770 ciclos. Para ajustar la velocidad durante el juego:

- `Ctrl+F11`: reducir ciclos.
- `Ctrl+F12`: aumentar ciclos.
- `Alt+Enter`: alternar pantalla completa.

## Ajustar un gamepad diferente

La numeración de botones sigue el orden SDL habitual de mandos tipo Xbox. Si el
mando presenta otro orden, abrir el editor usando el mismo perfil:

```shell
dosbox-x -conf ~/games/emu/dos/platform/barb/dosbox-x-barbarian.conf -startmapper
```

Seleccionar la tecla virtual deseada, usar `Add`, presionar el botón físico y
guardar. Los cambios quedan solamente en `mapper-barbarian.map`.
