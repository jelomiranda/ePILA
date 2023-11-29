import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 20,
                  width: 20,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                        ),
                        color: Color.fromARGB(255, 0, 35, 87)),
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 20,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                        ),
                        color: Color.fromARGB(255, 0, 35, 87)),
                  ),
                ),
              ],
            ),
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
              height: 40,
            ),
            Center(
              child: SvgPicture.asset('assets/update_icon.svg'),
            ),
            const SizedBox(
              height: 40,
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
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align buttons in the center
              children: [
                Container(
                  height: 42,
                  width: 145,
                  margin: EdgeInsets.only(
                      right: 10), // Adjust spacing between buttons
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(230, 72, 10, 1),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Announcement(),
                        ),
                      );
                    },
                    child: const Text(
                      'ANNOUNCEMENTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 42,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const About(),
                        ),
                      );
                    },
                    child: const Text(
                      'About ePILA',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 35, 87),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
