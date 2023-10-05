import 'package:flutter/material.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 0,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD2D2D2)),
      ),
    );
  }
}
