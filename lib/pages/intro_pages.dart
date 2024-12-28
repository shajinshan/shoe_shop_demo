import 'package:api_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 240, 240),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //tittle
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "images/logo.png",
                  height: 260,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              //Tittle Text
              const Text(
                "Just Do It",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              //subtitle

              const Text(
                "Brand new Sneakers and custom kicks made with premium quality",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 123, 123, 123)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 44,
              ),

              //button
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
