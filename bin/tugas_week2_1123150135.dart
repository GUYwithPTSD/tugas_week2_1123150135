import 'dart:io';

double _readNumber(String label) {
  while (true) {
    stdout.write('$label: ');
    final input = stdin.readLineSync();
    if (input == null) continue;
    final value = double.tryParse(input.trim());
    if (value != null) return value;
    print('Input tidak valid. Masukkan angka.');
  }
}

void main() {
  while (true) {
    print('\n=== Kalkulator Sederhana ===');
    print('Gunakan salah satu operator berikut: +, -, *, /');
    print('Ketik "exit" untuk keluar');
    stdout.write('Pilih operator: ');
    final pilih = stdin.readLineSync()?.trim();

    if (pilih == null || pilih.toLowerCase() == 'exit') {
      print('Bye!');
      return;
    }

    final a = _readNumber('Masukkan angka pertama');
    final b = _readNumber('Masukkan angka kedua');

    switch (pilih) {
      case '+':
        print('Hasil: ${a + b}');
        break;
      case '-':
        print('Hasil: ${a - b}');
        break;
      case '*':
        print('Hasil: ${a * b}');
        break;
      case '/':
        if (b == 0) {
          print('Error: Tidak bisa dibagi nol');
        } else {
          print('Hasil: ${a / b}');
        }
        break;
      default:
        print('Operator tidak dikenal.');
    }
  }
}
