import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart';
class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatsdata.length,
        itemBuilder: (context,i)=> new Column(
          children: [
            new Divider(height: 0.1),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatsdata[i].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(chatsdata[i].name,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                  new Text(chatsdata[i].time,style: TextStyle(fontSize: 11.0 , color: Colors.grey),)
                ],
              ),
              subtitle: Text(chatsdata[i].msg, style: TextStyle(color: Colors.grey , fontSize: 11.0),),
            ),
          ],
        ));
  }
}
