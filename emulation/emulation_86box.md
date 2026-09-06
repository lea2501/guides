# 86Box

86Box emula una PC completa y su hardware real: placa madre, procesador, BIOS, placa de video, Sound Blaster, discos IDE y lector de CD. Es más fiel que DOSBox, aunque también exige más CPU y una PC virtual puede sentirse más lenta si se configura con un procesador antiguo.

## Instalar o actualizar la AppImage

El script consulta la última versión estable oficial para Linux x86_64, descarga la AppImage, comprueba su tamaño y SHA-256 publicados y valida su cabecera antes de reemplazar la instalación existente.

```shell
$ ~/src/scripts/appimage/update86Box.sh
```

La AppImage queda instalada en:

```text
~/Applications/86Box.AppImage
```

Los ROMs de las máquinas emuladas están en:

```text
~/.local/share/86Box/roms
```

## Organización de las máquinas virtuales

Cada PC virtual tiene su propio directorio con la configuración, el disco rígido y la memoria no volátil de la placa madre.

```text
~/games/emu/pc/86box/
├── install-media/
│   └── msdos-6.22/
├── network-q-rally-1996/
│   ├── 86box.cfg
│   ├── msdos622.img
│   ├── nvr/
│   └── play-network-q-86box.sh
└── templates/
    └── msdos-6.22-clean/
```

No hay que editar, copiar ni reemplazar `86box.cfg`, la imagen `.img` o el directorio `nvr/` mientras 86Box esté abierto. Al cerrarse, el emulador guarda el estado de la configuración y podría sobrescribir cambios externos.

## Ejecutar Network Q RAC Rally Championship 1996

```shell
$ ~/games/emu/pc/86box/network-q-rally-1996/play-network-q-86box.sh
```

El lanzador guarda los mensajes de 86Box en `~/games/emu/pc/86box/network-q-rally-1996/86box.log` y restaura el estado de la terminal cuando se cierra el emulador.

Si alguna aplicación deja la terminal mostrando letras como símbolos gráficos, se puede restaurar sin reiniciar la computadora con:

```shell
$ printf '\033(B\033[0m\033[?25h' && stty sane
```

La máquina actual tiene esta configuración básica:

```text
Placa madre: ASUS P/I-P55T2P4
Procesador: Intel Pentium 133 MHz
Memoria: 32 MB
Video: S3 ViRGE PCI
Sonido: Sound Blaster 16, puerto 220, IRQ 5, DMA 1 y DMA de 16 bits 5
Disco IDE: msdos622.img, aproximadamente 100 MB
CD-ROM IDE: imagen de Network Q montada como unidad D:
Sistema: MS-DOS 6.22
```

La imagen del CD usada por esta máquina es:

```text
~/games/emu/dos/racing/nqrrally/cd_1.iso
```

## Pantalla completa y atajos útiles

```text
Ctrl+Alt+Page Up     Entrar o salir de pantalla completa
Ctrl+Alt+Page Down   Mostrar u ocultar los menús en pantalla completa
Ctrl+Alt+F1          Pausar o reanudar la emulación
Ctrl+Alt+F           Activar o desactivar avance rápido
Ctrl+Alt+F12         Reinicio forzado de la PC virtual
Ctrl+F12             Enviar Ctrl+Alt+Del a la PC virtual
```

Los atajos pueden consultarse o modificarse en las preferencias de entrada de 86Box. `Ctrl+Alt+Page Up` sirve tanto para entrar como para salir de pantalla completa, por lo que no se queda atrapada la ventana.

Para conservar la imagen retro sin deformarla, usar relación `4:3`. En pantalla completa se puede elegir escalado `4:3`, `Square pixels` o `Integer scale`; este último es el más nítido, aunque puede dejar bordes negros.

## Insertar o retirar disquetes y CD

Los iconos de la barra inferior representan las unidades de la PC. Al hacer clic derecho sobre el disquete o el CD-ROM se puede:

- Insertar una imagen existente.
- Expulsar la imagen actual.
- Recargar el medio.

Para arrancar normalmente desde el disco rígido, el disquete de instalación de DOS debe quedar expulsado. De lo contrario, la PC puede volver a iniciar desde `A:`.

Los cambios de CD se pueden hacer con la máquina encendida. Los cambios de hardware —CPU, placa de video, memoria, controladoras o geometría del disco— deben hacerse con la PC apagada y normalmente requieren reiniciarla.

## Plantilla limpia de MS-DOS 6.22

La instalación limpia y arrancable está guardada en:

```text
~/games/emu/pc/86box/templates/msdos-6.22-clean/
```

Su disco maestro es:

```text
~/games/emu/pc/86box/templates/msdos-6.22-clean/msdos622-clean.img
```

El archivo `.sha256` permite comprobar que la plantilla no fue modificada:

