import 'dart:async';
import 'dart:math';

Future<List<String>> fetchDataFromDatabase() async {
  // Simulating a database delay
  await Future.delayed(Duration(seconds: 2));

 
  List<String> data = [
    "Mahlet Meklit",
    "Niyat Debesay",
    "Lidya Gebretsadik",
    "Bethlehem Getachew",
    "Ri Yuzaki"
  ];

  return data;
}

void main() async {
  print("Loading data from the database...");
  List<String> data = await fetchDataFromDatabase();
  print("Data loaded successfully!");

  print("Data:");
  data.forEach((item) => print(item));
}