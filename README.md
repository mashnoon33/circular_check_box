# Circular Check Box

[![Pub](https://img.shields.io/pub/v/circular_check_box.svg)](https://pub.dartlang.org/packages/circular_check_box)

A modified version of the existing checkbox with the shape of a circle instead of a rounded rectangle!

![](https://media.giphy.com/media/1ppul2n7LpKNZieMp1/giphy.gif "Example")

## Installing

Add this to your package's `pubspec.yaml` file.

```yaml
dependencies:
   circular_check_box: ^x.y.z
```
Or


```yaml
dependencies:
   circular_check_box:
       git:
         url: git://github.com/mashnoon33/circular_check_box.git
```

Now in your `Dart` code you can use:

```dart
import import 'package:circular_check_box/circular_check_box.dart';
```

## Usage

To use `CircularCheckBox` widget simply include it in your `build` method like this:

```dart
CircularCheckBox(
    value: this.circularSelected,
    onChanged: (value) {
        this.setState(() {
            this.circularSelected = value;
        });
    },
),
```

The `CircularCheckBox` can be customized with many properties, including:

* `tristate` - the circular checkbox will have three states: unselected, selected with a check and selected with a dash
* `checkColor` - change the color of the check icon
* `activeColor` - change the color of the selected circular checkbox

## Null Safety

This package is null safe ready, so it can be used with the new dart's [Sound Null Safety](https://dart.dev/null-safety).

## License

Watch the License file [here](https://github.com/mashnoon33/circular_check_box/blob/master/LICENSE)

## Changelog

Refer to the [Changelog](https://github.com/mashnoon33/circular_check_box/blob/master/LICENSE) to get all the release notes.
