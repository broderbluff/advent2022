import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

void Day3() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day3.txt');

  File file = File(filePath);
  List backpacks = file.readAsLinesSync();
  int sumPartOne = 0;
  const alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

  for (String backpack in backpacks) {
    int totalBackpackSize = backpack.length;

    double halfTheBackpack = totalBackpackSize / 2;

    String fistCompartment = backpack.substring(0, halfTheBackpack.toInt());
    String secondCompartment =
        backpack.substring(halfTheBackpack.toInt(), totalBackpackSize);
    for (var i = 0; i < fistCompartment.length; i++) {
      if (fistCompartment.contains(secondCompartment[i])) {
        sumPartOne += alphabet.indexOf(secondCompartment[i]) + 1;
        break;
      }
    }
  }

  print(sumPartOne);

  int sumPartTwo = 0;

  for (var i = 0; i < backpacks.length; i += 3) {
    List firstElfBackpack = backpacks[i].split('');
    String secondElfBackpack = backpacks[i + 1];
    String thirdElfBackpack = backpacks[i + 2];

    for (var item in firstElfBackpack) {
      if (secondElfBackpack.contains(item) && thirdElfBackpack.contains(item)) {
        sumPartTwo += alphabet.indexOf(item) + 1;
        break;
      }
    }
  }

  print(sumPartTwo);
}
