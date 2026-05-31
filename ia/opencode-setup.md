# Installing and Configuring OpenCode with Ollama

## Install OpenCode

```bash
curl -fsSL https://opencode.ai/install | bash
```

## Configure OpenCode

Create or edit `~/.config/opencode/config.json`:

```json
{
  "provider": {
    "ollama": {
      "endpoint": "http://localhost:11434"
    }
  },
  "model": {
    "qwen3:14b": "ollama/qwen3:14b",
    "qwen3:8b": "ollama/qwen3:8b"
  }
}
```

## Usage

With `ollama serve` running:

```bash
opencode
```
