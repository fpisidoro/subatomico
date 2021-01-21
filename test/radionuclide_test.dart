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
      expect(known.halflife.inMinutes, 67);
    });
    test('create by isotope long name', () {
      var known = new Radionuclide.isotope('Gallium-68');
      expect(known.halflife.inMinutes, 67);
    });
    test('create by isotope syntax', () {
      var known = new Radionuclide.isotope('gallium 68');
      expect(known.halflife.inMinutes, 67);
    });
    test('create by isotope- unknown', () {
      var known = new Radionuclide.isotope('technetium 991');
      expect(known.halflife.inMinutes, 0);
    });
    test('chemical dash test none', () {
      expect(Radionuclide.addChemcialDash('Tc99'), 'Tc-99');
    });
    test('chemical dash test none with m', () {
      expect(Radionuclide.addChemcialDash('Tc99m'), 'Tc-99m');
    });
    test('chemical dash test with dash m', () {
      expect(Radionuclide.addChemcialDash('Tc-99m'), 'Tc-99m');
    });
    test('chemical dash test with dash no m', () {
      expect(Radionuclide.addChemcialDash('Tc-99'), 'Tc-99');
    });
    test('chemical dash no match', () {
      expect(Radionuclide.addChemcialDash('Tc'), 'Tc');
    });
    // print(Radionuclide.listAbbreviations());
    // print(Radionuclide.listFullNames());
  });
}
