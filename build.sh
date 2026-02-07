xcodebuild -scheme HelloWorldCLI \
    -project HelloWorldCLI.xcodeproj \
    -destination 'platform=iOS Simulator,name=iPhone 17,OS=26.2' \
    -derivedDataPath build \
    -sdk iphonesimulator \
    ONLY_ACTIVE_ARCH=YES \
    build
