class Radionuclide {
  static final halflives = {
    //https://www.uab.edu/ehs/images/docs/rad/Accepted_HalfLives_Commonly_Used_Radioisotopes.pdf
    //https://www.world-nuclear.org/information-library/non-power-nuclear-applications/radioisotopes-research/radioisotopes-in-medicine.aspx
    "Am241": Duration(days: 157789, hours: 12), //432.2y
    "At211": Duration(hours: 7, minutes: 12),
    "Ba133": Duration(days: 3836, hours: 3, minutes: 36), //10.51y
    "Bi212": Duration(hours: 1, seconds: 33),
    "Bi213": Duration(minutes: 45, seconds: 35, milliseconds: 400),
    "Cd109": Duration(days: 462, hours: 14, minutes: 24),
    "Ca45": Duration(days: 163),
    "C11": Duration(minutes: 20, seconds: 21, milliseconds: 84),
    "C14": Duration(days: 2091450), //5730y
    "Cs131": Duration(days: 9, hours: 16, minutes: 48),
    "Cs137": Duration(days: 11012), //30.17y
    "Cl36": Duration(days: 109974500), //301300y
    "Cr51": Duration(days: 27, hours: 16, minutes: 48),
    "Co57": Duration(days: 271, hours: 18, minutes: 57, seconds: 36),
    "Co58": Duration(days: 70, hours: 20, minutes: 38, seconds: 24),
    "Co60": Duration(days: 1923, hours: 13, minutes: 12), //5.27y
    "Cu62": Duration(minutes: 9, seconds: 44, milliseconds: 400),
    "Cu64": Duration(hours: 12, minutes: 42, seconds: 3, milliseconds: 600),
    "Cu67": Duration(days: 2, hours: 13, minutes: 49, seconds: 48),
    "Dy165": Duration(hours: 2, minutes: 20, seconds: 2, milliseconds: 400),
    "Er169": Duration(
        days: 9, hours: 9, minutes: 24, seconds: 28, milliseconds: 800),
    "F18": Duration(hours: 1, minutes: 49, seconds: 46, milliseconds: 260),
    "Ho166": Duration(days: 1, hours: 2, minutes: 49, seconds: 48),
    "I123": Duration(hours: 13, minutes: 13, seconds: 12),
    "I124": Duration(days: 4, hours: 4, minutes: 19, seconds: 12),
    "I125": Duration(days: 59, hours: 11, minutes: 45, seconds: 36),
    "I129": Duration(days: 5730500000), //1.57e7y
    "I131": Duration(days: 8, minutes: 28, seconds: 22, milliseconds: 80),
    "Ir192": Duration(
        days: 73, hours: 19, minutes: 52, seconds: 19, milliseconds: 200),
    "Fe55": Duration(days: 999, minutes: 7, seconds: 12), //2.737y
    "Fe59": Duration(days: 44, hours: 14, minutes: 24),
    "Ga67": Duration(days: 3, hours: 6, minutes: 18),
    "Ga68": Duration(hours: 1, minutes: 7, seconds: 43, milliseconds: 200),
    "Ge68": Duration(days: 271, hours: 1, minutes: 40, seconds: 48),
    "Au195": Duration(days: 186, hours: 2, minutes: 9, seconds: 36),
    "H3": Duration(days: 4496, hours: 19, minutes: 12), //12.32y
    "In111": Duration(
        days: 2, hours: 19, minutes: 19, seconds: 3, milliseconds: 360),
    "In113m": Duration(hours: 1, minutes: 39, seconds: 29, milliseconds: 520),
    "Kr81m": Duration(seconds: 13),
    "Kr85": Duration(days: 3925, hours: 22, minutes: 33, seconds: 36), //10.756y
    "Lu177": Duration(
        days: 6, hours: 15, minutes: 31, seconds: 40, milliseconds: 800),
    "Mo99": Duration(days: 2, hours: 18),
    "N13": Duration(minutes: 9, seconds: 57, milliseconds: 600),
    "O15": Duration(minutes: 2, seconds: 2, milliseconds: 240),
    "Ni63": Duration(days: 36886, hours: 21, minutes: 36), //101.06y
    "Pd103": Duration(days: 16, hours: 23, minutes: 45, seconds: 36),
    "P32": Duration(
        days: 14, hours: 6, minutes: 25, seconds: 55, milliseconds: 200),
    "P33": Duration(days: 25, hours: 8, minutes: 9, seconds: 36),
    "Pb212": Duration(hours: 10, minutes: 38, seconds: 24),
    "Pu239": Duration(days: 8800150), //24110y
    "Po210": Duration(
        days: 138, hours: 9, minutes: 1, seconds: 26, milliseconds: 400),
    "Ra223": Duration(days: 11, hours: 9, minutes: 36),
    "Ra226": Duration(days: 584000), //1600y
    "Rn222": Duration(
        days: 3, hours: 19, minutes: 42, seconds: 57, milliseconds: 600),
    "Re186": Duration(days: 3, hours: 19, minutes: 12),
    "Re188": Duration(hours: 16, minutes: 54),
    "Rb81": Duration(hours: 4, minutes: 34, seconds: 33, milliseconds: 600),
    "Rb82": Duration(minutes: 1, seconds: 16, milliseconds: 380),
    "Sc47": Duration(
        days: 3, hours: 8, minutes: 22, seconds: 50, milliseconds: 880),
    "Se75": Duration(days: 119, hours: 18, minutes: 43, seconds: 12),
    "Na22": Duration(days: 950, hours: 19, minutes: 48), //2.605y
    "Na24": Duration(hours: 14, minutes: 57, seconds: 32, milliseconds: 400),
    "Sm153": Duration(days: 1, hours: 22, minutes: 18),
    "Sr82": Duration(days: 25, hours: 13, minutes: 12),
    "Sr85": Duration(
        days: 64, hours: 20, minutes: 28, seconds: 19, milliseconds: 200),
    "Sr89": Duration(days: 50, hours: 13, minutes: 40, seconds: 48),
    "Sr90": Duration(days: 10512), //28.79y
    "S35": Duration(days: 87, hours: 9, minutes: 36),
    "Tc99": Duration(days: 77745000), //211,100y
    "Tc99m": Duration(hours: 6, minutes: 1, seconds: 12),
    "Th227": Duration(
        days: 18, hours: 16, minutes: 43, seconds: 40, milliseconds: 800),
    "Tl201": Duration(hours: 73, minutes: 6),
    "Sn113": Duration(days: 115, hours: 2, minutes: 9, seconds: 36),
    "W188": Duration(days: 69, hours: 18, minutes: 43, seconds: 12),
    "U235": Duration(days: 256887000000), //703,800,000y
    "U238": Duration(days: 1630820000000), //4,468,000,000
    "Xe133": Duration(days: 5, hours: 5, minutes: 52, seconds: 48),
    "Y90": Duration(hours: 64, minutes: 12),
    "Yb169": Duration(days: 32, minutes: 37, seconds: 26, milliseconds: 400),
  };

