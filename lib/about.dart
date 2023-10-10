import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset('assets/sample2.png'),
            ),
            const SizedBox(
              height: 98,
            ),
            Center(
              child: Image.asset('assets/bottombar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
