class ListNode {
  int val;
  ListNode? next;

  // Bağlı listeleri oluşturmak için kullanılan constructor.
  ListNode(this.val, [this.next]);
}

class Solution {
  // İki bağlı listeyi birleştiren fonksiyon.
  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    // Başlangıç düğümü oluşturuluyor.
    ListNode dummy = ListNode(0);
    // Gezici düğüm, birleştirilen listeyi oluştururken kullanılacak.
    ListNode current = dummy;

    // İki liste de tükenene kadar devam eden bir döngü.
    while (l1 != null && l2 != null) {
      // Elemanları karşılaştır ve küçük olanı current.next'e ekle.
      if (l1.val < l2.val) {
        current.next = l1;
        l1 = l1.next; // Küçük olan listede bir sonraki elemana geç.
      } else {
        current.next = l2;
        l2 = l2.next; // Diğer listede bir sonraki elemana geç.
      }
      current = current.next!; // Gezici düğümü bir sonraki elemana taşı.
    }

    // İki listeden biri tamamlandığında, geriye kalan elemanları ekleyin.
    if (l1 != null) {
      current.next = l1;
    }

    if (l2 != null) {
      current.next = l2;
    }

    // Başlangıç düğümünü atlayarak birleştirilen listeyi döndürün.
    return dummy.next;
  }
}

// Bağlı listeyi yazdırmak için yardımcı fonksiyon.
void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

void main() {
  // Örnek 1:
  Solution s = Solution();
  // İki bağlı liste oluşturuluyor.
  ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode list2 = ListNode(1, ListNode(5, ListNode(1)));
  // İki listeyi birleştirip sonucu yazdırma.
  ListNode? mergedList = s.mergeTwoLists(list1, list2);
  printList(mergedList);
}