  Duration halflife;

  Radionuclide.halflife(this.halflife);

  Radionuclide.isotope(String isotopeName) {
    final withoutDash = processString(isotopeName);
    if (halflives.containsKey(withoutDash)) {
      this.halflife = halflives[withoutDash];
    } else {
      this.halflife = new Duration(seconds: 0);
    }
  }

  // Radionuclide.I131() {
  //   this.halflife = halflives['I131'];
  // }

  static bool included(String isotopeName) {
    final withoutDash = processString(isotopeName);

    if (halflives.containsKey(withoutDash)) {
      return true;
    } else {
      return false;
    }
  }

  static String processString(String inputString) {
    final chemicalAbbreviations = {
      'actinium': 'Ac',
      'americium': 'Am',
      'astatine': 'At',
      'barium': 'Ba',
      'bismuth': 'Bi',
      'cadmium': 'Cd',
      'calcium': 'Ca',
      'carbon': 'C',
      'cesium': 'Cs',
      'caesium': 'Cs',
      'chlorine': 'Cl',
      'chromium': 'Cr',
      'cobalt': 'Co',
      'copper': 'Cu',
      'dysprosium': 'Dy',
      'erbium': 'Er',
      'gallium': 'Ga',
      'germanium': 'Ge',
      'gold': 'Au',
      'holmium': 'Ho',
      'hydrogen': 'H',
      'indium': 'In',
      'iodine': 'I',
      'iron': 'Fe',
      'krypton': 'Kr',
      'lead': "Pb",
      'lutetium': 'Lu',
      'molybdenum': 'Mo',
      'nickel': 'Ni',
      'nitrogen': 'N',
      'oxygen': 'O',
      'palladium': "Pd",
      'phosphorus': 'P',
      'plutonium': 'Pu',
      'polonium': 'Po',
      'radium': 'Ra',
      'radon': 'Rn',
      'rhenium': 'Re',
      'rubidium': 'Rb',
      'samarium': 'Sm',
      'scandium': 'Sc',
      'selenium': 'Se',
      'sodium': 'Na',
      'strontium': 'Sr',
      'sulfur': 'S',
      'sulphur': 'S',
      'technetium': 'Tc',
      'thorium': 'Th',
      'thallium': 'Tl',
      'tin': 'Sn',
      'tungsten': 'W',
      'uranium': 'U',
      'xenon': 'Xe',
      'yttrium': 'Y',
      'ytterbium': 'Yb',
    };
    String workingString = inputString;
    var temporaryLowerCase = workingString.toLowerCase();

    // chemicalAbbreviations.keys.forEach((element) {
    //   if (temporaryLowerCase.contains(element)) {
    //     workingString = temporaryLowerCase.replaceAll(
    //         element, chemicalAbbreviations[element]);
    //     print("new working string:" + workingString);
    //   }
    // });

    for (String element in chemicalAbbreviations.keys) {
      if (temporaryLowerCase.contains(element)) {
        workingString = temporaryLowerCase.replaceAll(
            element, chemicalAbbreviations[element]);
        break;
      }
    }

    workingString = workingString.replaceAll(RegExp('-'), '');
    workingString = workingString.replaceAll(' ', '');
    return workingString;
  }
}
