import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String name;
  const CustomText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    print('Texto se reconstruye......');
    return Text(
      name,
      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}

class CustomTextR extends StatelessWidget {
  const CustomTextR({super.key});

  @override
  Widget build(BuildContext context) {
    print('Texto se reconstruye......');
    return const Text(
      'Nombre',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}
