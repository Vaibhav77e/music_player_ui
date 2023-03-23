import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      height: 440,
      //width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[300],
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

      child: child,
    );
  }
}
