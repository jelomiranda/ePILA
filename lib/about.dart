import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 35, 87),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Image.asset('assets/about1.png'),
            ),
          ),
          SvgPicture.asset('assets/socials.svg'),
        ],
      ),
    );
  }
}
