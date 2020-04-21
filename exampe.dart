import 'package:props/props.dart';

final text = '''
#This is comment
version=1.0.0
name=properties
name=ppp
#comment=1
'''
    .trim();

final errorTest = '''
error load
''';

void main() {
  final props = Properties.loadString(text);

  print(props['version']); // 1.0.0
  print(props['name']); // properties
}
