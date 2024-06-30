import 'dart:math';

double _logBase(num x, num base) => log(x) / log(base);
double log2(num x) => _logBase(x, 2);

double calculate(int L, int R) => R * log2(L);
