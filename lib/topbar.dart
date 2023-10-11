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
                Image.asset("assets/ePILA.png", width: 200, height: 200),
                Expanded(child: SizedBox()),
                Image.asset("assets/close.png", width: 30, height: 30),
                SizedBox(
                  width: 15,
                )
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
