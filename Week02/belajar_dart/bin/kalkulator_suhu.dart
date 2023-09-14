import 'dart:io';

void main() {
  stdout.write('Pilih Satuan Suhu Awal\n: ');
  stdout.write('1. Celcius \n');
  stdout.write('2. Fahrenheit \n');
  stdout.write('3. Kelvin \n');
  stdout.write('4. Reamur \n');
  stdout.write('Pilih: ');
  int input = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan suhu: ');
  double suhu = double.parse(stdin.readLineSync()!);
  stdout.write('Pilih Satuan Suhu Akhir: \n ');
  stdout.write('1. Celcius \n');
  stdout.write('2. Fahrenheit \n');
  stdout.write('3. Kelvin \n');
  stdout.write('4. Reamur \n');
  stdout.write('Pilih: ');
  int? output = int.parse(stdin.readLineSync()!);

  if (input == 1 && output == 1) {
    print('$suhu derajat Celcius = $suhu derajat Celcius');
  } else if (input == 1 && output == 2) {
    print('$suhu derajat Celcius = ${(suhu * 9 / 5) + 32} derajat Fahrenheit');
  } else if (input == 1 && output == 3) {
    print('$suhu derajat Celcius = ${suhu + 273.15} derajat Kelvin');
  } else if (input == 1 && output == 4) {
    print('$suhu derajat Celcius = ${(suhu * 4 / 5)} derajat Reamur');
  } else if (input == 2 && output == 1) {
    print('$suhu derajat Fahrenheit = ${(suhu - 32) * 5 / 9} derajat Celcius');
  } else if (input == 2 && output == 2) {
    print('$suhu derajat Fahrenheit = $suhu derajat Fahrenheit');
  } else if (input == 2 && output == 3) {
    print(
        '$suhu derajat Fahrenheit = ${(suhu - 32) * 5 / 9 + 273.15} derajat Kelvin');
  } else if (input == 2 && output == 4) {
    print('$suhu derajat Fahrenheit = ${(suhu - 32) * 4 / 9} derajat Reamur');
  } else if (input == 3 && output == 1) {
    print('$suhu derajat Kelvin = ${suhu - 273.15} derajat Celcius');
  } else if (input == 3 && output == 2) {
    print(
        '$suhu derajat Kelvin = ${(suhu - 273.15) * 9 / 5 + 32} derajat Fahrenheit');
  } else if (input == 3 && output == 3) {
    print('$suhu derajat Kelvin = $suhu derajat Kelvin');
  } else if (input == 3 && output == 4) {
    print('$suhu derajat Kelvin = ${(suhu - 273.15) * 4 / 5} derajat Reamur');
  } else if (input == 4 && output == 1) {
    print('$suhu derajat Reamur = ${suhu * 5 / 4} derajat Celcius');
  } else if (input == 4 && output == 2) {
    print('$suhu derajat Reamur = ${suhu * 9 / 4 + 32} derajat Fahrenheit');
  } else if (input == 4 && output == 3) {
    print('$suhu derajat Reamur = ${suhu * 5 / 4 + 273.15} derajat Kelvin');
  } else if (input == 4 && output == 4) {
    print('$suhu derajat Reamur = $suhu derajat Reamur');
  } else {
    print('Inputan tidak valid');
  }
}

  // stdout.write('Masukkan suhu dalam Fahrenheit: ');
  // double fahrenheit = double.parse(stdin.readLineSync()!);

  // double celcius = (fahrenheit - 32) * 5 / 9;
  // print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius');

  // double kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;
  // print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin');

  // double reamur = (fahrenheit - 32) * 4 / 9;
  // print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');