# Path
TARGET_LIB_PATH="./build/lib/"
SOURCE_INCLUDE_PATH="./evernote-sdk-ios/ENSDK/"
TARGET_INCLUDE_PATH="./build/include/"

# Build static library for iOS and simulator
xcodebuild -target "evernote-sdk-ios" -sdk iphoneos -arch armv7 -arch armv7s -arch arm64 -configuration Release #clean build
xcodebuild -target "evernote-sdk-ios" -sdk iphonesimulator -arch i386 -arch x86_64 -configuration Release #clean build

# Package two binaries in one static library file.
mkdir -p $TARGET_LIB_PATH
xcrun lipo -create build/Release-iphonesimulator/libevernote-sdk-ios.a build/Release-iphoneos/libevernote-sdk-ios.a -output build/lib/libevernote-sdk-ios.a

# Copy header files
mkdir -p $SOURCE_INCLUDE_PATH
mkdir -p $TARGET_INCLUDE_PATH
cp $SOURCE_INCLUDE_PATH/ENError.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENNote.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENNoteContent.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENNoteRef.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENNoteSearch.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENNotebook.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENResource.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENSDK.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENSDKLogging.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/SendToEvernoteActivity/ENSaveToEvernoteActivity.h $TARGET_INCLUDE_PATH/
cp $SOURCE_INCLUDE_PATH/ENSession.h $TARGET_INCLUDE_PATH/
