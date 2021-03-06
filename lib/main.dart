import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/camera.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    primaryColor: new Color(0xff075e54),
    accentColor: new Color(0xff25d366),
  ),
  home: myApp(),
));
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this , initialIndex: 1)..addListener(() {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(
              icon: Icon(Icons.search , color: Colors.white,),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.more_vert , color: Colors.white,),
              onPressed: null),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
      ),
      body: new TabBarView(
          controller: _tabController,
          children:[
            new Camera(),
            new Chats(),
            new Status(),
            new Call(),
          ]),
      floatingActionButton: _tabController.index==0 ?
      FloatingActionButton(
        child: Icon(Icons.camera_alt,color: Colors.white,),
      ) :
    _tabController.index==1 ?
      FloatingActionButton(
        child: Icon(Icons.message,color: Colors.white,),
      ) :
    _tabController.index==2 ?
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 45.0,
            width: 45.0,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(Icons.edit,color: Colors.blueGrey,),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            child: Icon(Icons.camera_alt,color: Colors.white,),
          )
        ],
      )
        : FloatingActionButton(
      child: Icon(Icons.add_call,color: Colors.white,),
    )
    );
  }
}
