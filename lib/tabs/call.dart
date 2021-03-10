import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';
class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: calldata.length,
        itemBuilder: (context,i)=> new Column(
          children: [
            new Divider(height: 0.1),
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(calldata[i].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(calldata[i].name,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                 new Icon(
                     i%2==0 ?
                     Icons.tv : Icons.videocam , color: Theme.of(context).primaryColor,)
                ],
              ),
              subtitle: new Text(calldata[i].time , style: TextStyle(color: Colors.grey),),
            ),
          ],
        ));
  }
}
