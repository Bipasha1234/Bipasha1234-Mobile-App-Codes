import 'dart:io';

String calculateBMI({required double weightKg, required double heightM}) {
  // Calculate BMI using the formula BMI = weight (kg) / height (m)^2
  double bmi = weightKg / (heightM * heightM);

  //  Determine the weight status based on the BMI ranges
  if (bmi < 18.5) {
    return "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Normal weight";
  } else if (bmi >= 25.0 && bmi <= 29.9) {
    return "Overweight";
  } else if (bmi >= 30.0 && bmi <= 34.9) {
    return "Obesity class I";
  } else if (bmi >= 35.0 && bmi <= 39.9) {
    return "Obesity class II";
  } else {
    return "Obesity class III";
  }
}

void main() {
  print("Enter your weight in kilograms (e.g., 70):");
  double weight = double.parse(
      stdin.readLineSync()!); // Read and parse user input for weight

  print("Enter your height in meters (e.g., 1.75):");
  double height = double.parse(
      stdin.readLineSync()!); // Read and parse user input for height

  //  Call the calculateBMI function with user inputs
  String status = calculateBMI(weightKg: weight, heightM: height);

  //  Display the calculated BMI status to the user
  print("Your BMI status is: $status");
}