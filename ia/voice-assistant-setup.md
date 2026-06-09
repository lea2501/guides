# Asistente de voz local (whisper + ollama + piper)

Stack 100% offline: micrófono → whisper.cpp (STT) → ollama (LLM) → piper (TTS) → parlante.

## Requisitos

- Ollama instalado y corriendo (`ollama serve`)
- Micrófono funcional
- ~2GB espacio (whisper.cpp + piper + modelos)

## Instalación

```bash
~/src/scripts/devuan/post_install_optional/install_voice_assistant.sh
```

Instala en `~/ia/voice-assistant/`:
- whisper.cpp compilado desde source (STT)
- piper binario pre-compilado (TTS)
- Voz `es_AR-daniela-high` (español argentino, femenina, calidad alta)
- Modelo whisper `base` (buena relación velocidad/calidad)

Crea symlinks en `~/bin/`:
- `voice-assistant` → modo Enter
- `voice-assistant-continuous` → modo detección de silencio

## Uso

### Modo Enter (manual)

```bash
voice-assistant
```

Presionar Enter → hablar → esperar respuesta hablada. Loop infinito hasta Ctrl+C.

### Modo continuo (detección de silencio)

```bash
voice-assistant-continuous
```

Se queda escuchando. Empieza a grabar al detectar voz, corta tras 2 segundos de silencio, y responde. No requiere interacción manual.

### Variables de entorno

```bash
OLLAMA_MODEL=qwen3:4b voice-assistant           # modelo más chico
RECORD_SECONDS=10 voice-assistant               # más tiempo de grabación (solo modo Enter)
```

## Componentes

### whisper.cpp (Speech-to-Text)

Modelos disponibles (descargar con `whisper.cpp/models/download-ggml-model.sh`):

| Modelo | Tamaño | Velocidad | Calidad español |
|--------|--------|-----------|-----------------|
| tiny   | 75 MB  | Más rápido | Aceptable |
| base   | 142 MB | Rápido | Buena (default) |
| small  | 466 MB | Medio | Muy buena |
| medium | 1.5 GB | Lento | Excelente |

Cambiar modelo: editar `WHISPER_MODEL` en el script de uso.

### piper (Text-to-Speech)

Voces en español disponibles:

- `es_AR-daniela-high` — argentino, femenina, alta calidad (default)
- `es_MX-claude-high` — mexicano, masculina, alta calidad
- `es_ES-sharvard-medium` — español ibérico, femenina
- `es_ES-davefx-medium` — español ibérico, masculina

Más voces: https://huggingface.co/rhasspy/piper-voices/tree/main/es

### ¿Por qué Piper y no Kokoro?

- Piper: binario C++, ~50MB, genera audio instantáneo en CPU, sin dependencias
- Kokoro: requiere Python + PyTorch (~2GB), más lento, español experimental

## Troubleshooting

### El asistente lee texto en inglés (thinking)

Los modelos qwen3 generan un bloque `<think>...</think>` en inglés antes de responder.
Los scripts ya filtran esto automáticamente. Si usás otro modelo que haga algo similar,
la respuesta se limpia con:

```bash
sed ':a;N;$!ba;s/<think>.*<\/think>//g'
```

### No se escucha audio

```bash
aplay -l
speaker-test -t wav
```

### No graba del micrófono

```bash
arecord -l
rec test.wav trim 0 3
aplay test.wav
```

### Whisper no transcribe bien

Usar modelo más grande:
```bash
cd ~/ia/voice-assistant/whisper.cpp
./models/download-ggml-model.sh small
```

### Ollama no responde

```bash
ollama serve &
ollama list
```

## Estructura de archivos

```
~/src/scripts/devuan/post_install_optional/
├── install_voice_assistant.sh       # solo instalación
├── voice-assistant.sh               # modo Enter
└── voice-assistant-continuous.sh    # modo detección de silencio

~/ia/voice-assistant/
├── whisper.cpp/                     # STT engine
└── piper/                           # TTS engine + voces
```
