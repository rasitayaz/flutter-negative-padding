# Flutter Negative Padding

[![pub](https://img.shields.io/pub/v/negative_padding.svg?style=popout)](https://pub.dartlang.org/packages/negative_padding)
[![github](https://img.shields.io/badge/github-rasitayaz-red)](https://github.com/rasitayaz)
[![buy me a coffee](https://img.shields.io/badge/buy&nbsp;me&nbsp;a&nbsp;coffee-donate-blue)](https://www.buymeacoffee.com/rasitayaz)

A Flutter widget that oversizes its child by the given padding.

![](https://raw.githubusercontent.com/rasitayaz/flutter-negative-padding/main/example.png)

## Usage

This widget is intended to be used with flex widgets such as `Row` and `Column`.

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    ...
    NegativePadding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ...,
    ),
    ...
  ],
),
```