import 'package:properties/properties.dart';
import 'package:test/test.dart';

final testSrc = '''
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
  test('load string', () {
    final p = Properties.loadString(testSrc);
    assert(p['version'] == '1.0.0');
    assert(p['name'] == 'properties');
    assert(p['name'] != 'ppp');
    assert(p['comment'] != '1');
  });

  test('load error text', () {
    try {
      Properties.loadString(errorTest);
      assert(false);
    } catch (e) {
      assert(true);
    }
  });
}
