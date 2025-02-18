[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shamim-hasnain/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/hasnain_bd)
[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/hasnain.dev)

# About Me

I am shamim hasnain (shadid), a Flutter & React developer with a passion for creating reusable UI components. I have created this package to help you create badges in your Flutter applications.

# Hasnain UI Badge

A customizable Flutter badge widget that provides various styles and configurations for displaying badges in your Flutter applications.

## Features

- Multiple badge variants:
  - Solid
  - Secondary
  - Outline
  - Destructive
- Customizable properties:
  - Background color
  - Text color and style
  - Border radius
  - Border style
  - Width and height
  - Elevation
- Disabled state support
- Tap handling with onPressed callback

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  hasnain_ui_badge: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:hasnain_ui_badge/hasnain_ui_badge.dart';
```

### Basic Examples

```dart
// Solid Badge
BadgeHasnainUI(
  text: 'solid',
  variant: Variant.solid,
  onPressed: () {
    // Handle tap
  },
)

// Secondary Badge
BadgeHasnainUI(
  text: 'secondary',
  variant: Variant.secondary,
  onPressed: () {
    // Handle tap
  },
)

// Outline Badge
BadgeHasnainUI(
  text: 'outline',
  variant: Variant.outline,
  onPressed: () {
    // Handle tap
  },
)

// Destructive Badge
BadgeHasnainUI(
  text: 'destructive',
  variant: Variant.destructive,
  onPressed: () {
    // Handle tap
  },
)
```

### Customization

```dart
BadgeHasnainUI(
  text: 'custom solid',
  variant: Variant.solid,
  width: 120,
  height: 40,
  elevation: 0.5,
  backgroundColor: Colors.orange,
  textColor: Colors.black,
  borderRadius: BorderRadius.circular(12),
  textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  onPressed: () {
    // Handle tap
  },
  isDisabled: false,
)
```

```dart
BadgeHasnainUI(
    width: 140,
    height: 40,
    text: 'custom outline',
    variant: Variant.outline,
    onPressed: () {},
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.red, width: 2),
    // textColor: Colors.red,
    textStyle: const TextStyle(
    color: Colors.red,
        fontSize: 14,
        fontWeight: FontWeight.w600),
        ),
```

## Properties

| Property          | Type          | Description                                                  |
| ----------------- | ------------- | ------------------------------------------------------------ |
| `text`            | String        | The text to display in the badge                             |
| `variant`         | Variant       | Badge style variant (solid, secondary, outline, destructive) |
| `onPressed`       | VoidCallback? | Callback function when badge is tapped                       |
| `backgroundColor` | Color?        | Custom background color                                      |
| `borderSide`      | BorderSide?   | Custom border style                                          |
| `borderRadius`    | BorderRadius? | Custom border radius                                         |
| `isDisabled`      | bool?         | Whether the badge is disabled                                |
| `textStyle`       | TextStyle?    | Custom text style                                            |
| `width`           | double?       | Custom width                                                 |
| `height`          | double?       | Custom height                                                |
| `elevation`       | double?       | Custom elevation                                             |
| `textColor`       | Color?        | Custom text color                                            |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
