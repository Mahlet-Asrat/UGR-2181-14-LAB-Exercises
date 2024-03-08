void main() {
  List<String> favoriteHobbies = [];

 
  print("Is the list of favorite hobbies empty? ${favoriteHobbies.isEmpty}");


  favoriteHobbies.add("Reading");
  favoriteHobbies.add("Painting");
  favoriteHobbies.add("Playing guitar");
  favoriteHobbies.add("Photography");


  print("List of favorite hobbies: $favoriteHobbies");


  print("Is the list of favorite hobbies empty? ${favoriteHobbies.isEmpty}");

  favoriteHobbies.remove("Playing guitar");


  print("Updated list of favorite hobbies: $favoriteHobbies");

  favoriteHobbies.sort();

  print("Sorted list of favorite hobbies: $favoriteHobbies");
}