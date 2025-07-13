# 📦 Dockerized Jenkins Setup (with Internet Access Fix)

This repository provides a Docker Compose setup to run **Jenkins** inside a Docker container while resolving the common issue of **Jenkins being unable to access the internet** when containerized.

With this setup:
- Jenkins can **download plugins** and perform external operations smoothly.
- Docker CLI is installed inside the container.
- Jenkins is granted access to the host's Docker socket, allowing it to build and manage other Docker containers if needed.
- Basic tools like `curl`, `wget`, `ping`, and `Node.js 18` are pre-installed for convenience.

---

## 📜 Features

- ✅ Jenkins runs inside Docker with persistent data
- ✅ Internet connectivity inside the container (fix via `dns` and `extra_hosts`)
- ✅ Pre-installed Docker CLI and Node.js 18
- ✅ Jenkins user added to the Docker group
- ✅ Plugin downloads and updates work seamlessly inside the container

---

## 🐳 Docker Compose Services

**`jenkins`**
- Exposes:
  - `8081`: Jenkins Web UI (maps to `8080` inside container)
  - `50000`: For agent connections
- Mounts volumes:
  - Jenkins data (persistent)
  - Host Docker socket
  - Local workspace directory
- Custom DNS and `extra_hosts` to ensure reliable internet access inside the container.

---

## 📦 How to Use

### 1️⃣ Clone this repository

```bash
git clone <your-repo-url>
cd <repo-directory>
