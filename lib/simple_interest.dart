import 'dart:io';

double calculateSimpleInterest({required double principal, required double rate, required double time}) {
  // Formula for simple interest: SI = (P * R * T) / 100
  return (principal * rate * time) / 100;
}

void main() {
  print("Enter P:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter I:");
  double i = double.parse(stdin.readLineSync()!);

  print("Enter T:");
  double t = double.parse(stdin.readLineSync()!);

  double simpleInterest = calculateSimpleInterest(principal: p, rate: i, time: t);

  // Use string interpolation for output
  print("The Simple Interest is: \$${simpleInterest.toStringAsFixed(2)}");
}
