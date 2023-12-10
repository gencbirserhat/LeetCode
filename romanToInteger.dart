class Solution {
  // Roma rakamları
  List<String> roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];

  // Roma rakamlarının karşılık gelen tamsayı değerleri
  List<int> ints = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
  
  // Roma rakamını tamsayıya dönüştüren fonksiyon
  int romanToInt(String s) {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      // Eğer mevcut Roma rakamı bir sonraki Roma rakamından küçükse
      if (i + 1 < s.length && ints[roman.indexOf(s[i])] < ints[roman.indexOf(s[i + 1])]) {
        // Çıkarma yap ve bir sonraki karaktere atla
        result += ints[roman.indexOf(s[i + 1])] - ints[roman.indexOf(s[i])];
        i++;
      }
      // Eğer mevcut Roma rakamı bir sonraki Roma rakamından büyük veya eşitse
      else {
        // Toplama yap
        result += ints[roman.indexOf(s[i])];
      }
    }
    return result;
  }
}

// Ana fonksiyon
void main(List<String> args) {
  // Solution sınıfından bir örnek oluştur
  Solution solution = new Solution();
  
  // "MCMXCIV" Roma rakamını tamsayıya dönüştür ve ekrana yazdır
  print(solution.romanToInt("MCMXCIV"));
}
