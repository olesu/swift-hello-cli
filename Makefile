PROJECT_NAME=HelloWorldCLI
ID=com.example.olesu.$(PROJECT_NAME)
DEVICE_NAME=iPhone 17
OS=26.2
DESTINATION='platform=IOS Simulator,name=$(DEVICE_NAME),OS=$(OS)'
DERIVED_DATA=build
APP_PATH=$(DERIVED_DATA)/Build/Products/Debug-iphonesimulator/$(PROJECT_NAME).app

.PHONY: generate lint build boot install launch run clean

all: generate lint build

lint:
	swiftlint

build:
	xcodebuild -scheme $(PROJECT_NAME) \
		-project $(PROJECT_NAME).xcodeproj \
		-destination $(DESTINATION) \
		-derivedDataPath $(DERIVED_DATA) \
		-sdk iphonesimulator \
		ONLY_ACTIVE_ARCH=YES \
		build

boot:
	xcrun simctl boot "$(DEVICE_NAME)" || true
	open -a Simulator

launch:
	xcrun simctl launch booted $(ID)

run: boot build install launch

clean:
	rm -rf $(PROJECT_NAME).xcodeproj
	rm -rf $(DERIVED_DATA)