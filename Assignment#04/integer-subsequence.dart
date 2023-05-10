//Create a list of integers and find the longest subsequence of consecutive numbers in the list.

List<int> longestSequence(List<int> list) {
  list.sort();
  List<int> longestSeq = [list[0]];
  List<int> currentSeq = [list[0]];

  for (int i = 1; i < list.length; i++) {
    if (list[i] == list[i - 1] + 1) {
      currentSeq.add(list[i]);
    } else {
      if (currentSeq.length > longestSeq.length) {
        longestSeq = currentSeq;
      }
      currentSeq = [list[i]];
    }
  }
  return longestSeq;
}

void main() {
  List<int> lst = [
    1,
    2,
    45,
    78,
    46,
    98,
    32,
    15,
    68,
    75,
    34,
    91,
    79,
    65,
    47,
    28,
    26,
    49,
    37,
    85,
    49,
    64,
    72,
    48,
    39
  ];

  List<int> consecutiveSeq = longestSequence(lst);
  print("Longest Consecutive Sequence is: $consecutiveSeq");
}
