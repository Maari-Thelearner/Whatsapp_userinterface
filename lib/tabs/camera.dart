import 'package:flutter/material.dart';
class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(Icons.camera_alt_outlined),
          Text('This is camera page only!')
        ],
      ),
    );
  }
}
