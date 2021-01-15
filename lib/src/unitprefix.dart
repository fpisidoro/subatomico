import 'package:decimal/decimal.dart';

class UnitPrefix {
  static final prefix = {
    "yotta": 1e24,
    "zetta": 1e21,
    "exa": 1e18,
    "peta": 1e15,
    "tera": 1e12,
    "giga": 1e9,
    "mega": 1e6,
    "kilo": 1e3,
    "deca": 1e1,
    "": 1,
    "deci": 1e-1,
    "centi": 1e-2,
    "milli": 1e-3,
    "micro": 1e-6,
    "nano": 1e-9,
    "pico": 1e-12,
    "femto": 1e-15,
    "atto": 1e-18,
    "zepto": 1e-21,
    "yocto": 1e-24,
  };

  static final symbol = {
    "Y": "yotta",
    "Z": "zetta",
    "E": "exa",
    "P": "peta",
    "T": "tera",
    "G": "giga",
    "M": "mega",
    "k": "kilo",
    "h": "hecto",
    "da": "deca",
    "d": "deci",
    "c": "centi",
    "m": "milli",
    "μ": "micro",
    "n": "nano",
    "p": "pico",
    "f": "femto",
    "a": "atto",
    "z": "zepto",
    "y": "yocto",
  };

  static num convert(num initialValue, String fromPrefix, String toPrefix) {
    String initialPrefix, finalPrefix;

    //check fromPrefix
    if (prefix.containsKey(fromPrefix)) {
      initialPrefix = fromPrefix;
    } else if (symbol.containsKey(fromPrefix)) {
      initialPrefix = symbol[fromPrefix];
    } else {
      initialPrefix = "";
    }
    //check toPrefix
    if (prefix.containsKey(toPrefix)) {
      finalPrefix = toPrefix;
    } else if (symbol.containsKey(toPrefix)) {
      finalPrefix = symbol[toPrefix];
    } else {
      finalPrefix = "";
    }

    //convert to 1e0
    double finalValue = (Decimal.parse(initialValue.toString()) *
            Decimal.parse(prefix[initialPrefix].toString()))
        .toDouble();
    //convert to finalPrefix
    finalValue = (Decimal.parse(finalValue.toString()) /
            Decimal.parse(prefix[finalPrefix].toString()))
        .toDouble();
    return finalValue;
  }
}
