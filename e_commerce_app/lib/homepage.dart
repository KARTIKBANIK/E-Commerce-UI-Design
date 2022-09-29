import 'package:e_commerce_app/categories_circle.dart';
import 'package:e_commerce_app/most_popular.dart';
import 'package:e_commerce_app/slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/profile.jpg"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning👋",
                          style: GoogleFonts.dmSans(
                              fontSize: 20, color: Colors.grey),
                        ),
                        Text(
                          "Anderw Ainsle",
                          style: GoogleFonts.dmSans(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_active,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.favorite,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here....",
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIcon: Icon(
                        Icons.rate_review,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Special Offers",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SliderHH(),
                SizedBox(
                  height: 20,
                ),
                Categories_Circle_Page(),
                SizedBox(
                  height: 20,
                ),
                MostPP()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
