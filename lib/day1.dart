import 'dart:io';

import 'package:path/path.dart' as p;

void Day1() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day1.txt');

  File file = File(filePath);
  List fileContent = file.readAsLinesSync();
  List<int> elvesInventory = [];
  var count = 0;
  fileContent.forEach(
    (element) {
      if (element != '') {
        count += int.parse(element);
      } else {
        elvesInventory.add(count);
        count = 0;
      }
    },
  );
  elvesInventory.sort((a, b) => b.compareTo(a));
  var answerPart1 = elvesInventory.first;
  var answerPart2 = 0;
  for (int i = 0; i < 3; i++) {
    answerPart2 += elvesInventory[i];
  }

  print(answerPart1);
  print(answerPart2);
}
