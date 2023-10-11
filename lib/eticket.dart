import 'package:flutter/material.dart';

class eTicket extends StatelessWidget {
  const eTicket({super.key});

/* Authored by: Amethyst Claudia M. Moran, Jelo Miranda, & Jamie Marie Jarme
Company: Nexus
Project: ePILA
Feature: [ePILA-001] Queue Management
Description: This feature will provide a sophisticated queuing 
mechanism, allowing users to reserve their spot in the queue and 
generate eTICKETs.
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 20,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                        ),
                        color: Color.fromARGB(255, 14, 29, 97)),
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
                        color: Color.fromARGB(255, 14, 29, 97)),
                  ),
                ),
              ],
            ),
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
