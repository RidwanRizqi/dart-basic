List<int> hitungPenjumlahanDanPerkalian(int a, int b) {
  int penjumlahan = a + b;
  int perkalian = a * b;
  
  return [penjumlahan, perkalian];
}

void main() {
  List<int> hasil = hitungPenjumlahanDanPerkalian(3, 4);
  
  int penjumlahan = hasil[0];
  int perkalian = hasil[1];
  
  print('Hasil penjumlahan: $penjumlahan');
  print('Hasil perkalian: $perkalian'); 
}
