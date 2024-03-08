import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "Success isn't always about greatness. It's about consistency. - Dwayne Johnson",
    "Wake up determined. Go to bed satisfied. - Dwayne Johnson",
    "Do your little bit of good where you are; it's those little bits of good put together that overwhelm the world. - Mother Teresa",
    "Not all of us can do great things. But we can do small things with great love. - Mother Teresa"
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  print("Fetching a random quote...");
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}