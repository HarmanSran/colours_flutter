# colours_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## App stuck at Installing build\app\outputs\flutter-apk\app.apk...

This issue occurs after uninstalling the development instance of the app, from a physical Android device.

Resolution:
1. Locate `applicationId` in `build.gradle`, e.g. `com.example.colours_flutter`
2. Open a shell in `C:\Users\<USERNAME>\AppData\Local\Android\Sdk\platform-tools`
3. Run `./adb.exe uninstall com.example.colours_flutter`
4. Verify output is `Success`
