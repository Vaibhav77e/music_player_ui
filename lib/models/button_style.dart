import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final buttonVal;
  NewButton({required this.buttonVal});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            //color: Colors.red,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              // darker shadow from bottom right
              BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 15,
                  offset: const Offset(5, 5)),
              // lighter shadow from top left
              const BoxShadow(
                  color: Colors.white, blurRadius: 15, offset: Offset(-5, -5)),
            ]),
        child: buttonVal);
  }
}
