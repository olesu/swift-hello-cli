# Hello, CLI

In this project, the goal is to build a Hello, World MacOS/iOS SwiftUI application using only VS Code and freely available CLI tools.

## Initial tooling

Before starting, ensure that Xcode command line tools are installed.

```bash
xcode-select --install
```

Then install `XcodeGen`

```bash
brew install xcodegen
```

## Project setup

The project is configured in [project.yaml](./project.yaml) and generated with `XcodeGen`.

Run the generator with

```bash
xcodegen generate
```

## Building the project

Pick a destination simulator with

```bash
xcrun simctl list devices booted
```

(if none are booted just use "iPhone 16" as a generic name)

Run the build command

```bash
xcodebuild -scheme HelloWorldCLI \
    -project HelloWorldCLI.xcodeproj \
    -destination 'platform=iOS Simulator,name=iOS 26.2' \
    build
```