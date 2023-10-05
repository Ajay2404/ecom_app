import 'package:ecom_app/login_page.dart';
import 'package:ecom_app/signup_sucessful.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class signuppg extends StatefulWidget {
  const signuppg({Key? key}) : super(key: key);

  @override
  State<signuppg> createState() => _signuppgState();
}

class _signuppgState extends State<signuppg> {
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  bool check = false;
  bool passwordVisible = false;
  bool passwordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Image.asset('image/p5.png'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10, top: 30),
                child: Text("Sign Up",
                    // style: GoogleFonts.publicSans(
                    //     fontSize: 35, fontWeight: FontWeight.bold)
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text("Create an new account",
                // style: GoogleFonts.lato(
                //     color: Colors.grey,
                //     fontSize: 20,
                //     fontWeight: FontWeight.normal)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                // suffixIcon: IconButton(
                //     onPressed: () {}, icon: Icon(Icons.check_circle_rounded)),
                //icon: Icon(Icons.cancel))
                labelText: "User Name",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              obscureText: passwordVisible,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              obscureText: passwordVisible1,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible1
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible1 = !passwordVisible1;
                      },
                    );
                  },
                ),
                labelText: "Confirm Password",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Checkbox(
                    value: check,
                    onChanged: (value) {
                      setState(() {
                        check = value!;
                        if (check == true) {}
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text('''
By creating an account you have to agree 
with our them & condication.''',
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
              ),
            ],
          ),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return signup_sucess();
                    },
                  ));
                },
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
        ],
      ),
    );
  }
}
