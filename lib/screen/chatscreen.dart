import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsup_colne/screen/model/chatsScreen_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
  
        itemCount: dummyData.length,
        itemBuilder: (context, index) => new Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundImage: NetworkImage(dummyData[index].AvatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dummyData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(dummyData[index].time,style: TextStyle(fontSize: 14.0),),
                    ],
                  ),
                  subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        dummyData[index].message,
                      )),
                ),
              ],
            ));
  }
}
