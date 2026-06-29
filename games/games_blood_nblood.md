# Blood con NBlood

## Rutas locales

```shell
cd ~/games/nblood
```

`~/games/nblood` es el directorio base: contiene `blood.rff`,
`sounds.rff`, `tiles000.art` ... `tiles017.art` y los subdirectorios de
los addons. No existe `~/games/blood/base` en esta instalación.

NBlood resuelve varios nombres relativamente al directorio actual. Por eso
conviene ejecutar todos los comandos desde `~/games/nblood`.

## Juego original y Cryptic Passage

```shell
~/src/NBlood/nblood
~/src/NBlood/nblood -ini cryptic.ini
```

## Addons organizados en subdirectorios

En la mayoría de los casos se usa el subdirectorio como `-game_dir` y el
nombre del INI, no su ruta completa:

```shell
~/src/NBlood/nblood -game_dir 500_ml_vr -ini 500ml.ini
~/src/NBlood/nblood -game_dir banzai_addon -ini bzrblood.ini
~/src/NBlood/nblood -game_dir banzai_addon -ini bzpblood.ini
~/src/NBlood/nblood -game_dir death_wish -ini dw.ini
~/src/NBlood/nblood -game_dir eviction -ini evict.ini
~/src/NBlood/nblood -game_dir fleshed_out -ini fo.ini
~/src/NBlood/nblood -game_dir french_meat -ini frmeat.ini
~/src/NBlood/nblood -game_dir french_meat_2 -ini frenchm2.ini
~/src/NBlood/nblood -game_dir trauma_therapy -ini tt.ini
```

Para ver todos los INI disponibles:

```shell
find . -mindepth 2 -maxdepth 2 -type f -iname '*.ini' ! -iname '*mapedit*' | sort
```

### Casos especiales

Bloody Pulp Fiction usa archivos RFF de recursos propios:

```shell
~/src/NBlood/nblood -game_dir bloody_pulp_fiction -rff bpf.rff -snd bpfsnd.rff -ini bpf.ini
```

Rage Against the Machine usa su RFF como archivo de sonidos:

```shell
~/src/NBlood/nblood -game_dir ratm -ini ratm.ini -snd ratm.rff
```

No Hope in Sight requiere el juego de ART completo generado dentro del
subdirectorio (`nhis000.art` ... `nhis021.art`) y sus RFF parcheados.
En Linux conviene entrar primero al directorio del addon:

```shell
cd ~/games/nblood/nhis && ~/src/NBlood/nblood -ini nhis.ini -art nhis -map nhis01.map -skill 2
```

The Way of Ira, cuando fue preparado para NBlood, usa un layout
autocontenido con `WD/` dentro del directorio del addon. En Linux conviene
entrar primero al directorio del addon:

```shell
cd ~/games/nblood/ira && ~/src/NBlood/nblood -ini ira.ini -art WD/IRA -rff WD/BLOOD.RFF -snd WD/SOUNDS.RFF
```

## Jugar un mapa suelto

Si el mapa pertenece a un addon, hay que conservar también su `game_dir` y
su INI para que encuentre texturas, sonidos y definiciones:

```shell
~/src/NBlood/nblood -game_dir eviction -ini evict.ini -map ssevict.map -skill 2
```

Para jugar una campaña completa en el orden previsto, no hace falta lanzar
cada MAP: se inicia su INI y se elige el episodio desde el menú.

## Elegir un addon al azar

```shell
ini=$(find ~/games/nblood -mindepth 2 -maxdepth 2 -type f -iname '*.ini' ! -iname '*mapedit*' | shuf -n 1); dir=$(dirname "$ini"); case "$(basename "$dir")" in ira) (cd "$dir" && ~/src/NBlood/nblood -ini ira.ini -art WD/IRA -rff WD/BLOOD.RFF -snd WD/SOUNDS.RFF) ;; nhis) (cd "$dir" && ~/src/NBlood/nblood -ini nhis.ini -art nhis -map nhis01.map -skill 2) ;; bloody_pulp_fiction) ~/src/NBlood/nblood -game_dir "$dir" -rff bpf.rff -snd bpfsnd.rff -ini bpf.ini ;; ratm) ~/src/NBlood/nblood -game_dir "$dir" -ini ratm.ini -snd ratm.rff ;; *) ~/src/NBlood/nblood -game_dir "$dir" -ini "$(basename "$ini")" ;; esac
```

Esto cubre los addons de estructura normal y los casos especiales
documentados arriba.
