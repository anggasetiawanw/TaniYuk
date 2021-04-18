import 'package:flutter/material.dart';

class NotConnected extends StatefulWidget {
  @override
  _NotConnectedState createState() => _NotConnectedState();
}

class _NotConnectedState extends State<NotConnected> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("NOT CONNECTED")),
    );
  }
}
