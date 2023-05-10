import 'dart:math';

class Quote {
  String quote;
  String author;

  Quote({required this.quote, required this.author});

  static List<Quote> quotes = [
    Quote(
        quote:
            "Do not judge me by my successes, judge me by how many times I fell down and got back up again.",
        author: "Nelson Mandela"),
    Quote(
        quote:
            "Think a hundred times before you take a decision, but once that decision is taken, stand by it as one man.",
        author: "Muhammad Ali Jinnah"),
    Quote(
        quote: "Be the change that you wish to see in the world.",
        author: "Gandhi"),
    Quote(
        quote:
            "When you change your thoughts, remember to also change your world.",
        author: "Norman Vincent Peale"),
    Quote(
        quote:
            "Success usually comes to those who are too busy looking for it.",
        author: "Henry David Thoreau"),
    Quote(
        quote: "I never dreamed about success. I worked for it.",
        author: "Estée Lauder"),
    Quote(
        quote:
            "If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.",
        author: "Steve Jobs"),
    Quote(
        quote:
            "Setting goals is the first step in turning the invisible into the visible.",
        author: "Tony Robbins"),
    Quote(
        quote: "He who conquers himself is the mightiest warrior.",
        author: "Confucius"),
    Quote(
        quote:
            "Try not to become a man of success, but rather become a man of value.",
        author: "Albert Einstein")
  ];
  static Quote getRandomQuote() {
    Random random = Random();
    int index = random.nextInt(Quote.quotes.length);
    return Quote.quotes[index];
  }

}
