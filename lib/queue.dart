import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Queue extends StatelessWidget {
  const Queue({Key? key});

  @override
  Widget build(BuildContext context) {
    final TabController tabController = DefaultTabController.of(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                _buildColoredContainer(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                ),
                Expanded(child: SizedBox()),
                _buildColoredContainer(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60)),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: SvgPicture.asset('assets/queue_icon.svg'),
              ),
            ),
            SizedBox(height: 50),
            _buildTextButton(
              onPressed: () {
                tabController.animateTo(1);
              },
              text: 'GENERATE eTICKET',
              buttonColor: Color.fromRGBO(205, 173, 89, 1),
              textColor: Color.fromARGB(255, 0, 35, 87),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildColoredContainer({
    required Color color,
    required BorderRadiusGeometry borderRadius,
  }) {
    return Container(
      color: color,
      height: 20,
      width: 20,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Color.fromARGB(255, 0, 35, 87),
        ),
      ),
    );
  }

  Container _buildTextButton({
    required VoidCallback onPressed,
    required String text,
    required Color buttonColor,
    required Color textColor,
  }) {
    return Container(
      height: 42,
      width: 155,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
