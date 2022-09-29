import 'package:e_commerce_app/Model/details.dart';
import 'package:e_commerce_app/Model/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories_Circle_Page extends StatefulWidget {
  const Categories_Circle_Page({super.key});

  @override
  State<Categories_Circle_Page> createState() => _Categories_Circle_PageState();
}

class _Categories_Circle_PageState extends State<Categories_Circle_Page> {
  List<Details> details = Utils.getMokedDetails();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'images/cloths.png',
                  ),
                ),
              ),
              Text(
                "Cloths",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'images/bag.png',
                  ),
                ),
              ),
              Text(
                "Bags",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Image.asset(
                    'images/elec.png',
                  ),
                ),
              ),
              Text(
                "Electronics",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'images/watch.png',
                  ),
                ),
              ),
              Text(
                "Watch",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'images/jualary.png',
                  ),
                ),
              ),
              Text(
                "Jewelry",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 215, 210, 210),
                radius: 40,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    'images/toys.png',
                  ),
                ),
              ),
              Text(
                "Toys",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
