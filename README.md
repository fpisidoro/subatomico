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
 - to reference built-in halflife values without having to look them up. The halflives of about 80 radioisotopes used in industry are included, especially those used in nuclear medicine. Use the IUPAC recommended syntax and capitalization for isotopes (e.g. "In-111" and "indium-111"). 
 - to specify a radionuclide for the **Radioactive** class for decay calculations

```
var radioiodine = Radionuclide.isotope('I-131');
var uranium = Radionuclide.isotope('uranium-235);
var technetium = Radionuclide.isotope('Tc99m'); //both Tc-99 and Tc-99m are included
var pointSource = Radionuclide.isotope('COBALT 57'); //incorrect syntax but will still work
```

How do you know if a radioisotope is included in the built-in list? You can check individually or get a list of all:

```
bool isU238included = Radionuclide.included('U-238'); //true
bool isU237included = Radionuclide.included('U-237'); //false

var listOfAllIsotopes = Radionuclide.listAbbreviations();//Am-241, At-211, etc.
var listOfAllIsotopes = Radionuclide.listFullNames(); americum-241, astatine-211, etc.
```

The list includes:
>Am-241, At-211, Au-195, Ba-133, Bi-212, Bi-213, C-11, C-14, Ca-45, Cd-109, Cl-36, Co-57, Co-58, Co-60, Cr-51, Cs-131, Cs-137, Cu-62, Cu-64, Cu-67, Dy-165, Er-169, F-18, Fe-55, Fe-59, Ga-67, Ga-68, Ge-68, H-3, Ho-166, I-123, I-124, I-125, I-129, I-131, In-111, In-113m, Ir-192, Kr-81m, Kr-85, Lu-177, Mo-99, N-13, Na-22, Na-24, Ni-63, O-15, P-32, P-33, Pb-212, Pd-103, Po-210, Pu-239, Ra-223, Ra-226, Rb-81, Rb-82, Re-186, Re-188, Rn-222, S-35, Sc-47, Se-75, Sm-153, Sn-113, Sr-82, Sr-85, Sr-89, Sr-90, Tc-99, Tc-99m, Th-227, Tl-201, U-235, U-238, W-188, Xe-133, Y-90, Yb-169


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
