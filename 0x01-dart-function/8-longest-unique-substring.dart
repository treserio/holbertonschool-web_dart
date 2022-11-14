String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; ++i) {
    for (int j = i; j < str.length; ++j) {
      current = str.substring(i, j + 1);
      if (current.length > longest.length && isUnique(current)) {
        longest = current;
      }
    }
  }

  return longest;
}

// confirm all the values in the string are unique
bool isUnique(String str) {
  return str == str.split('').toSet().join('');
}
