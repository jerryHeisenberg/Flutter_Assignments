import 'dart:io';

class DartBot {
  late Map<String, String> _qa;

  DartBot(String filename) {
    _qa = readFromFile(filename);
  }
  void run() {
    print("----------------------------");
    print("Hello!! My name is DartBot");
    print("How can I assist you today?");
    print("============================");

    while (true) {
      stdout.write("YOU -> ");
      var quesInput = stdin.readLineSync();
      //String question = quesInput.toLowerCase();

      if (quesInput == null) {
        break;
      }
      if (quesInput == 'exit') {
        break;
      }

      String answer = findAnswer(quesInput);
      stdout.write("BOT -> ");
      print(answer);
    }
  }

  Map<String, String> readFromFile(String filename) {
    File file = File(filename);
    String fileContent = file.readAsStringSync();
    var fileLine = fileContent.split("\n");
    var qa = <String, String>{};

    for (int i = 0; i < fileLine.length - 1; i += 2) {
      String question = fileLine[i].trim();
      String answer = fileLine[i + 1].trim();
      qa[question] = answer;
    }
    return qa;
  }

  String findAnswer(String question) {
    if (_qa.containsKey(question)) {
      return _qa[question]!;
    }
    for (var entry in _qa.entries) {
      if (entry.key.toLowerCase().contains(question.toLowerCase())) {
        return entry.value;
      }
    }
    return "Sorry I Don\'t know the answer to that question";
  }
}

void main() {
  DartBot bot = DartBot("qna.txt");
  bot.run();
}
