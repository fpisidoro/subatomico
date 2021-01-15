class Radionuclide {
  static final halflives = {
    //https://www.uab.edu/ehs/images/docs/rad/Accepted_HalfLives_Commonly_Used_Radioisotopes.pdf
    "Am241": new Duration(days: 157753),
    "Ba133": new Duration(minutes: 5644944),
    "Bi212": new Duration(seconds: 3633),
    "Cd109": new Duration(days: 464),
    "Ca45": new Duration(days: 163),
    "C14": new Duration(days: 2091450),
    "Cs137": new Duration(days: 10950),
    "Cl36": new Duration(days: 109865000),
    "Cr51": new Duration(milliseconds: 2393625600),
    "Co57": new Duration(minutes: 390096),
    "Co58": new Duration(minutes: 101952),
    "Co60": new Duration(seconds: 166226256),
    "Cu62": new Duration(milliseconds: 584400),
    "Cu64": new Duration(milliseconds: 45723600),
    "Cu67": new Duration(seconds: 222696),
    "F18": new Duration(milliseconds: 6586260),
    "I123": new Duration(seconds: 47592),
    "I125": new Duration(seconds: 5196096),
    "I129": new Duration(days: 5730500000),
    "I131": new Duration(seconds: 694656),
    "Fe55": new Duration(hours: 23652),
    "Fe59": new Duration(milliseconds: 3847305600),
    "Ga67": new Duration(seconds: 281736),
    "Ga68": new Duration(minutes: 68),
    "Au195": new Duration(days: 183),
    "H3": new Duration(hours: 108186),
    "In111": new Duration(seconds: 244512),
    "In113m": new Duration(milliseconds: 5968800),
    "Kr81m": new Duration(seconds: 13),
    "Kr85": new Duration(minutes: 5634432),
    "Lu177": new Duration(seconds: 579744),
    "Mo99": new Duration(hours: 66),
    "Ni63": new Duration(days: 35040),
    "P32": new Duration(seconds: 1234656),
    "P33": new Duration(minutes: 36576),
    "Pu239": new Duration(days: 8783725),
    "Po210": new Duration(seconds: 11956032),
    "Ra226": new Duration(days: 584000),
    "Rn222": new Duration(milliseconds: 330350400),
    "Re188": new Duration(seconds: 61128),
    "Rb81": new Duration(seconds: 16488),
    "Se75": new Duration(minutes: 172512),
    "Na22": new Duration(seconds: 82056672),
    "Na24": new Duration(hours: 15),
    "Sr85": new Duration(seconds: 5602176),
    "Sr89": new Duration(hours: 1212),
    "Sr90": new Duration(minutes: 15305472),
    "S35": new Duration(seconds: 7554816),
    "Tc99": new Duration(days: 77745000),
    "Tc99m": new Duration(seconds: 21672),
    "Sn113": new Duration(minutes: 165744),
    "W188": new Duration(minutes: 99936),
    "U235": new Duration(days: 256887000000),
    "U238": new Duration(days: 1630820000000),
    "Xe133": new Duration(seconds: 39172377600),
    "Y90": new Duration(hours: 64),
    "Yb169": new Duration(seconds: 2765664),
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
      'americium': 'Am',
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
      'gallium': 'Ga',
      'gold': 'Au',
      'hydrogen': 'H',
      'indium': 'In',
      'iodine': 'I',
      'iron': 'Fe',
      'krypton': 'Kr',
      'lutetium': 'Lu',
      'molybdenum': 'Mo',
      'nickel': 'Ni',
      'phosphorus': 'P',
      'plutonium': 'Pu',
      'polonium': 'Po',
      'radium': 'Ra',
      'radon': 'Rn',
      'rhenium': 'Re',
      'rubidium': 'Rb',
      'selenium': 'Se',
      'sodium': 'Na',
      'strontium': 'Sr',
      'sulfur': 'S',
      'sulphur': 'S',
      'technetium': 'Tc',
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
