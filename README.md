# Wealth Management Mobile App

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Install Flutter using VS Code](https://docs.flutter.dev/install/with-vs-code#install-flutter)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

## Setup

1. Clone the project in the same root folder as your BE (SAS Client).
2. Run `flutter pub get`.
3. Create `.env` file, use the `.env.sample` as a guide.
4. Press `F5` or use the *Run and Debug* option in VS CODE. The application will popup in a browser.
5. Happy coding!

---

## 🛠️ Installing `protoc-gen-dart`

This guide walks you through installing the Dart plugin for Protocol Buffers (`protoc-gen-dart`) to generate Dart code from `.proto` files.

---

### ✅ Prerequisites

- Dart SDK installed (it should already be installed once you setup the Flutter)

Verify installation:

```bash
dart --version
```

---

### 📦 Install the Dart Plugin

Run the following command to install `protoc-gen-dart` globally:

```bash
dart pub global activate protoc_plugin
```

---

### 🛣️ Add Plugin to Your PATH

So `protoc` can find the plugin, add this to your shell config:

**macOS/Linux (bash/zsh):**

```bash
export PATH="$PATH:$HOME/.pub-cache/bin"
```

**Windows:**

Add `%USERPROFILE%\AppData\Local\Pub\Cache\bin` to your system PATH.

> Restart your terminal or source your shell config to apply changes.

---

### 🔍 Verify Installation

Check that the plugin is available:

```bash
protoc-gen-dart --version
```

---

### ⚙️ Generate Dart Code from SAS Client repo

Example command:

```bash
	make dart-proto
```

---
