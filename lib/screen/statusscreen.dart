// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:whatsup_colne/screen/model/chatsScreen_model.dart';

class StatusSCreen extends StatefulWidget {
  const StatusSCreen({super.key});

  @override
  State<StatusSCreen> createState() => _StatusSCreenState();
}

class _StatusSCreenState extends State<StatusSCreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => new Column(
              children: [
                const Divider(
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
                      Text(
                        dummyData[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: new Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        
                        children: [
                          Text("yesterday"),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0)),
                          Text(
                            dummyData[index].time,
                          ),
                        ],
                      )),
                ),
              ],
            ));
  }
}
