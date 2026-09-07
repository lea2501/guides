# Versiones preferidas: DOS, Amiga y Atari ST

Inventario comparado de los juegos presentes en `~/games/emu/dos/`,
`~/games/emu/amiga/` y `~/games/emu/atari_st/`.

`Preferida` significa la versión más recomendable para jugar hoy entre las que
están disponibles localmente. No significa necesariamente que sea la primera
versión publicada. Se conservaron las demás versiones como alternativas.

Las carpetas elegidas contienen un `meta.ini` con las etiquetas `preferred`,
`preferred_version` y `multiplatform`. Para recuperarlas desde la terminal:

```shell
rg -l '^tags=.*\bpreferred\b' ~/games/emu/{dos,amiga,atari_st} -g meta.ini
```

## Selección rápida

| Juego | Matriz o plataforma principal | Preferida local | Confianza | Motivo breve |
|---|---|---|---|---|
| African Raiders | Atari ST / 16-bit | Atari ST | media | Es la edición más temprana de las copias locales y la versión de referencia más segura. |
| Baal | Amiga y Atari ST | Amiga | media | Juego prácticamente parejo; Amiga ofrece mejor presentación sonora. DOS fue una conversión posterior de Creative Assembly. |
| Barbarian (Psygnosis, 1987) | Amiga y Atari ST | Amiga | media | Ediciones 16-bit principales; Amiga gana ligeramente por sonido y presentación. |
| Barbarian / Death Sword (Palace, 1987) | Commodore 64 | Amiga | alta | El original es de C64; entre las versiones locales, Amiga es la conversión 16-bit preferible. |
| Barbarian II / Axe of Rage (Palace, 1988) | Commodore 64 | Amiga | alta | Mismo juego bajo dos títulos; Amiga es la mejor opción entre las copias locales. |
| Barbarian II (Psygnosis, 1991) | Amiga y Atari ST | Amiga | alta | Producción 16-bit muy orientada a Amiga; no confundir con el juego de Palace. |
| Crazy Cars | Amiga y Atari ST | Amiga | media | Versiones jugablemente cercanas; Amiga tiene ventaja audiovisual sobre ST y DOS. |
| Crazy Cars III | Amiga, Atari ST y DOS | Amiga | alta | La edición Amiga ofrece la presentación más completa y mejores sonido y música. |
| Lotus III: The Ultimate Challenge | Amiga | Amiga | alta | Diseñado alrededor de la serie de Amiga; ST y DOS son conversiones. |
| Mach 3 (Loriciel, 1987) | Atari ST | Atari ST | alta | La edición ST fue la matriz; Amiga llegó en 1988 y DOS es más austera. |
| Mega Phoenix | 16-bit / desarrollo ligado a ST | Amiga | media | Las versiones 16-bit son cercanas; Amiga es la opción general por imagen y sonido. |
| Metal Mutant | DOS, Amiga y Atari ST | Amiga | media | DOS ofrece gráficos VGA muy cercanos, pero Amiga es la elección más sólida por audio y presentación; DOS queda como alternativa cómoda. |
| Prince of Persia | Apple II | DOS | alta | Aunque el original es Apple II, la edición DOS es la opción local más práctica y pulida. |
| The Simpsons: Bart vs. the Space Mutants | NES / multiplataforma | Amiga | media | Entre las dos copias locales, Amiga ofrece mejor presentación que DOS. |
| Stormlord | ZX Spectrum / Amstrad CPC | Amiga | alta | No está la matriz de 8-bit; Amiga es la conversión local más lograda. |
| Targhan | Amiga, Atari ST y DOS | Amiga | media | Las ediciones 16-bit son las principales; Amiga tiene ventaja sonora y DOS es más limitado. |
| Xenon | Atari ST | DOS, única copia local | alta | La matriz es Atari ST, pero actualmente sólo está instalada la conversión DOS. |
| Xenon 2: Megablast | Amiga y Atari ST | Amiga | alta | Jugabilidad casi idéntica, pero la música digitalizada convierte a Amiga en la edición preferida. |

## Paths locales

