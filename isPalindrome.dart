class Solution {
  // isPalindrome fonksiyonu, bir tamsayının palindromik olup olmadığını kontrol eder.
  bool isPalindrome(int x) {
    // Tamsayıyı ondalık sistemden alınan stringe dönüştürür.
    var xList = x.toRadixString(10).split('');

    // Ters çevrilmiş hali ile orijinal hali karşılaştırılır ve sonuç döndürülür.
    final result = xList.reversed.join('') == xList.join('');

    // Palindrom durumunu döndürür.
    return result;
  }
}

void main(List<String> args) {
  // Örnek bir test: 232 sayısı palindromik mi?
  print(Solution().isPalindrome(232));
}

