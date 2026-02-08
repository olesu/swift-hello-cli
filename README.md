# Hello, CLI

In this project, the goal is to build a Hello, World iOS SwiftUI application using only VS Code and freely available CLI tools.

## Initial tooling

Before starting, ensure that Xcode command line tools are installed.

```bash
xcode-select --install
```

Then install `XcodeGen` and `SwiftLint`:

```bash
brew install xcodegen swiftlint
```

## Project structure

- **`Sources/`** - Main app code (`HelloWorldApp.swift`)
- **`Packages/HelloWorldViews/`** - Reusable UI package containing `ContentView`
- **`project.yml`** - Xcode project configuration (processed by XcodeGen)
- **`Package.swift`** - Swift package definition for IDE/LSP support
- **`Makefile`** - Build automation commands

## Quick start

### 1. Set up IDE support

For proper language server support in VS Code, build the Swift package once:

```bash
swift build
```

This generates the `.build/` directory with compiled modules.

### 2. Build and run the app

The easiest way is to use the Makefile:

```bash
make run
```

This will:
- Regenerate the Xcode project from `project.yml`
- Boot the iOS simulator
- Build the app
- Install and launch it

For individual steps, use:
- `make generate` - Regenerate Xcode project
- `make build` - Build the app
- `make boot` - Boot the simulator

## Manual build (if not using Makefile)

If you prefer to use xcodebuild directly, see the [Makefile](./Makefile) for the exact commands. The project uses iOS 17.0 as the deployment target and builds for the iPhone simulator.