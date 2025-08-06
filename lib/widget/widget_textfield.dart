import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isNumber;
  final String labelText;
  final Color labelColor;
  final bool pass;
  const MyTextField({super.key, required this.textEditingController, required this.labelText, required this.labelColor, required this.pass, required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber ? [
           FilteringTextInputFormatter.digitsOnly,
        ] : [],
        decoration: InputDecoration(label: Text(labelText)),
        controller: textEditingController,
      ),
    );
  }
}