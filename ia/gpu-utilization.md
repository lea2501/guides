# GPU Utilization for Ollama and OpenCode

## NVIDIA

### Verify driver

```bash
nvidia-smi
```

If not installed, add non-free repos and install:

```bash
sudo apt install nvidia-driver firmware-misc-nonfree
sudo reboot
```

After reboot, confirm with `nvidia-smi`.

### Install CUDA toolkit (required by Ollama)

```bash
sudo apt install nvidia-cuda-toolkit
```

Verify:

```bash
nvcc --version
```

### Ollama with NVIDIA

Ollama detects NVIDIA GPUs automatically if the driver and CUDA are present. Just run:

```bash
ollama serve
```

Check GPU usage while running a model:

```bash
nvidia-smi
```

### Force GPU layers (optional)

```bash
OLLAMA_NUM_GPU=999 ollama serve
```

This forces all layers to GPU. Reduce the number if you run out of VRAM.

---

## AMD (ROCm)

### Verify driver

```bash
rocminfo
```

If not installed:

```bash
sudo apt install rocm-dkms rocm-libs
sudo usermod -aG video $USER
sudo usermod -aG render $USER
sudo reboot
```

After reboot, confirm with `rocminfo` and `rocm-smi`.

### Ollama with AMD

Ollama supports ROCm automatically. If your GPU is not detected, set:

```bash
HSA_OVERRIDE_GFX_VERSION=10.3.0 ollama serve
```

Replace `10.3.0` with the appropriate version for your GPU architecture (check AMD docs).

Check GPU usage:

```bash
rocm-smi
```

---

## OpenCode

OpenCode connects to Ollama via HTTP, so GPU acceleration is handled entirely by Ollama. No additional GPU configuration is needed in OpenCode itself. Just ensure Ollama is running with GPU support before launching OpenCode.

---

## Troubleshooting

Check if Ollama is using the GPU:

```bash
ollama ps
```

The output shows which device (CPU/GPU) is being used for loaded models.

If models fall back to CPU:
- Verify driver installation (`nvidia-smi` or `rocminfo`)
- Ensure the model fits in VRAM (8b needs ~5GB, 14b needs ~9GB)
- Check Ollama logs for errors: run `ollama serve` in foreground and read the output
