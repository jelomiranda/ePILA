import 'package:flutter/material.dart';

class eTicket extends StatelessWidget {
  const eTicket({super.key});

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
              'This serves as your digital ticket.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            Center(
              child: Image.asset('assets/icon2.png'),
            ),
            Text(
              "Please present this to the Treasurer's",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "Office's Staff before transaction.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
