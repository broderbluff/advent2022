import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

void Day1() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day1.txt');

  File file = File(filePath);
  List fileContent = file.readAsLinesSync();
  List elvesInventory = [];
  var count = 0;
  fileContent.forEach(
    (element) {
      if (element != '') {
        count += element as int;
      } else {
        elvesInventory.add(count);
        count = 0;
      }
    },
  );
  print(elvesInventory);
}
