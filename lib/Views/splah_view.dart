import 'package:flutter/material.dart';
import 'package:noteapp/Views/First_Page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 42,
          ),
          const Text(
            'Diary',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xff6C6ECE),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            'assets/fonts/images/kerfin7_nea_3162-removebg-preview-removebg-preview.png',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'My Diary',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              ' I always use this diary in my day to write impotant notes and my diaries.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6C6ECE),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                fixedSize: const Size(300, 60)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ));
            },
            child: const Text(
              'Write your Note',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
