import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;
  const CustomTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
