import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome, Taro',
            style: GoogleFonts.montserrat(
              fontSize: 28,
            ),
          ),
          Text(
            'Summer Collection 2022 is now available.',
            style: GoogleFonts.montserrat(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}