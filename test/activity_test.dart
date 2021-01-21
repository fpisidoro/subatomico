import 'package:test/test.dart';
import 'package:subatomico/subatomico.dart';

void main() {
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

  group('Activity entry tests', () {
    test('enter becquerel', () {
      var activityTester = Activity.becquerel(500);
      expect(activityTester.becquerel, 500);
    });
    test('enter megabecquerel', () {
      var activityTester = Activity.megabecquerel(5);
      expect(activityTester.becquerel, 5000000);
    });
    test('enter curie', () {
      var activityTester = Activity.curie(1);
      expect(activityTester.becquerel, 3.7e10);
    });
    test('enter millicurie', () {
      var activityTester = Activity.millicurie(1);
      expect(activityTester.becquerel, 3.7e7);
    });
    test('enter microcurie', () {
      var activityTester = Activity.microcurie(1);
      expect(activityTester.becquerel, 3.7e4);
    });
    test('enter counts per second', () {
      var activityTester = Activity.countsPerSecond(500);
      expect(activityTester.becquerel, 500);
    });
    test('enter counts per minute', () {
      var activityTester = Activity.countsPerMinute(100);
      expect(activityTester.becquerel, 100 / 60);
    });
  });
}
