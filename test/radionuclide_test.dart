import 'package:test/test.dart';
import 'package:subatomico/subatomico.dart';

void main() {
  group('Radionuclide tests', () {
    test('isotope exists', () {
      expect(Radionuclide.included('I-131'), true);
    });
    test('isotope does not exist', () {
      expect(Radionuclide.included('iodine'), false);
    });
    test('create by halflife', () {
      var unknown = new Radionuclide.halflife(new Duration(seconds: 123));
      expect(unknown.halflife.inSeconds, 123);
    });
    test('create by isotope', () {
      var known = new Radionuclide.isotope('Ga-68');
      expect(known.halflife.inMinutes, 68);
    });
    test('create by isotope long name', () {
      var known = new Radionuclide.isotope('Gallium-68');
      expect(known.halflife.inMinutes, 68);
    });
    test('create by isotope syntax', () {
      var known = new Radionuclide.isotope('gallium 68');
      expect(known.halflife.inMinutes, 68);
    });
    test('create by isotope- unknown', () {
      var known = new Radionuclide.isotope('technetium 991');
      expect(known.halflife.inMinutes, 0);
    });
  });

  group('Activity tests', () {
    var activityTester = Activity();
    test('extract a number1', () {
      expect(activityTester.extractNumber('230.2 becquerels'), 230.2);
    });
    test('extract a number2', () {
      expect(activityTester.extractNumber('230.2'), 230.2);
    });
    test('extract a number3', () {
      expect(activityTester.extractNumber('beq230.2'), 0);
    });
    test('extract a text1', () {
      expect(activityTester.extractText('230.2 becquerels'), 'becquerels');
    });
    test('extract a text2', () {
      expect(activityTester.extractText('becquerels'), 'becquerels');
    });
    test('extract a text3', () {
      expect(activityTester.extractText('beq230.2'), "");
    });
  });

  group('Activity tests', () {
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
