class Solution {
  bool isValid(String s) {
    // Boş bir liste oluşturularak stack (yığın) simüle edilir.
    List<String> stack = [];

    // String içindeki her bir karakter üzerinde döngü başlatılır.
    for (String c in s.split('')) {
      // Eğer karakter açık bir parantez ise, stack'e eklenir.
      if (c == '(' || c == '[' || c == '{') {
        stack.add(c);
      } else { // Eğer karakter bir kapanış parantezi ise:
        // Eğer stack boşsa, eşleşen bir açık parantez bulunamamıştır, bu nedenle false döndürülür.
        if (stack.isEmpty) {
          return false;
        }
        
        // Stack'in en üstündeki karakter alınır ancak stack'ten çıkarılmaz.
        String top = stack.last;

        // Eğer kapanış parantezi, stack'in en üstündeki açık parantez ile eşleşiyorsa, açık parantez stack'ten çıkarılır.
        if ((c == ')' && top == '(') ||
            (c == ']' && top == '[') ||
            (c == '}' && top == '{')) {
          stack.removeLast();
        } else { // Eşleşmiyorsa, false döndürülür.
          return false;
        }
      }
    }
    
    // Döngü bittiğinde stack hala doluysa, eşleşmeyen açık parantezler vardır; bu nedenle false döndürülür.
    // Stack boşsa, tüm parantezler düzgün bir şekilde eşleşmiştir, bu nedenle true döndürülür.
    return stack.isEmpty;
  }
}


void main(List<String> args) {
  Solution solution = new Solution();
  print(solution.isValid('()'));
  print(solution.isValid('(){()}'));
  print(solution.isValid('()][{(}'));
}