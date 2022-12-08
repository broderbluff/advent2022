import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

void Day2() {
  const Map<String, int> scoresPart1 = {
    "A": 1,
    "X": 1,
    "B": 2,
    "Y": 2,
    "C": 3,
    "Z": 3,
  };

  const Map<String, int> scoresPart2 = {
    "A": 1,
    "B": 2,
    "C": 3,
  };
  const Map<String, int> shifts = {
    "X": -1,
    "Y": 0,
    "Z": 1,
  };

  var filePath = p.join(Directory.current.path, 'assets/inputs', 'day2.txt');
  File file = File(filePath);
  List<String> lines = file.readAsLinesSync();
  int totalScorePart1 = 0;
  int totalScorePart2 = 0;

  for (String line in lines) {
    var splitted = line.split(' ');

    //part1
    int scoreLeft = scoresPart1[splitted[0]] ?? 0;
    int scoreRight = scoresPart1[splitted[1]] ?? 0;
    int result = (scoreLeft - scoreRight) % 3;
    bool win = result == 2;
    bool draw = result == 0;
    int resultingScore = win
        ? 6
        : draw
            ? 3
            : 0;
    totalScorePart1 += resultingScore + scoreRight;

//part2
    int shift = shifts[splitted[1]] ?? 0;
    int decidedScore = (shift + 1) * 3; // X = 0, Y = 3, Z = 6

    int scoreLeftPart2 = scoresPart2[splitted[0]] ?? 0;
    int scoreRightPart2 = (scoreLeftPart2 + shift - 1) % 3 + 1;

    totalScorePart2 += decidedScore + scoreRightPart2;
  }

  print(totalScorePart1);
  print(totalScorePart2);
}
