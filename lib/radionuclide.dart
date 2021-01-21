class Radionuclide {
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

  static final halflives = {
    //https://www.uab.edu/ehs/images/docs/rad/Accepted_HalfLives_Commonly_Used_Radioisotopes.pdf
    //https://www.world-nuclear.org/information-library/non-power-nuclear-applications/radioisotopes-research/radioisotopes-in-medicine.aspx
    "Am-241": Duration(days: 157789, hours: 12), //432.2y
    "At-211": Duration(hours: 7, minutes: 12),
    "Ba-133": Duration(days: 3836, hours: 3, minutes: 36), //10.51y
    "Bi-212": Duration(hours: 1, seconds: 33),
    "Bi-213": Duration(minutes: 45, seconds: 35, milliseconds: 400),
    "Cd-109": Duration(days: 462, hours: 14, minutes: 24),
    "Ca-45": Duration(days: 163),
    "C-11": Duration(minutes: 20, seconds: 21, milliseconds: 84),
    "C-14": Duration(days: 2091450), //5730y
    "Cs-131": Duration(days: 9, hours: 16, minutes: 48),
    "Cs-137": Duration(days: 11012), //30.17y
    "Cl-36": Duration(days: 109974500), //301300y
    "Cr-51": Duration(days: 27, hours: 16, minutes: 48),
    "Co-57": Duration(days: 271, hours: 18, minutes: 57, seconds: 36),
    "Co-58": Duration(days: 70, hours: 20, minutes: 38, seconds: 24),
    "Co-60": Duration(days: 1923, hours: 13, minutes: 12), //5.27y
    "Cu-62": Duration(minutes: 9, seconds: 44, milliseconds: 400),
    "Cu-64": Duration(hours: 12, minutes: 42, seconds: 3, milliseconds: 600),
    "Cu-67": Duration(days: 2, hours: 13, minutes: 49, seconds: 48),
    "Dy-165": Duration(hours: 2, minutes: 20, seconds: 2, milliseconds: 400),
    "Er-169": Duration(
        days: 9, hours: 9, minutes: 24, seconds: 28, milliseconds: 800),
    "F-18": Duration(hours: 1, minutes: 49, seconds: 46, milliseconds: 260),
    "Ho-166": Duration(days: 1, hours: 2, minutes: 49, seconds: 48),
    "I-123": Duration(hours: 13, minutes: 13, seconds: 12),
    "I-124": Duration(days: 4, hours: 4, minutes: 19, seconds: 12),
    "I-125": Duration(days: 59, hours: 11, minutes: 45, seconds: 36),
    "I-129": Duration(days: 5730500000), //1.57e7y
    "I-131": Duration(days: 8, minutes: 28, seconds: 22, milliseconds: 80),
    "Ir-192": Duration(
        days: 73, hours: 19, minutes: 52, seconds: 19, milliseconds: 200),
    "Fe-55": Duration(days: 999, minutes: 7, seconds: 12), //2.737y
    "Fe-59": Duration(days: 44, hours: 14, minutes: 24),
    "Ga-67": Duration(days: 3, hours: 6, minutes: 18),
    "Ga-68": Duration(hours: 1, minutes: 7, seconds: 43, milliseconds: 200),
    "Ge-68": Duration(days: 271, hours: 1, minutes: 40, seconds: 48),
    "Au-195": Duration(days: 186, hours: 2, minutes: 9, seconds: 36),
    "H-3": Duration(days: 4496, hours: 19, minutes: 12), //12.32y
    "In-111": Duration(
        days: 2, hours: 19, minutes: 19, seconds: 3, milliseconds: 360),
    "In-113m": Duration(hours: 1, minutes: 39, seconds: 29, milliseconds: 520),
    "Kr-81m": Duration(seconds: 13),
    "Kr-85":
        Duration(days: 3925, hours: 22, minutes: 33, seconds: 36), //10.756y
    "Lu-177": Duration(
        days: 6, hours: 15, minutes: 31, seconds: 40, milliseconds: 800),
    "Mo-99": Duration(days: 2, hours: 18),
    "N-13": Duration(minutes: 9, seconds: 57, milliseconds: 600),
    "O-15": Duration(minutes: 2, seconds: 2, milliseconds: 240),
    "Ni-63": Duration(days: 36886, hours: 21, minutes: 36), //101.06y
    "Pd-103": Duration(days: 16, hours: 23, minutes: 45, seconds: 36),
    "P-32": Duration(
        days: 14, hours: 6, minutes: 25, seconds: 55, milliseconds: 200),
    "P-33": Duration(days: 25, hours: 8, minutes: 9, seconds: 36),
    "Pb-212": Duration(hours: 10, minutes: 38, seconds: 24),
    "Pu-239": Duration(days: 8800150), //24110y
    "Po-210": Duration(
        days: 138, hours: 9, minutes: 1, seconds: 26, milliseconds: 400),
    "Ra-223": Duration(days: 11, hours: 9, minutes: 36),
    "Ra-226": Duration(days: 584000), //1600y
    "Rn-222": Duration(
        days: 3, hours: 19, minutes: 42, seconds: 57, milliseconds: 600),
    "Re-186": Duration(days: 3, hours: 19, minutes: 12),
    "Re-188": Duration(hours: 16, minutes: 54),
    "Rb-81": Duration(hours: 4, minutes: 34, seconds: 33, milliseconds: 600),
    "Rb-82": Duration(minutes: 1, seconds: 16, milliseconds: 380),
    "Sc-47": Duration(
        days: 3, hours: 8, minutes: 22, seconds: 50, milliseconds: 880),
    "Se-75": Duration(days: 119, hours: 18, minutes: 43, seconds: 12),
    "Na-22": Duration(days: 950, hours: 19, minutes: 48), //2.605y
    "Na-24": Duration(hours: 14, minutes: 57, seconds: 32, milliseconds: 400),
    "Sm-153": Duration(days: 1, hours: 22, minutes: 18),
    "Sr-82": Duration(days: 25, hours: 13, minutes: 12),
    "Sr-85": Duration(
        days: 64, hours: 20, minutes: 28, seconds: 19, milliseconds: 200),
    "Sr-89": Duration(days: 50, hours: 13, minutes: 40, seconds: 48),
    "Sr-90": Duration(days: 10512), //28.79y
    "S-35": Duration(days: 87, hours: 9, minutes: 36),
    "Tc-99": Duration(days: 77745000), //211,100y
    "Tc-99m": Duration(hours: 6, minutes: 1, seconds: 12),
    "Th-227": Duration(
        days: 18, hours: 16, minutes: 43, seconds: 40, milliseconds: 800),
    "Tl-201": Duration(hours: 73, minutes: 6),
    "Sn-113": Duration(days: 115, hours: 2, minutes: 9, seconds: 36),
    "W-188": Duration(days: 69, hours: 18, minutes: 43, seconds: 12),
    "U-235": Duration(days: 256887000000), //703,800,000y
    "U-238": Duration(days: 1630820000000), //4,468,000,000
    "Xe-133": Duration(days: 5, hours: 5, minutes: 52, seconds: 48),
    "Y-90": Duration(hours: 64, minutes: 12),
    "Yb-169": Duration(days: 32, minutes: 37, seconds: 26, milliseconds: 400),
  };
  static final chemicalAbbreviations = {
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
    'sulphur': 'S',
    'sulfur': 'S',
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

  static bool included(String isotopeName) {
    final withoutDash = processString(isotopeName);

    if (halflives.containsKey(withoutDash)) {
      return true;
    } else {
      return false;
    }
  }

  static String processString(String inputString) {
    String workingString = addChemcialDash(inputString);
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

    //workingString = workingString.replaceAll(RegExp('-'), '');
    workingString = workingString.replaceAll(' ', '');
    return workingString;
  }

  static String addChemcialDash(String inputString) {
    String workingString = inputString;
    if (!inputString.contains('-')) {
      String element = "";
      String massNumber = "";
      var leftTextMatch = RegExp(r'^[a-zA-Z]+');
      var rightNumberMatch = RegExp(r'\d+[a-zA-Z]?$');
      if (leftTextMatch.hasMatch(inputString)) {
        var elementMatch = leftTextMatch.firstMatch(inputString);
        element = elementMatch.group(0);
      }
      if (rightNumberMatch.hasMatch(inputString)) {
        var numberMatch = rightNumberMatch.firstMatch(inputString);
        massNumber = numberMatch.group(0);
      }
      if (element.isNotEmpty && massNumber.isNotEmpty) {
        workingString = element + "-" + massNumber.toString();
      }
    }
    return workingString;
  }

  static List<String> listAbbreviations() {
    return halflives.keys.toList()..sort();
  }

  static List<String> listFullNames() {
    //reverse the chemicalAbbreviations map
    var chemicalFullNames = inverse(chemicalAbbreviations);
    var finalFullNames = <String>[];
    var leftTextMatch = RegExp(r'^[a-zA-Z]+');
    halflives.keys.forEach((abbreviation) {
      String element = "";
      if (leftTextMatch.hasMatch(abbreviation)) {
        var elementMatch = leftTextMatch.firstMatch(abbreviation);
        element = elementMatch.group(0);
      }
      if (element.isNotEmpty && chemicalFullNames.containsKey(element)) {
        var fullName =
            abbreviation.replaceAll(element, chemicalFullNames[element]);
        finalFullNames.add(fullName);
      }
    });
    return finalFullNames.toList()..sort();
  }

  static Map inverse(Map f) {
    return f.map((k, v) => MapEntry(v, k));
  }
}
