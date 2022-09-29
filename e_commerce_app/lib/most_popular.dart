import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPP extends StatefulWidget {
  const MostPP({super.key});

  @override
  State<MostPP> createState() => _MostPPState();
}

class _MostPPState extends State<MostPP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Most Popular",
              style: GoogleFonts.dmSans(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "See All",
              style: GoogleFonts.dmSans(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
