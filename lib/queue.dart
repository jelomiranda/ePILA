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
                  color: Color.fromRGBO(153, 131, 3, 1),
                  borderRadius: BorderRadius.circular(13)),
              child: TextButton(
                onPressed: () {
                  tabController.animateTo(1);
                },
                child: const Text(
                  'GENERATE eTICKET',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 50, 122),
                    fontSize: 14,
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
