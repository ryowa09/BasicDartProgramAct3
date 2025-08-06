import 'dart:io';
void main() {
    print("Enter first number: ");
    double? num1 = double.tryParse(stdin.readLineSync()!);

    print("Enter second number: ");
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null) {
        print("Enter a number!");
        return;
    }

    double sum = num1 + num2;
    double difference = num1 - num2;
    double product = num1 * num2;
    String quotient;

    if (num2 != 0) {
        quotient = (num1 / num2).toStringAsFixed(2);
    }
    else {
        quotient = "Error (division by zero)";
    }

    print("--- Results ---");
    print("$num1 + $num2 = $sum");
    print("$num1 - $num2 = $difference");
    print("$num1 * $num2 = $product");
    print("$num1 / $num2 = $quotient");
}