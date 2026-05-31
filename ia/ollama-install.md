# Installing Ollama on Devuan (sysvinit)

## Install Ollama

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

Since Devuan uses sysvinit instead of systemd, the service will not start automatically.

## Set custom models directory

Add the following to your `~/.bashrc` or `~/.profile`:

```bash
export OLLAMA_MODELS="$HOME/ia/models"
```

Then reload:

```bash
source ~/.bashrc
```

## Run Ollama manually

Start the server in a terminal (or in the background):

```bash
ollama serve
```

Or in the background:

```bash
ollama serve &
```

## Download models

With the server running, pull models in another terminal:

```bash
OLLAMA_MODELS=~/ia/models ollama pull qwen3:8b
```

If you already exported `OLLAMA_MODELS` in your shell config, you can simply run:

```bash
ollama pull qwen3:8b
ollama pull qwen3:14b
```

## Verify

```bash
ollama list
ls ~/ia/models
```
