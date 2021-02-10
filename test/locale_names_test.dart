import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locale_names/locale_names.dart';

void main() {
  test('get default display names', () {
    Locale fr = Locale.fromSubtags(languageCode: "fr");
    expect(fr.defaultDisplayLanguage, "French");
    expect(fr.defaultDisplayLanguageScript, "French");

    Locale zh = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
    expect(zh.defaultDisplayLanguage, "Chinese");
    expect(zh.defaultDisplayLanguageScript, "Chinese (Simplified)");
    expect(zh.defaultDisplayCountry, "China");
  });

  test('get native display names', () {
    Locale en = Locale.fromSubtags(languageCode: "en", countryCode: "US");
    expect(en.nativeDisplayLanguage, "English");
    expect(en.nativeDisplayLanguageScript, "English");
    expect(en.nativeDisplayCountry, "United States");

    Locale fr = Locale.fromSubtags(languageCode: "fr");
    expect(fr.nativeDisplayLanguage, "français");
    expect(fr.nativeDisplayLanguageScript, "français");

    Locale zh = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
    expect(zh.nativeDisplayLanguage, "中文");
    expect(zh.nativeDisplayLanguageScript, "中文（简体）");
    expect(zh.nativeDisplayCountry, "中国");
  });

  test('get display names in a specific locale', () {
    Locale fr = Locale.fromSubtags(languageCode: "fr");
    Locale zh = Locale.fromSubtags(
        languageCode: 'zh', scriptCode: "Hans", countryCode: 'CN');
    expect(zh.displayLanguageIn(fr), "chinois");
    expect(zh.displayLanguageScriptIn(fr), "chinois simplifié");
    expect(zh.displayCountryIn(fr), "Chine");
  });
}
