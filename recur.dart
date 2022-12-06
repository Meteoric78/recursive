import 'dart:io';

int somatorio(int n) {
  if (n == 1) return n;
  return n + somatorio(n - 1);
}

double somatorioFra(double n) {
  if (n <= 1) return n;
  return (1/n) + somatorioFra(n - 1);
}

num powercsm(num x, num k) {
  if (k < 0) return (1/x) * powercsm(x, k + 1);
  if (k == 0) return 1;
  if (k == 1) return x;
  return x * powercsm(x, k - 1);
}

int tribonacci(int n) {
  if (n == 0) return 0;
  if (n == 1) return 0;
  if (n == 2) return 1;
  return tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3);
}

int pell(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return 2 * pell(n - 1) + pell(n - 2);
}

void main(List<String> arguments) {
  print("${somatorio(4)}");
  print("${somatorioFra(4)}");
  print("${powercsm(-4,-3)}");
  print("${tribonacci(4)}");
  print("${pell(4)}");
}
