void main(){
    reverse("Mahiii");
}

reverse(word){
  List<String> letters = word.split('');
  List<String> revletters = letters.reversed.toList();
  String revword = revletters.join('');
  print(revword);
}

