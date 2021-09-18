import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text('Saved')),
        ],
      ),
    );
  }
}
