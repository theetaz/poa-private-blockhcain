# Minikube Installation and Kubernetes Cluster Setup

This guide walks you through the steps to install Minikube on Windows, macOS, and Linux. It also covers how to run a `start.sh` script to initialize a Kubernetes cluster with Minikube.

## Prerequisites

Before you begin, ensure you have the following installed:

- A virtual machine provider like VirtualBox.
- `kubectl` - the Kubernetes command-line tool.
- Access to a terminal (Linux/macOS) or command prompt/PowerShell (Windows).

## Installing Minikube

Follow the instructions below based on your operating system.

### Windows

1. **Install Chocolatey**

   - Open PowerShell as Administrator.
   - Execute the following command:
     ```
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
     ```

2. **Install Minikube**
   - In the same PowerShell window, run:
     ```
     choco install minikube
     ```

### macOS

1. **Install Homebrew**

   - Open Terminal.
   - Run the command:
     ```
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

2. **Install Minikube**
   - Still in Terminal, execute:
     ```
     brew install minikube
     ```

### Linux

1. **Download and Install Minikube**
   - Open a terminal.
   - Run the following commands:
     ```
     curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
     sudo install minikube-linux-amd64 /usr/local/bin/minikube
     ```

## Starting Minikube

To start Minikube, run the `start.sh` script in this directory. The script will start Minikube with kubernetes cluster.

```bash
./start.sh
```

## Query a Kubernetes cluster for information

```bash
watch -n 1 kubectl get po,svc,pv,pvc,statefulset,deployment -o wide
```

## Deployed services

- `rpc access link` - http://<ip_address>:8545
- `node explorer` - http://<ip_address>:3001
