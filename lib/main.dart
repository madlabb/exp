import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(EMICalculatorApp());
}


class EMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EMICalculatorScreen(),
    );
  }
}

class EMICalculatorScreen extends StatefulWidget {
  @override
  _EMICalculatorScreenState createState() => _EMICalculatorScreenState();
}

class _EMICalculatorScreenState extends State<EMICalculatorScreen> {
  double principalAmount = 0;
  double interestRate = 0;
  int loanTenure = 0;
  double emiAmount = 0;

  void calculateEMI() {
    double monthlyInterestRate = (interestRate / 12) / 100;
    int numberOfMonths = loanTenure * 12;
    double numerator = principalAmount * monthlyInterestRate * pow(1 + monthlyInterestRate, numberOfMonths);
    double denominator = pow(1 + monthlyInterestRate, numberOfMonths) - 1;
    emiAmount = numerator / denominator;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EMI Calculator'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[300]!,
              Colors.blue[800]!,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Principal Amount',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    principalAmount = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Interest Rate (%)',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    interestRate = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Loan Tenure (years)',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    loanTenure = int.parse(value);
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  calculateEMI();
                  setState(() {});
                },
                child: Text('Calculate'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue[900],
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'EMI Amount: ₹${emiAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}