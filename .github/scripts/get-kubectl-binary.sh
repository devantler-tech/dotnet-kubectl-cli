#!/bin/bash
set -e

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl Devantler.KubectlCLI/runtimes/linux-x64/native/kubectl-linux-x64

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
chmod +x kubectl
mv kubectl Devantler.KubectlCLI/runtimes/linux-arm64/native/kubectl-linux-arm64

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
chmod +x kubectl
mv kubectl Devantler.KubectlCLI/runtimes/osx-x64/native/kubectl-osx-x64

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"
chmod +x kubectl
mv kubectl Devantler.KubectlCLI/runtimes/osx-arm64/native/kubectl-osx-arm64

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/windows/amd64/kubectl.exe"
mv kubectl.exe Devantler.KubectlCLI/runtimes/win-x64/native/kubectl-win-x64.exe

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/windows/arm64/kubectl.exe"
mv kubectl.exe Devantler.KubectlCLI/runtimes/win-arm64/native/kubectl-win-arm64.exe
