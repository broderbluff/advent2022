import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

void Day2() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day2.txt');

  File file = File(filePath);
  List fileContent = file.readAsLinesSync();
  List elvesInventory = [];
  var total = 0;
  var responseScore = 0;
  var roundScore = 0;
  fileContent.forEach(
    (element) {
      String e = element.toString();
      List splitted = e.split(' ');
      var opponent = splitted[0];
      var player = splitted[1];

      switch (player) {
        case 'Y':
          responseScore += 2;
          break;
        case 'X':
          responseScore += 1;
          break;
        case 'Z':
          responseScore += 3;
          break;
        default:
      }

     if (opponent == "A" && player == "")
    },


  );

  print(responseScore);
}
