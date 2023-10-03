import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOfRow extends StatelessWidget {
  final String text;
  final bool active;
  const ButtonOfRow({super.key, required this.text, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: active ? Colors.black : Colors.grey.withOpacity(1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 18,
        ),
        child: active
            ? Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
      ),
    );
  }
}
