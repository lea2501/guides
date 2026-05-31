# Installing and Configuring Aider with Ollama

## Install Aider in a venv

Aider has compatibility issues with Python 3.13. Use `uv` to create a venv with Python 3.12:

```bash
# Install uv if not present
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create venv with Python 3.12 (downloaded automatically by uv)
uv venv ~/ia/aider-venv --python 3.12

# Install aider
uv pip install aider-chat --python ~/ia/aider-venv/bin/python
```

## Configure for Ollama

No config file needed. Pass the model directly:

```bash
source ~/ia/aider-venv/bin/activate
aider --model ollama/qwen3:8b
```

Or set environment variables in `~/.bashrc` to avoid typing them every time:

```bash
export OLLAMA_API_BASE="http://localhost:11434"
```

Then just:

```bash
aider --model ollama/qwen3:8b
```

## Available local models

- `ollama/qwen3:1.7b` -- lightweight, fits in 4GB VRAM
- `ollama/qwen3:4b` -- good balance for 4GB VRAM
- `ollama/qwen3:8b` -- general purpose
- `ollama/qwen3:14b` -- best for complex tasks and tooling

## Usage

```bash
# Activate venv
source ~/ia/aider-venv/bin/activate

# Start aider in a project directory
cd ~/src/myproject
aider --model ollama/qwen3:8b
```

## Useful flags

- `--no-auto-commits` -- disable automatic git commits
- `--watch-files` -- watch for file changes
- `--dark-mode` -- dark terminal theme
