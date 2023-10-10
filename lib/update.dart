import 'package:flutter/material.dart';
import 'about.dart';
import 'announcement.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Text(
              'NOW SERVING',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset('assets/icon3.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Get real-time queue updates!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 42,
              width: 145,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 72, 10, 1),
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Announcement()));
                },
                child: const Text(
                  'ANNOUNCEMENTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 42,
              width: 145,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
                child: const Text(
                  'About ePILA',
                  style: TextStyle(
                    color: Color.fromARGB(255, 16, 2, 143),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
