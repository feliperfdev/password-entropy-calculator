import 'dart:io';

import 'package:password_entropy_calculator/password_entropy_calculator.dart';

void main(List<String> arguments) {
  late int L, R;
  if (arguments.isNotEmpty && arguments.length == 2) {
    L = int.tryParse(arguments.first) ?? 0;
    R = int.tryParse(arguments.last) ?? 0;
  } else {
    print('How many unique characters there are in your password? ');
    L = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
    print(
        'How many TOTAL characters there are in your password // Password length? ');
    R = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
  }
  final result = (L == 0 || R == 0) ? 0 : calculate(L, R);

  print("\nPassword entropy: ${result.floorToDouble()} bits.");
}
