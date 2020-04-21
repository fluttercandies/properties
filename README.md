# Properties

Load properties for dart.

## Usage

```yaml
dependencies:
  properties: ^1.0.0
```

```dart
import 'package:properties/properties.dart';

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
