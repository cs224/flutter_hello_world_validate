# flutter_hello_world_validate

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## build command line

    > ../flutter/bin/flutter build ios --debug --no-codesign
    > xcodebuild -workspace ios/Runner.xcworkspace -scheme Runner -config Release archive -archivePath ./build/build.xcarchive COMPILER_INDEX_STORE_ENABLE=NO
    > xcodebuild -exportArchive -archivePath ./build/build.xcarchive -exportPath ./build/export -exportOptionsPlist /exportPlist.plist COMPILER_INDEX_STORE_ENABLE=NO
