import 'package:flutter/material.dart';
import 'login.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:  Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 40,right: 40,bottom: 40),
                child: Image.asset(
                  "assets/Logo/tenzkart.png",
                  height: 400,
                  width: 800,
                ),
              ),
              Text("TenzKart Online\n Store",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white ),),
              SizedBox(
                height: 10,
              ),
              Text("Best Gadgets is here",
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),),
              Spacer(),
              // get started button
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green ,
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Spacer()

            ],
          ),
        ),
      ),
    );
  }
}