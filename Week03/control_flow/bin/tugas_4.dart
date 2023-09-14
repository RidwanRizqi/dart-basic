import 'dart:io';

main() {
  stdout.write('Masukkan bilangan 1 : ');
  int bilangan1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan bilangan 2 : ');
  int bilangan2 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan operator : ');
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print('$bilangan1 + $bilangan2 = ${bilangan1 + bilangan2}');
      break;
    case '-':
      print('$bilangan1 - $bilangan2 = ${bilangan1 - bilangan2}');
      break;
    case '*':
      print('$bilangan1 * $bilangan2 = ${bilangan1 * bilangan2}');
      break;
    case '/':
      print('$bilangan1 / $bilangan2 = ${bilangan1 / bilangan2}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}
