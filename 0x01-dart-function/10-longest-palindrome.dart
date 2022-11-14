import '9-palindrome.dart';

String longestPalindrome(String str) {
  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; i++) {
    for (int j = i; j < str.length; j++) {
      current = str.substring(i, j + 1);
      if (current.length > longest.length && isPalindrome(current)) {
        longest = current;
      }
    }
  }

  return longest == '' ? 'none' : longest;
}
