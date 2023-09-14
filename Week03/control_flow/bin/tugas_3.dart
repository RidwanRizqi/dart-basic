import 'dart:io';

main() {
  int i = 10;
  while (i >= 1) {
    int j = 0;
    while (j < i) {
      stdout.write('* ');
      j++;
    }
    stdout.write('\n');
    i--;
  }
}
