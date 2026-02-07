# Hello, CLI

In this project, the goal is to build a Hello, World MacOS/iOS SwiftUI application using only VS Code and freely available CLI tools.

## Initial tooling

Before starting, ensure that Xcode command line tools are installed.

```bash
xcode-select --install
```

Then install `XcodeGen`

```bash
brew install xcodegen swiftlint
```

## Project setup

The project is configured in [Makefile](./Makefile) and generated with `XcodeGen`.

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

Now, boot the simulator. See [Makefile](./Makefile)

```bash
xcrun simctl boot "iPhone 16"
open -a Simulator # if the simulator doesn't pop up by itself
```

Run the build command, example may be outdated. See [Makefile](./Makefile) for the current version.

```bash
xcodebuild -scheme HelloWorldCLI \
    -project HelloWorldCLI.xcodeproj \
    -destination 'platform=iOS Simulator,name=iPhone 16' \
    -derivedDataPath build \
    build
```

## Install and launch

After a successful build, we install and launch the application.

First, the install:

```bash
xcrun simctl install "iPhone 17" build/Build/Products/Debug-iphonesimulator/HelloWorldCLI.app
```

Then, launch it:

```bash
xcrun simctl launch "iPhone 17" com.example.olesu.HelloWorldCLI
```