import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'about.dart';
import 'announcement.dart';

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  int updatedNumber = 100;

  @override
  void initState() {
    super.initState();
    // Start updating the number every 5 seconds
    Timer.periodic(Duration(seconds: 5), (timer) {
      // Call a function to fetch the updated number from your backend
      // Replace this logic with your actual backend integration
      fetchUpdatedNumber().then((int number) {
        setState(() {
          updatedNumber = number;
        });
      }).catchError((error) {
        print('Error fetching updated number: $error');
      });
    });
  }

  Future<int> fetchUpdatedNumber() async {
    await Future.delayed(Duration(seconds: 2));
    return updatedNumber + 1;
  }

  String getSvgStringWithUpdatedNumber() {
    return '''
      <svg width="238" height="200" viewBox="0 0 238 200" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M71.4 200V177.778H23.8C17.2551 177.778 11.65 175.6 6.98532 171.244C2.32061 166.889 -0.00791294 161.659 2.0202e-05 155.556V22.2222C2.0202e-05 16.1111 2.33251 10.8778 6.99722 6.52224C11.6619 2.16668 17.2631 -0.00738854 23.8 1.88644e-05H214.2C220.745 1.88644e-05 226.35 2.1778 231.015 6.53335C235.679 10.8889 238.008 16.1185 238 22.2222V155.556C238 161.667 235.668 166.9 231.003 171.256C226.338 175.611 220.737 177.785 214.2 177.778H166.6V200H71.4ZM23.8 155.556H214.2V22.2222H23.8V155.556Z" fill="white"/>
        <text x="119" y="100" dominant-baseline="middle" text-anchor="middle" fill="white" font-size="16">
          $updatedNumber
        </text>
      </svg>
    ''';
  }

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
                      color: Color.fromARGB(255, 0, 35, 87),
                    ),
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
                      color: Color.fromARGB(255, 0, 35, 87),
                    ),
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
            // Display the updated SVG with the number
            Center(
              child: SvgPicture.string(
                getSvgStringWithUpdatedNumber(),
              ),
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
