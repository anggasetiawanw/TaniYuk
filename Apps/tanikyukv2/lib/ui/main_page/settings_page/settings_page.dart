import 'package:flutter/material.dart';
import 'package:tanikyukv2/services/auth_firebase.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: Text("Sign Out"),
          onPressed: () async {
            await AuthServices.signOut();
          },
        ),
      ),
    );
  }
}
