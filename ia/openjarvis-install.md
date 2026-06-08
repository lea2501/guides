# Installing OpenJarvis on Debian/Devuan

## Prerequisites

- Ollama installed and running (`ollama serve`)
- Python 3.10+ (installed by default on Debian 12+)
- curl

## Install OpenJarvis

```bash
curl -fsSL https://open-jarvis.github.io/OpenJarvis/install.sh | bash
```

This installs to `~/.openjarvis/` and handles:
- uv (Python package manager)
- Python venv
- Ollama check
- Starter model download (qwen3.5:2b)
- `jarvis` symlink in PATH

## Rust extension (optional, improves performance)

The installer tries to build a Rust extension in the background. Debian's
packaged Rust is usually too old. Install a recent toolchain via rustup:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
```

Then rebuild:

```bash
~/.openjarvis/.scripts/build-extension.sh
```

Add to `~/.bashrc` so the new Rust is always in PATH:

```bash
. "$HOME/.cargo/env"
```

## Post-install

A Rust extension and larger models continue downloading in background.
Check status:

```bash
jarvis doctor
```

## Configuration

Config file: `~/.openjarvis/config.toml`

## Usage

Start chatting:

```bash
jarvis
```

Switch presets:

```bash
jarvis init --preset chat-simple
jarvis init --preset code-assistant
jarvis init --preset deep-research
```

## Available presets

- `chat-simple` — lightweight conversation, no tools
- `code-assistant` — agent with code execution, file I/O, shell access
- `deep-research` — multi-hop research with citations
- `morning-digest-linux` — daily briefing from email, calendar, news
- `scheduled-monitor` — stateful agent on a schedule with memory

## Skills

```bash
jarvis skill install hermes:arxiv
jarvis skill sync hermes --category research
```

## Uninstall

```bash
rm -rf ~/.openjarvis
# Remove PATH entry from ~/.bashrc if added
```
