import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

void Day3() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day3.txt');

  File file = File(filePath);
  List lines = file.readAsLinesSync();
  var sum = 0;
  const alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

  for (String line in lines) {
    int lineLength = line.length;

    double halfLength = lineLength / 2;

    String compartmentA = line.substring(0, halfLength.toInt());
    String compartmentB = line.substring(halfLength.toInt(), lineLength);
    for (var i = 0; i < compartmentA.length; i++) {
      if (compartmentA.contains(compartmentB[i])) {
        print(compartmentB[i]);
        sum += alphabet.indexOf(compartmentB[i]) + 1;
        break;
      }
    }
  }
  print(sum);
}
