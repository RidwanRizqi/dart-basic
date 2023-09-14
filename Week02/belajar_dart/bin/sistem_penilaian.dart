import 'dart:io';

void main() {
  stdout.write('Masukkan Nama Mahasiswa\t\t: ');
  String nama = stdin.readLineSync()!;
  stdout.write('Masukkan NIM\t\t\t: ');
  String nim = stdin.readLineSync()!;
  stdout.write('Masukkan Nilai Kehadiran\t: ');
  double kehadiran = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan Nilai Tugas\t\t: ');
  double tugas = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan Nilai Kuis\t\t: ');
  double kuis = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan Nilai UTS\t\t: ');
  double uts = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan Nilai UAS\t\t: ');
  double uas = double.parse(stdin.readLineSync()!);
  double nilaiAkhir = (kehadiran * 0.05) +
      (tugas * 0.25) +
      (kuis * 0.15) +
      (uts * 0.25) +
      (uas * 0.3);
  String grade;
  if (nilaiAkhir >= 80) {
    grade = 'A';
  } else if (nilaiAkhir >= 70) {
    grade = 'B';
  } else if (nilaiAkhir >= 60) {
    grade = 'C';
  } else if (nilaiAkhir >= 50) {
    grade = 'D';
  } else {
    grade = 'E';
  }
  print('''
  Hasil :
  Nama Mahasiswa\t: $nama
  NIM\t\t\t: $nim
  Nilai Akhir\t\t: $nilaiAkhir
  Grade\t\t\t: $grade
  ''');
}
