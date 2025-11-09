import 'package:flutter/material.dart';
import 'package:sneaker_app/pages/home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 111, 124, 133),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // center everything vertically
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'lib/images/logo2.jpg',
                  height: 240,
                  color: const Color.fromARGB(255, 111, 124, 133).withOpacity(1.0),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              
              const SizedBox(height: 5),
              
              const Text(
                'Sneaker Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30, 
                  color: Colors.white,
                ),
              ),
              
              const SizedBox(height: 25),
              
              const Text(
                'Get yourself brand new sneakers with affordable prices!!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 48),

              // Shop Now Button
              SizedBox(
                width: 200, 
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                   MaterialPageRoute(builder: (context) => HomePage)),
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
