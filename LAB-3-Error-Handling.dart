import 'dart:io';

void readFileFromDisk(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print("File contents:");
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: File not found or inaccessible.");
    } else {
      print("An error occurred: $e");
    }
  }
}

void main() {
  print("Enter the file path: ");
  String filePath = stdin.readLineSync()!;

  readFileFromDisk(filePath);
}