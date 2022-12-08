import 'dart:io';
import 'package:path/path.dart' as p;

void Day4() {
  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day4.txt');

  File file = File(filePath);
  List tasks = file.readAsLinesSync();

  int countPartOne = 0;
    int countPartTwo = 0;


  for (var i in tasks) {
    var a = i.trim().split(',');
    var b = a[0].split('-');
    var c = a[1].split('-');
    if ((int.parse(b[0]) <= int.parse(c[0]) && int.parse(b[1]) >= int.parse(c[1])) || (int.parse(b[0]) >= int.parse(c[0]) && int.parse(b[1]) <= int.parse(c[1]))) {
      countPartOne++;
    }

      if (int.parse(b[0]) <= int.parse(c[1]) && int.parse(c[0]) <= int.parse(b[1])) {
        countPartTwo++;
    }
  }

  print(countPartTwo);
}
