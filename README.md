# flutter_status_bar

[![pub package](https://img.shields.io/pub/v/flutter_status_bar.svg)](https://pub.dartlang.org/packages/flutter_status_bar)

A  flutter plugin that sets the android status bar transparent and status icon.

IOS flutter is built in, set appbar [brightness] [backgroundColor] directly.

## Usage
To use this plugin, add `flutter_statusbar` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  flutter_status_bar_light: ^1.0.1
```

### Example
Set android status bar transparent.
```dart
 @override
  void initState() {
    super.initState();
    FlutterStatusBar.setTranslucent();
  }
```

Set android status bar icon

```dart
 @override
  void initState() {
    super.initState();
    FlutterStatusBar.setLightStatusBar();
  }

```
