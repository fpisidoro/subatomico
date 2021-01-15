# subatomico

Radioactivity unit conversions, half life, and decay calculations made quick and easy for Flutter and Dart.

The subatomico package consists of only three easy classes:
- **Radionuclide** - specify the isotope
- **Activity** - specify how much radioactivity
- **Radioactive** - calculate decay

### Quick Overview Example
I have a 12.4 mCi dose of F-18 Fluorodeoxyglucose right now, but the patient is unable to be injected for another 3 hours. What will be the new activity?
```
// specify the 3 components of a Radioactive substance
var f18 = Radionuclide.isotope('F-18');
var initialActivity = Activity(12.4, 'mCi');
var calibrationTime = DateTime.now();

// then create the Radioactive substance
var f18fdg = Radioactive(f18, initialActivity, calibrationTime);

// now calculate the new Activity
var newActivity = f18fdg.activityAfter(new Duration(hours:3)).inMillicuries;//
```

### Getting Started                                                                                                    
`import 'package:subatomico/subatomico.dart';`

## Radionuclide class (for halflife)
You would want to create an instance of the **Radionuclide** class for the following situations:
 - to reference built-in halflife values without having to look them up. The halflives of over 55 radioisotopes used in industry are included, especially those used in nuclear medicine. Use the IUPAC recommended syntax and capitalization for isotopes (e.g. "In-111" and "indium-111"). 
 - to specify a radionuclide for the **Radioactive** class for decay calculations

```
var radioiodine = Radionuclide.isotope('I-131');
var uranium = Radionuclide.isotope('uranium-235);
var technetium = Radionuclide.isotope('Tc99m'); //both Tc-99 and Tc-99m are included
var pointSource = Radionuclide.isotope('COBALT 57'); //incorrect syntax but will still work
```

How do you know if a radioisotope is included in the built-in list? You can check:

```
bool isU238included = Radionuclide.included('U-238'); //true
bool isU237included = Radionuclide.included('U-237'); //false
```

The list includes ...
If an isotope is not in this list, you can create any **Radionuclide** instance by providing the halflife using a dartlang **Duration**:

`var uranium237 = Radionuclide.halflife(new Duration(days:6, hours:18));`

Getting the halflife property returns a dartlang **Duration**. Note that when inDays, inHours, inMinutes, and inSeconds is requested, **Duration** rounds down and returns an integer.

```
var krypton81m = Radionuclide.isotope('Kr-81m');
print(krytpton81m.halflife.inSeconds); //13
```


## Activity class (for unit conversion)
You would want to create an instance of the **Activity** class for the following situations:
 - to easily convert radioactivity units between Curies, becquerels, counts per minute, etc
 - to specify a radioactivity amount for the **Radioactive** class for decay calculations

## Radioactive class (for nuclear decay)
Create a **Radioactive** instance by providing:
- the radionuclide, using the **Radionuclide** class (described above)
- the radioactivity amount, using the **Activity** class (described above)
- the time of the radioactivity amount occurs or is measured, using dartlang **DateTime**
