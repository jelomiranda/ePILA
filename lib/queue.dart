import 'package:flutter/material.dart';

class Queue extends StatelessWidget {
  const Queue({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController tabController = DefaultTabController.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 35, 87),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 150.00),
              child: Center(
                child: Image.asset('assets/icon1.png'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 42,
              width: 155,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(205, 173, 89, 1),
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  tabController.animateTo(1);
                },
                child: const Text(
                  'GENERATE eTICKET',
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
      ),
    );
  }
}
