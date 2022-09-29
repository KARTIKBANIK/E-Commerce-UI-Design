import 'package:e_commerce_app/Model/details.dart';
import 'package:e_commerce_app/Model/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderHH extends StatefulWidget {
  const SliderHH({super.key});

  @override
  State<SliderHH> createState() => _SliderHHState();
}

class _SliderHHState extends State<SliderHH> {
  List<Details> details = Utils.getMokedDetails();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 17, 16, 16),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: details.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      details[index].title,
                      style: GoogleFonts.dmSans(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      details[index].subtitle,
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      details[index].about,
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(details[index].imgName),
            ]),
          );
        },
      ),
    );
  }
}
