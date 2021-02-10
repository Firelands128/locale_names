# Locale Names

[![pub package](https://img.shields.io/pub/v/locale_names.svg)](https://pub.dev/packages/locale_names)

A Flutter package that provide locale display names in locales, by adding extension on ```Locale``` from ```dart:ui```.

## Installation

Add locale_names as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

```yaml
dependencies:
  locale_names:
```

Import locale_names in files that it will be used:

```dart
import 'package:locale_names/locale_names.dart';
```

## Usage

* Get language display name in default locale, which is english.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.defaultDisplayLanguage);
```

* Get language and script display name in default locale, which is english.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.defaultDisplayLanguageScript);
```

* Get country display name in default locale, which is english.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.defaultDisplayCountry);
```

* Get language display name in native locale.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.nativeDisplayLanguage);
```

* Get language and script display name in native locale.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.nativeDisplayLanguageScript);
```

* Get country display name in native locale.
```dart
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.nativeDisplayCountry);
```

* Get language display name in a specific locale.
```dart
Locale fr = Locale.fromSubtags(languageCode: "fr");
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.displayLanguageIn(fr));
```

* Get language and script display name in a specific locale.
```dart
Locale fr = Locale.fromSubtags(languageCode: "fr");
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.displayLanguageScriptIn(fr));
```

* Get country display name in a specific locale.
```dart
Locale fr = Locale.fromSubtags(languageCode: "fr");
Locale locale = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
print(locale.displayCountryIn(fr));
```
