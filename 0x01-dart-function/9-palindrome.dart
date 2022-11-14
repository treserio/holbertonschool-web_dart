bool isPalindrome(String s) {
  // If the length of the input string is less than 3 characters it doesn’t count as a palindrome.
  return s == s.split('').reversed.join('') && s.length > 2;
}