/*
Name: Mehedi Firoz
Exam:1 (Ostad)
*/

void firozSchool(List<Map<String, dynamic>> students) {

  Map<String, double> averageScores = {};

  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    averageScores[name] = double.parse(average.toStringAsFixed(2));
  }

  List<MapEntry<String, double>> sortedEntries = averageScores.entries.toList();
  sortedEntries.sort((e1, e2) => e2.value.compareTo(e1.value));
  var sortedAverages = Map.fromEntries(sortedEntries);

  print(sortedAverages);
}

void main() {
  List<Map<String, dynamic>> studentData = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  firozSchool(studentData);
}