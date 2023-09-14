import 'dart:io';

main() {
  stdout.write('Masukkan jumlah minyak : ');
  int minyak = int.parse(stdin.readLineSync()!);
  stdout.write('Apakah ada telur? (y/n) : ');
  String telur = stdin.readLineSync()!;
  int jumlahMinyak = mainCode(minyak, telur);
  if (telur == 'y') {
    print("Saya harus membeli $jumlahMinyak minyak dan 6 telur");
  } else {
    print("Saya harus membeli $jumlahMinyak minyak");
  }
}

int mainCode(int minyak, String telur) {
  int oilThatShouldBuy;

  if (telur == 'y') {
    oilThatShouldBuy = minyak;
  } else {
    oilThatShouldBuy = minyak;
  }

  return oilThatShouldBuy;
}
