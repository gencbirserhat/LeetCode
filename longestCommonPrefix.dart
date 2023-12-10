class Solution {
  String longestCommonPrefix(List<String> strs) {
    // Check if the list has only one element
    if (strs.length == 1) {
      // If it does, return the first element
      return strs.first;
    }
    // Sort the list
    List sortedList = strs.toList()..sort((a, b) => a.compareTo(b));

    // Create a list to store the common prefix
    List<String> list = [];

    // Get the minimum length of the strings in the list
    int minLength = sortedList.first.length < sortedList.last.length
        ? sortedList.first.length
        : sortedList.last.length;
    // Get the length of the list
    int length = sortedList.length;
    
    // Iterate through the strings in the list
    for (int i = 0; i < minLength; i++) {
      // Check if the characters of the first and last strings are the same
      if (sortedList[0][i] == sortedList[length - 1][i]) {
        // If they are, add the character to the list
        list.add(sortedList[0][i]);
      } else
        // If they are not, break out of the loop
        break;
    }
    // If the list is empty, return an empty string
    if (list.isEmpty) {
      return "";
    }
    // Join the list elements into a string and return it
    return list.join('');
  }
}

void main(List<String> args) {
  // Print the longest common prefix of the given strings
  print(Solution()
      .longestCommonPrefix(["zbcccc", "abc", "abz", "abze", "abfdssd"]));
}
