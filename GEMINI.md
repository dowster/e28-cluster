# Gemini Assistant Guidelines for the e28-cluster Project

This document provides guidelines for the Gemini AI assistant to effectively interact with the `e28-cluster` repository.

## 1. Project Overview

The `e28-cluster` project is a custom instrument cluster for a vehicle, combining embedded software for an ESP32 microcontroller with a custom-designed Printed Circuit Board (PCB).

The repository is organized into two main parts:
- `code/`: Contains the C/C++ source code for the ESP32, built using the ESP-IDF framework.
- `pcb-design/`: Contains the schematic and PCB layout files designed in KiCad.

## 2. Interacting with the Code (`code/`)

### 2.1. Build Environment

The firmware is built using a specific version of the ESP-IDF, containerized in a Docker image to ensure a consistent build environment.

- **Docker Image:** `espressif/idf:release-v4.2`
- **Build Command:** To build the project, run the following command from the repository root:
  ```bash
  docker run --rm -v $PWD/code:/project -w /project espressif/idf:release-v4.2 idf.py build
  ```

**Instructions for Gemini:**
- **Always use the Docker container for builds.** Do not attempt to use a local ESP-IDF installation unless specifically instructed.
- When making code changes, be mindful of ESP-IDF conventions and C/C++ best practices.
- The main application logic is in `code/main/`.

## 3. Interacting with the PCB Design (`pcb-design/`)

### 3.1. Design Files

The PCB was designed using KiCad. The main project file is `pcb-design/schematic.pro`.

**Instructions for Gemini:**
- You cannot directly edit KiCad `.kicad_pcb` or `.sch` files.
- You can, however, assist with tasks related to the PCB design by generating documentation.

### 3.2. Generating PCB Documentation

A PDF of the schematic can be generated using the `eeplot` tool, which is available in a Docker container.

- **Docker Image:** `registry.gitlab.com/dowster/eeshow:latest`
- **Generation Command:** To generate a PDF of the schematic, run the following from the repository root:
  ```bash
  docker run --rm -v $PWD/pcb-design:/project -w /project registry.gitlab.com/dowster/eeshow:latest eeplot -o schematic.pdf schematic.pro
  ```

## 4. CI/CD Workflow

This project uses GitHub Actions for CI/CD. The workflow is defined in `.github/workflows/ci.yml`. The workflow automates the following:
1.  Building the firmware.
2.  Generating a PDF of the PCB schematic.
3.  Packaging the firmware binaries and the schematic PDF into a release artifact.
4.  Creating a new GitHub Release and uploading the artifacts whenever a new tag is pushed.

**Instructions for Gemini:**
- Do not manually create releases.
- To trigger a release, a new tag should be pushed to the repository. The GitHub Actions workflow will handle the rest.

## 5. General Guidelines

- When asked to make changes, analyze the context of the request to determine if it relates to the embedded code or the PCB design.
- For code-related tasks, follow the build instructions provided above.
- For PCB-related tasks, use the documentation generation commands.
