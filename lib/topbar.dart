import 'package:flutter/material.dart';
import 'queue.dart';
import 'update.dart';
import 'eticket.dart';

class TopNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title: Image.asset("assets/epila-logo-appbarwhite.png"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "QUEUE",
                ),
                Tab(
                  text: "eTICKET",
                ),
                Tab(
                  text: "UPDATE",
                ),
              ],
              labelColor: Color.fromARGB(255, 192, 157, 0),
              unselectedLabelColor: Colors.black,
              indicatorColor: Color.fromARGB(255, 184, 150, 1),
            ),
          ),
          body: TabBarView(
            children: [
              Queue(),
              eTicket(),
              Update(),
            ],
          )),
    );
  }
}
