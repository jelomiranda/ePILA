import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 200,
            ),
            Text(
              'ANNOUNCEMENTS',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 35, 87),
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset('assets/sample1.png'),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
