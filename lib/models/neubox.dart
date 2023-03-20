import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25),
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
      child: Center(
        child: child,
      ),
    );
  }
}