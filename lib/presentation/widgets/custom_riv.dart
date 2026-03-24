import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CustomRiv extends StatelessWidget {
  final String rivUrl;
  final double? size;
  const CustomRiv({super.key, required this.rivUrl, this.size = 200});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size, child: RiveAnimation.asset(rivUrl));
  }
}
