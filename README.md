# Properties

Load properties for dart.

[![img](https://img.shields.io/pub/v/props)](https://pub.dev/packages/props)
![Dart CI](https://github.com/fluttercandies/properties/workflows/Dart%20CI/badge.svg)

## Usage

```yaml
dependencies:
  props: ^2.0.0-nullsafety
```

```dart
import 'package:props/props.dart';

final text = '''
#This is comment
version=1.0.0
name=properties
name=ppp
#comment=1
'''

final props = Properties.loadString(text);

print(props['version']); // 1.0.0
print(props['name']); // properties
```

## LICENSE

MIT Style
