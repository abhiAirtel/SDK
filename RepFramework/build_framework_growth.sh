# A shell script for creating an XCFramework for iOS.

# Starting from a clean slate
# Removing the build and output folders

rm -rf build

# For iOS Device
xcodebuild archive \
-scheme RepFramework \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/RepFramework.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# For Simulators
xcodebuild archive \
-scheme RepFramework \
-sdk iphoneos \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/RepFramework.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
 -framework './build/RepFramework.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/RepFramework.framework' \
-framework './build/RepFramework.framework-iphoneos.xcarchive/Products/Library/Frameworks/RepFramework.framework' \
-output './build/RepFramework.xcframework'

