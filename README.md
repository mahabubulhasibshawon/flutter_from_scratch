## Starting flutter from scratch

## File: `main.dart`

```dart
import 'package:flutter/material.dart';
```
This line imports the `material.dart` package from the Flutter framework, which provides a set of pre-designed widgets and themes based on the Material Design guidelines.

```dart
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 23, 23),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );
}
```
This is the main function, which is the entry point of the Flutter application. It contains the following components:

### `runApp`

```dart
runApp(
const MaterialApp(
home: Scaffold(
backgroundColor: Color.fromARGB(255, 91, 23, 23),
body: Center(
child: Text('Hello World!'),
),
),
),
);
```
The `runApp` function takes a widget and makes it the root of the widget tree, rendering it on the screen. In this case, the root widget is a `MaterialApp`.

### `const MaterialApp`

```dart
const MaterialApp(
home: Scaffold(
backgroundColor: Color.fromARGB(255, 91, 23, 23),
body: Center(
child: Text('Hello World!'),
),
),
);
```
`MaterialApp` is a convenience widget that wraps several widgets commonly required for Material Design applications. It includes widgets for navigation, theming, and more. The `home` property defines the default route of the app, which is a `Scaffold` widget in this case.

### `Scaffold`

```dart
home: Scaffold(
backgroundColor: Color.fromARGB(255, 91, 23, 23),
body: Center(
child: Text('Hello World!'),
),
),
```
`Scaffold` is a layout structure for the major Material Design components. It provides a default app bar, title, and a body property that holds the primary content of the screen. Here, it sets the `backgroundColor` to a custom color and places the main content in the `body` property.

### `Color.fromARGB`

```dart
backgroundColor: Color.fromARGB(255, 91, 23, 23),
```
This line sets the background color of the `Scaffold` using the `Color.fromARGB` constructor. The `fromARGB` method takes four parameters: alpha (opacity), red, green, and blue. Here, the color is a dark red with full opacity.

### `Center`

```dart
body: Center(
child: Text('Hello World!'),
),
```
The `Center` widget centers its child widget within itself. In this case, it centers the `Text` widget.

### `Text`

```dart
child: Text('Hello World!'),
```
The `Text` widget displays a string of text with the content "Hello World!".
```markdown
### `Container`

```dart
body: Container(
  decoration:  const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 83, 50, 112),
        Color.fromARGB(255, 177, 131, 217),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: const Center(
    child: Text('Hello World!'),
  ),
),
```
The `Container` widget is a versatile container that can be used to create a rectangular visual element. In this case, it is used to apply a gradient background.

### `BoxDecoration`

```dart
decoration:  const BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 83, 50, 112),
      Color.fromARGB(255, 177, 131, 217),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
),
```
The `BoxDecoration` widget is used to decorate the `Container` with a gradient. The `gradient` property is set to a `LinearGradient` that transitions from a dark purple color to a light purple color, starting from the top-left corner and ending at the bottom-right corner.

### `LinearGradient`

```dart
gradient: LinearGradient(
  colors: [
    Color.fromARGB(255, 83, 50, 112),
    Color.fromARGB(255, 177, 131, 217),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
),
```
The `LinearGradient` widget defines a linear gradient with two colors: dark purple (`Color.fromARGB(255, 83, 50, 112)`) and light purple (`Color.fromARGB(255, 177, 131, 217)`). The gradient starts from the top-left (`Alignment.topLeft`) and ends at the bottom-right (`Alignment.bottomRight`).


## Running the Application

To run this application, ensure you have Flutter installed and configured. Then, execute the following commands in your terminal:

```bash
flutter pub get
flutter run
```
## Custom widgets


### `GradiantContainer`

```dart
import 'package:flutter/material.dart';
import 'package:stating_from_scratch/style_text.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 83, 50, 112),
            Color.fromARGB(255, 177, 131, 217),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyleText(),
      ),
    );
  }
}
```
This code defines a custom `GradiantContainer` widget, which is a `StatelessWidget`. It is designed to be reusable and includes the following components:

#### `Container`

The `Container` widget is used to create a rectangular visual element with a gradient background.

#### `BoxDecoration`

The `BoxDecoration` widget is used to apply a linear gradient decoration to the `Container`.

#### `LinearGradient`

The `LinearGradient` widget defines a linear gradient with two colors, transitioning from dark purple to light purple, starting from the top-left and ending at the bottom-right.

#### `Center`

The `Center` widget centers its child widget within itself.

#### `StyleText`

The `StyleText` widget is used as a child of the `Center` widget. This widget is assumed to be defined in a separate file (`style_text.dart`) and likely contains styled text.

### Updating `main.dart`

Update the `main.dart` file to use the `GradiantContainer` widget instead of directly defining the gradient in the `Scaffold`.

```dart
import 'package:flutter/material.dart';
import 'package:stating_from_scratch/gradiant_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 23, 23),
        body: const GradiantContainer(),
      ),
    ),
  );
}
```
This updated `main.dart` file imports the `GradiantContainer` widget and uses it as the `body` of the `Scaffold`, ensuring that the gradient background and centered `StyleText` are displayed.
```




