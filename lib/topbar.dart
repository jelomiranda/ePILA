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
            title: Row(
              children: [
                Image.asset("assets/epila-logo.png", width: 100, height: 100),
                Expanded(child: SizedBox()),
              ],
            ),
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
              labelColor: Color.fromRGBO(205, 173, 89, 1),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black,
              indicatorColor: Color.fromRGBO(205, 173, 89, 1),
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
