import 'package:flutter/material.dart';
import 'package:tes_flutter/pages/calculator_page.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return CalculatorPage(); // langsung load kalkulator
  }
}
