import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ETicket extends StatefulWidget {
  const ETicket({Key? key}) : super(key: key);

  @override
  _ETicketState createState() => _ETicketState();
}

class _ETicketState extends State<ETicket> {
  int ticketNumber = 0;

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
              text: '$ticketNumber',
              fontSize: 100,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
            Center(
              child: SvgPicture.asset('assets/ticket_icon.svg'),
            ),
            _buildText(
              text: "This serves as your digital ticket.",
              fontSize: 16,
              fontWeight: FontWeight.w200,
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
            ElevatedButton(
              onPressed: () {
                _generateETicket();
              },
              child: const Text('Generate eTicket'),
            ),
          ],
        ),
      ),
    );
  }

  void _generateETicket() {
    setState(() {
      ticketNumber++; // Increment the ticket number
    });
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
    Color color = Colors.white, // Add missing parameter 'color'
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
