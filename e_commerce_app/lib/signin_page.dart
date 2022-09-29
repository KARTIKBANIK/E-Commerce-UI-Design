import 'package:e_commerce_app/homepage.dart';
import 'package:e_commerce_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailCOntroller = TextEditingController();

  String password = "";
  bool isPasswordVisible = false;

  //emailcontroller crossbutton
  @override
  void initState() {
    super.initState();
    _emailCOntroller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white.withOpacity(0.5),
      body:

//BACKGROUND IMAGES CODE.......
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("images/bg.png"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          //   child:
//BACKGROUND IMAGES CODE.......
          Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 25,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 65,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: Image(
                  image: AssetImage("images/logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign In",
              style: GoogleFonts.dmSans(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 22,
            ),
            buildEmail(),
            SizedBox(
              height: 22,
            ),
            buildPassword(),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forget Password",
                    style: GoogleFonts.dmSans(),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      SignUp(),
                    );
                  },
                  child: Text(
                    "Don't have account ? Sign Up",
                    style: GoogleFonts.dmSans(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),

            //Button...
            GestureDetector(
              onTap: () {
                Get.to(
                  HomePage(),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: Text(
                    "Log In",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 2,
                    width: 5,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("OR"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 2,
                    width: 5,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      child: CircleAvatar(
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue,
                          ),
                        ),
                        radius: 24,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      child: CircleAvatar(
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.amber,
                          ),
                        ),
                        radius: 24,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      child: CircleAvatar(
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.instagram),
                        ),
                        radius: 24,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // ),
    );
  }

//Email Feild
  Widget buildEmail() => TextField(
        controller: _emailCOntroller,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "name@example.com",
          prefixIcon: Icon(Icons.mail),
          suffixIcon: _emailCOntroller.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () => _emailCOntroller.clear(),
                  icon: Icon(Icons.close),
                ),
          border: OutlineInputBorder(),
        ),
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
      );

//Password Feild
  Widget buildPassword() => TextField(
        obscureText: isPasswordVisible,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Your Password...",
          labelText: "Password",
          // errorText: "Password is wrong",
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
          ),
        ),
      );
}
