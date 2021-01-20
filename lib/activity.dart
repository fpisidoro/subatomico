class Activity {
  double becquerel;

// to convert to bq, multiply RadValue*BqMultiplier[RadUnit]
// to convert to AnyUnit from bq, divide bqvalue/BqMultiplier[AnyUnit]

  static final bqMultiplier = {
    "becquerel": 1,
    "curie": 3.7e10,
    "rutherford": 1e6
  };

// to convert to base, multiply value by prefixMultiplier[prefix]
// e.g. 100 milliCuries * 1e-3 = 0.1 Curies
// to convert to AnyPrefix, divide value by prefixMultiplier[anyprefix]

  double extractNumber(String inputString) {
    //remove spaces
    String workingString = inputString.replaceAll(' ', '');
    double finalNumber;

    //get number on left ^\d+\.?\d*
    final leftDigitMatch = RegExp(r'^\d+\.?\d*');
    if (leftDigitMatch.hasMatch(workingString)) {
      var foundANumber = leftDigitMatch.firstMatch(workingString);
      finalNumber = double.tryParse(foundANumber.group(0)) ?? 0;
    } else {
      finalNumber = 0;
    }
    return finalNumber;
    //get word on right [a-zA-Z]+$
  }

  String extractText(String inputString) {
    //remove spaces
    String workingString = inputString.replaceAll(' ', '');
    String finalText;

    final rightTextMatch = RegExp(r'[a-zA-Z]+$');
    if (rightTextMatch.hasMatch(workingString)) {
      var foundAText = rightTextMatch.firstMatch(workingString);
      finalText = foundAText.group(0);
    } else {
      finalText = '';
    }
    return finalText;
  }

  double processUnit(String inputString) {
    var normalize = {
      '/': 'per',
      ' ': '',
      'seconds': 's',
      'second': 's',
      'secs': 's',
      'sec': 's',
      'minutes': 'minute',
      'hours': 'hour',
      'cps': 'becquerel',
      'dps': 'becquerel',
      'becquerels': 'becquerel',
      'countspers': 'becquerel',
      'countpers': 'becquerel',
      'cpers': 'becquerel',
      'disintegrations': 'd',
      'disintegration': 'd',
      'dis': 'd',
      'dpers': 'becquerel',
      'bqs': 'becquerel',
      'bcqs': 'becquerel',
      'bcq': 'becquerel',
      'bq': 'becquerel',
      'curies': 'curie',
      'cis': 'curie',
      'ci': 'curie'
    };
    //cps CPS dps DPS c/s d/s
    //get rid of slashes
    String workingString = inputString.toLowerCase();
    //remove spaces
    workingString = workingString.replaceAll(' ', '');
  }
}
