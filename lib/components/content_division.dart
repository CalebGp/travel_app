import 'package:travel_app/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFD2D2D2)),
      ),
    );
  }
}