| Juego o familia | DOS | Amiga | Atari ST |
|---|---|---|---|
| African Raiders | `~/games/emu/dos/racing/africanr` | `~/games/emu/amiga/African Raiders` | `~/games/emu/atari_st/African Raiders` |
| Baal | `~/games/emu/dos/platform/baal` | `~/games/emu/amiga/Baal` | `~/games/emu/atari_st/Baal` |
| Barbarian (Psygnosis) | `~/games/emu/dos/platform/barb` | `~/games/emu/amiga/Barbarian` | `~/games/emu/atari_st/Barbarian (1987) (Psygnosis)` |
| Barbarian / Death Sword (Palace) | `~/games/emu/dos/fight/deathsw` | `~/games/emu/amiga/Death Sword` | `~/games/emu/atari_st/Death Sword` |
| Barbarian II / Axe of Rage (Palace) | `~/games/emu/dos/platform/axerage` | `~/games/emu/amiga/Axe of Rage` | `~/games/emu/atari_st/Barbarian II (1988) (Palace)` |
| Barbarian II (Psygnosis) | — | `~/games/emu/amiga/Barbarian II` | `~/games/emu/atari_st/Barbarian II (1991) (Psygnosis)` |
| Crazy Cars | `~/games/emu/dos/racing/ccars` | `~/games/emu/amiga/Crazy Cars` | `~/games/emu/atari_st/Crazy Cars` |
| Crazy Cars III | `~/games/emu/dos/racing/ccars3` | `~/games/emu/amiga/Crazy Cars III` | `~/games/emu/atari_st/Crazy Cars III` |
| Lotus III | `~/games/emu/dos/racing/lotusuc` | `~/games/emu/amiga/Lotus III - The Ultimate Challenge` | `~/games/emu/atari_st/Lotus III - The Ultimate Challenge` |
| Mach 3 | `~/games/emu/dos/shmup/mach3` | `~/games/emu/amiga/Mach 3` | `~/games/emu/atari_st/Mach 3` |
| Mega Phoenix | `~/games/emu/dos/shmup/mphoenix` | `~/games/emu/amiga/Mega Phoenix` | `~/games/emu/atari_st/Mega Phoenix (1991)(Dinamic)` |
| Metal Mutant | `~/games/emu/dos/platform/mmutant` | `~/games/emu/amiga/Metal Mutant` | `~/games/emu/atari_st/Metal Mutant (1991)(Silmarils)` |
| Prince of Persia | `~/games/emu/dos/platform/prince` | `~/games/emu/amiga/Prince of Persia` | `~/games/emu/atari_st/Prince of Persia` |
| Bart vs. the Space Mutants | `~/games/emu/dos/platform/sbartsm` | `~/games/emu/amiga/Simpsons, The - Bart vs. The Space Mutants` | — |
| Stormlord | `~/games/emu/dos/platform/stormlord` | `~/games/emu/amiga/Stormlord` | — |
| Targhan | `~/games/emu/dos/platform/targhan` | `~/games/emu/amiga/Targhan` | `~/games/emu/atari_st/Targhan` |
| Xenon | `~/games/emu/dos/shmup/xenon` | — | — |
| Xenon 2: Megablast | — | `~/games/emu/amiga/Xenon II - Megablast` | `~/games/emu/atari_st/Xenon 2 - Megablast` |

## Alias que no deben contarse como juegos diferentes

- `Death Sword` es el título norteamericano de `Barbarian` de Palace.
- `Axe of Rage` es el título norteamericano de `Barbarian II` de Palace.
- Los dos anteriores no pertenecen a la serie `Barbarian` de Psygnosis.
- `Lotus III: The Ultimate Challenge` aparece abreviado como `lotusuc` en DOS.

## Juegos sin comparación local

- `Astral`: solamente Amiga.
- `Flink CD32`: solamente Amiga/CD32.

## Criterio para futuras incorporaciones

1. Priorizar la recreativa en MAME cuando sea el original arcade.
2. Priorizar la plataforma matriz si conserva mejor los controles y el ritmo.
3. Elegir Amiga sobre un port directo de Atari ST sólo cuando aporta mejoras
   reales, especialmente sonido, color o desplazamiento.
4. Elegir DOS cuando VGA/Sound Blaster iguala o supera las versiones 16-bit, o
   cuando elimina cambios de disco sin perder contenido.
5. Mantener las otras versiones como alternativas históricas; `preferida` no
   significa `única`.

## Fuentes de referencia

- Entrevista a Mike Montgomery sobre el origen de Bitmap Brothers en Atari ST:
  <https://www.sega-16.com/2006/03/interview-mike-montgomery/>
- Comparación de versiones de Xenon 2:
  <https://www.planetemu.net/article/xenon-2-megablast>
- Historia y versiones de Mega Phoenix:
  <https://computeremuzone.com/ficha/31/megaphoenix?sec=amiga>
- Ficha de Mach 3 para Atari ST:
  <https://www.atarimania.com/games/atari-st-games-mach-iii-9879>
- Ficha y créditos de Baal, incluida la conversión DOS:
  <https://en.wikipedia.org/wiki/Baal_%28video_game%29>
- Ficha multiplataforma de Metal Mutant:
  <https://www.mobygames.com/game/607/metal-mutant/>
