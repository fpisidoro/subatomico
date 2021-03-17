import 'package:subatomico/subatomico.dart';
import 'package:decimal/decimal.dart';

class Activity {
  num becquerel;

// to convert to bq, multiply RadValue*BqMultiplier[RadUnit]
// to convert to AnyUnit from bq, divide bqvalue/BqMultiplier[AnyUnit]

  static final bqMultiplier = {
    "becquerel": 1,
    "curie": 3.7e10,
    "rutherford": 1e6,
    "": 1
  };

// to convert to base, multiply value by prefixMultiplier[prefix]
// e.g. 100 milliCuries * 1e-3 = 0.1 Curies
// to convert to AnyPrefix, divide value by prefixMultiplier[anyprefix]

  Activity() {
    this.becquerel = 0;
  }
  Activity.becquerel(num theCounts) {
    this.becquerel = theCounts;
  }

  Activity.megabecquerel(num theCounts) {
    num adjustedCounts = UnitPrefix.convert(theCounts, "mega", "");
    this.becquerel = adjustedCounts;
  }

  Activity.curie(num theCounts) {
    //convert to becquerels
    num adjustedCounts = convertActivity(theCounts, "curie", "becquerel");
    this.becquerel = adjustedCounts;
  }

  Activity.millicurie(num theCounts) {
    //convert to curie
    num adjustedCounts = UnitPrefix.convert(theCounts, "milli", "");
    //convert to becquerels
    adjustedCounts = convertActivity(adjustedCounts, "curie", "becquerel");
    this.becquerel = adjustedCounts;
  }

  Activity.microcurie(num theCounts) {
    //convert to curie
    num adjustedCounts = UnitPrefix.convert(theCounts, "micro", "");
    //convert to becquerels
    adjustedCounts = convertActivity(adjustedCounts, "curie", "becquerel");
    this.becquerel = adjustedCounts;
  }

  Activity.countsPerSecond(num theCounts) {
    this.becquerel = theCounts;
  }

  Activity.countsPerMinute(num theCounts) {
    //convert to becquerels
    num adjustedCounts = theCounts / 60;
    this.becquerel = adjustedCounts;
  }

  num curie() {
    num adjustedCounts = convertActivity(this.becquerel, "becquerel", "curie");
    return adjustedCounts;
  }

  num millicurie() {
    num adjustedCounts = convertActivity(this.becquerel, "becquerel", "curie");
    adjustedCounts = convertActivity(adjustedCounts, "curie", "millicurie");
    return adjustedCounts;
  }

  num convertActivity(num initialValue, String fromUnit, String toUnit) {
    String initialUnit = "";
    String finalUnit = "";

    //check fromUnit
    if (bqMultiplier.containsKey(fromUnit)) {
      initialUnit = fromUnit;
    }

    //check toUnit
    if (bqMultiplier.containsKey(toUnit)) {
      finalUnit = toUnit;
    }

    //convert to becquerel
    num finalValue = (Decimal.parse(initialValue.toString()) *
            Decimal.parse(bqMultiplier[initialUnit].toString()))
        .toDouble();

    //convert to finalUnit
    finalValue = (Decimal.parse(finalValue.toString()) /
            Decimal.parse(bqMultiplier[finalUnit].toString()))
        .toDouble();

    return finalValue;
  }

  num extractNumber(String inputString) {
    //remove spaces
    String workingString = inputString.replaceAll(' ', '');
    num finalNumber;

    //get number on left ^\d+\.?\d*
    final leftDigitMatch = RegExp(r'^\d+\.?\d*');
    if (leftDigitMatch.hasMatch(workingString)) {
      var foundANumber = leftDigitMatch.firstMatch(workingString);
      finalNumber = num.tryParse(foundANumber.group(0)) ?? 0;
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

  num processUnit(String inputString) {
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
