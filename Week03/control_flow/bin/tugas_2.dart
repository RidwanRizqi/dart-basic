import 'dart:io';

main() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }
}
