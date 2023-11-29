import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                child: SvgPicture.asset('assets/announcement-board.svg'),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
