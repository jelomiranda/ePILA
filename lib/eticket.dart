import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class eTicket extends StatelessWidget {
  const eTicket({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildColoredRow(
              leftColor: Color.fromARGB(255, 255, 255, 255),
              rightColor: Colors.white,
            ),
            const SizedBox(height: 100),
            _buildText(
              text: 'This serves as your digital ticket.',
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            Center(
              child: SvgPicture.asset('assets/ticket_icon.svg'),
            ),
            _buildText(
              text: "Please present this to the Treasurer's",
              fontSize: 16,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
            _buildText(
              text: "Office's Staff before transaction.",
              fontSize: 16,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColoredRow({
    required Color leftColor,
    required Color rightColor,
  }) {
    return Row(
      children: [
        _buildColoredContainer(
          color: leftColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
        ),
        Expanded(child: SizedBox()),
        _buildColoredContainer(
          color: rightColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(60)),
        ),
      ],
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

  Widget _buildText({
    required String text,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle? fontStyle,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
