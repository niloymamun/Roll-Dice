// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StylingText extends StatelessWidget {
  const StylingText({
    Key? key,
    required this.nameText,
  }) : super(key: key);
  final String nameText;
  @override
  Widget build(context) {
    return Text(
      nameText,
      style: const TextStyle(
          fontSize: 28, color: Colors.white, fontStyle: FontStyle.normal),
    );
  }
}