```shell
$ cd ~/games/emu/pc/86box/templates/msdos-6.22-clean && sha256sum --check msdos622-clean.img.sha256
```

La plantilla debe conservarse como original. Para otro juego, crear un directorio nuevo, copiar la configuración y copiar el disco con otro nombre; después se monta el CD o una ISO auxiliar desde 86Box y se instala el juego dentro de la copia.

```shell
$ mkdir -p ~/games/emu/pc/86box/NOMBRE-DE-LA-MAQUINA
```

```shell
$ cp ~/games/emu/pc/86box/templates/msdos-6.22-clean/86box.cfg ~/games/emu/pc/86box/NOMBRE-DE-LA-MAQUINA/86box.cfg
```

```shell
$ cp --reflink=auto ~/games/emu/pc/86box/templates/msdos-6.22-clean/msdos622-clean.img ~/games/emu/pc/86box/NOMBRE-DE-LA-MAQUINA/msdos622-clean.img
```

La configuración de la plantilla ya busca `msdos622-clean.img`. Antes de arrancar la copia, retirar cualquier disquete o CD perteneciente a otra máquina y asignar los medios del juego nuevo.

## Crear una ISO para pasar archivos a DOS

Una forma segura de pasar instaladores, parches o drivers desde Linux es crear una ISO de solo lectura y montarla en el CD-ROM virtual.

```shell
$ genisoimage -J -R -o ~/games/emu/pc/86box/archivos-para-dos.iso ~/RUTA/A/LOS/ARCHIVOS
```

Si `genisoimage` no está disponible, en Devuan/Debian se instala con el paquete `genisoimage`.

Dentro de DOS, el CD normalmente aparece como `D:`:

```dos
D:
DIR
```

## Sonido en juegos DOS

Cuando el instalador del juego pregunte por la placa de sonido, usar:

```text
Sound Blaster 16
Port / Address: 220
IRQ: 5
DMA: 1
16-bit DMA / High DMA: 5
MIDI port: 330, solamente si lo solicita
```

Si `SETSOUND`, `SETUP` o el detector automático se congela, reiniciar la PC virtual y elegir la configuración manual. Los detectores antiguos a veces prueban hardware o interrupciones que no corresponden y parecen dejar congelada la máquina.

## Rendimiento y fluidez

86Box intenta reproducir la velocidad de la PC elegida. Un Pentium 100 puede dar menos cuadros que DOSBox aunque el Ryzen todavía tenga recursos disponibles, porque DOSBox suele ejecutar el juego con una CPU virtual más rápida o con ciclos dinámicos.

Para diagnosticarlo:

1. Probar pantalla completa con `Ctrl+Alt+Page Up`; maximizar una ventana y ponerla en pantalla completa no cambia la velocidad de la CPU emulada, aunque el escalado por software puede agregar tirones.
2. En las preferencias de video, seleccionar Vulkan u OpenGL si funcionan correctamente; evitar el renderizador por software para ventanas grandes.
3. Confirmar que la recompilación dinámica esté permitida. `Ctrl+Alt+I` alterna temporalmente entre interpretación y recompilación; normalmente debe quedar habilitada la recompilación.
4. Si el juego es estable pero consistentemente lento, probar primero un Pentium 133 MHz y luego uno de 166 MHz. Cambiar una sola cosa por vez y apagar la máquina antes de modificar la CPU.
5. No usar avance rápido como solución permanente: hace que toda la PC, el reloj y el audio intenten correr por encima de su velocidad normal.

La máquina de Network Q quedó configurada con Vulkan y un Pentium 133 MHz, que conserva el carácter de una PC de la época y debería acercarse más a la fluidez obtenida en DOSBox.

## Copias de seguridad

Con 86Box completamente cerrado, guardar el disco y la configuración de una máquina:

```shell
$ cp --reflink=auto ~/games/emu/pc/86box/network-q-rally-1996/msdos622.img ~/games/emu/pc/86box/network-q-rally-1996/msdos622-backup.img
```

```shell
$ cp ~/games/emu/pc/86box/network-q-rally-1996/86box.cfg ~/games/emu/pc/86box/network-q-rally-1996/86box-backup.cfg
```

El disco `.img` contiene MS-DOS, el juego instalado, sus ajustes y las partidas guardadas. Copiarlo es equivalente a guardar el disco rígido entero de esa PC.

## Ejecutar manualmente una máquina

El lanzador de Network Q equivale a este comando:

```shell
$ ~/Applications/86Box.AppImage --appimage-extract-and-run --vmpath ~/games/emu/pc/86box/network-q-rally-1996 --rompath ~/.local/share/86Box/roms --vmname "Network Q RAC Rally Championship 1996"
```

`--appimage-extract-and-run` evita depender de FUSE, `--vmpath` señala el directorio propio de la máquina y `--rompath` indica dónde están los ROMs necesarios para emular su hardware.
