//Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.

List<String> commonSequence(List<String> list) {
  list.sort();
  List<String> longestSeq = [];

  for (int i = 0; i < list.length - 1; i++) {
    String str1 = list[i];
    String str2 = list[i + 1];
    int len1 = str1.length;
    int len2 = str2.length;
    int len;
    if (len1 < len2) {
      len = len1;
    } else {
      len = len2;
    }
    String seq = "";

    for (int j = 0; j < len; j++) {
      if (str1[j] == str2[j]) {
        seq += str1[j];
      } else {
        if (seq.length == longestSeq.length) {
          longestSeq.add(seq);
        } else if (seq.length > longestSeq.length) {
          longestSeq = [seq];
        }
        seq = "";
      }
    }
  }
  return longestSeq;
}

void main() {
  List<String> lst = [
    'bca',
    'cnn',
    'bc',
    'bb',
    'bbb',
    'ghba',
    'ergb',
    'tsbac',
    'bac',
    'ca',
    'bagz',
  ];

  List<String> consecutiveSeq = commonSequence(lst);
  print("Longest Common Sequence is: $consecutiveSeq");
}
