import 'package:flutter/material.dart';
import 'package:whatsup_colne/screen/callscreen.dart';
import 'package:whatsup_colne/screen/chatscreen.dart';
import 'package:whatsup_colne/screen/statusscreen.dart';

class WhatsAppClone extends StatefulWidget {
  const WhatsAppClone({super.key});

  @override
  State<WhatsAppClone> createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whats App"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Icon(Icons.more_vert),
              ],
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Call",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: null,
            ),
            Center(
              child: ChatScreen(),
            ),
            Center(
              child: StatusSCreen(),
            ),
            Center(
              child: CallScreen(),
            )
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Colors.amber,
            child: new Icon(Icons.message),
            onPressed: () {
              Text("OPen chat");
              print("Open chat");
            }),
      ),
    );
  }
}
