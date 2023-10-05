import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class loginpg extends StatefulWidget {
  const loginpg({Key? key}) : super(key: key);

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  bool _obscureText = true;
  late String _password;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image.asset('image/p5.png'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10),
                child: Text("Welcome!",
                    // style: GoogleFonts.publicSans(
                    //     fontSize: 35, fontWeight: FontWeight.w900)
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text("please login or sign up to continue our app",
                // style: GoogleFonts.lato(color: Colors.grey,
                //     fontSize: 20, fontWeight: FontWeight.normal)
            ),
          ),
          SizedBox(height: 65),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: _obscureText,
              style: TextStyle(fontSize: 20, color: Colors.grey),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 60),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "    ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯  ",
                style: TextStyle(color: Colors.grey),
              ),
              Text("or", style: TextStyle(fontSize: 20)),
              Text(
                "   ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯  ",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Material(
            color: Color(0xff4267b2),
            borderRadius: BorderRadius.circular(30),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90, right: 09),
                      child: Ink.image(
                        image: AssetImage(
                          "image/fblogo.png",
                        ),
                        height: 20,
                        width: 20,
                        fit: BoxFit.cover,
                        // child: Center(
                        //
                        // ),
                      ),
                    ),
                    SizedBox(
                      // width: 5,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 60,
                      ),
                      child: Text(
                        textAlign: TextAlign.left,
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90, right: 09),
                        child: Ink.image(
                          image: AssetImage(
                            "image/googlelogo.jpeg",
                          ),
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        // width: 5,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 60,
                        ),
                        child: Text(
                          textAlign: TextAlign.left,
                          'Continue with Google      ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90, right: 09),
                        child: Ink.image(
                          image: AssetImage(
                            "image/applelogo.png",
                          ),
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        // width: 5,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 60,
                        ),
                        child: Text(
                          textAlign: TextAlign.left,
                          'Continue with Apple       ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
