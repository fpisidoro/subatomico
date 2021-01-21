import 'package:test/test.dart';
import 'package:subatomico/subatomico.dart';

void main() {
  group('Prefix unit conversion tests', () {
    test('prefix conversion', () {
      expect(UnitPrefix.convert(100000, "micro", ""), 0.1);
    });
    test('prefix conversion2', () {
      expect(UnitPrefix.convert(100000, "milli", "micro"), 100000000);
    });
    test('prefix conversion3', () {
      expect(UnitPrefix.convert(200, "micro", "kilo"), 0.0000002);
    });
    test('prefix conversion4', () {
      expect(UnitPrefix.convert(200, "mega", "kilo"), 200000);
    });
    test('prefix conversion5', () {
      expect(UnitPrefix.convert(243, "mega", "milli"), 243000000000);
    });
  });
}
