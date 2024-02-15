# Watchtracker

This app allows people to catalogue movies and series they have watched or are currently watching

## Getting started

To build the project run
```bash
flutter build apk
```

To debug run
```bash
flutter run
```

If you want to add a new device to debug on run with your credentials
```bash
adb pair ip:port pin
adb connect ip:port
flutter run
```

To update generated code after changing mobx store configuration run
```bash
dart run build_runner build --delete-conflicting-outputs
```
