class Solution {
  // twoSum adlı metod, verilen bir hedef değeri (target) elde etmek için
  // verilen tamsayı listesi (nums) içindeki iki sayıyı bulmaya çalışır.
  dynamic twoSum(List<int> nums, int target) {
    var result = []; // Sonucu tutmak için boş bir liste oluşturulur.
    
    // İki iç içe döngü kullanılarak tüm olası çift kombinasyonlar kontrol edilir.
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        // İki sayının toplamı, hedef değere eşitse,
        if (nums[i] + nums[j] == target) {
          // İndeksleri sonuç listesine eklenir ve sonuç döndürülür.
          result.add(i);
          result.add(j);
          return result;
        }
      }
    }
  }
}

// main fonksiyonu, Solution sınıfının bir örneğini oluşturur
// ve twoSum metodunu bir örnek üzerinde çağırarak kullanır.
void main(List<String> args) {
  var s = Solution(); // Solution sınıfından bir örnek oluşturulur.
  
  // twoSum metoduna örnek bir liste ve hedef bir sayı ile çağrı yapılır,
  // ardından elde edilen sonuç ekrana yazdırılır.
  print(s.twoSum([1, 3, 3, 4], 6));
}
