import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonTitle;
  final Color buttonColor;
  final VoidCallback buttonOnPress;

  const CalculatorButton({
    super.key,
    required this.buttonTitle,
    this.buttonColor = Colors.white,
    required this.buttonOnPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonOnPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ], color: buttonColor, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
