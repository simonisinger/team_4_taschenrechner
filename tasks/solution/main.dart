// Gruppenprojekt: Taschenrechner als Konsolenprogramm

import 'dart:io';

void main() {
  // Frage den Benutzer nach der ersten Zahl und speichere sie.
  // Tipp: Nutze stdin.readLineSync() und double.parse().
  print('Bitte gib die erste Zahl ein');
  String? firstNumberString = stdin.readLineSync();
  if (firstNumberString == null) {
    print('Keine Angabe');
    exit(1);
  }
  firstNumberString = firstNumberString.replaceAll(',', '.');
  double? firstNumber = double.tryParse(firstNumberString);
  if (firstNumber == null) {
    print('Keine gültige Dezimalzahl');
    exit(1);
  }
  // Frage den Benutzer nach der zweiten Zahl und speichere sie.

  print('Bitte gib die zweite Zahl ein');
  String? secondNumberString = stdin.readLineSync();
  if (secondNumberString == null) {
    print('Keine Angabe');
    exit(2);
  }
  secondNumberString = secondNumberString.replaceAll(',', '.');
  double? secondNumber = double.tryParse(secondNumberString);
  if (secondNumber == null) {
    print('Keine gültige Dezimalzahl');
    exit(3);
  }

  // Frage den Benutzer nach der gewünschten Rechenart (+, -, *, /).

  print('Bitte gib den Operator ein');
  String? operator = stdin.readLineSync();
  if (operator == null) {
    print('Es wurde kein Operator angegen');
    exit(4);
  }

  double result = 0;
  if (operator == '+') {
    result = firstNumber + secondNumber;
  } else if (operator == '-') {
    result = firstNumber - secondNumber;
  } else if (operator == '*') {
    result = firstNumber * secondNumber;
  } else if (operator == '/') {
    result = firstNumber / (secondNumber == 0 ? 1 : secondNumber);
  } else {
    print('Ungültiger Operator');
    exit(5);
  }

  print("Ergebnis: $result");


  // Führe die entsprechende Berechnung basierend auf der Eingabe des Benutzers durch.
  // Tipp: Nutze if/else-Strukturen, um die gewählte Rechenart zu überprüfen.

  // Gib das Ergebnis der Berechnung aus.

  // Erweiterung: Speichere die Berechnung und das Ergebnis in einer Liste, um eine History zu führen.
  // Tipp: Verwende eine List<String>, um die Berechnungen zu speichern.
}
