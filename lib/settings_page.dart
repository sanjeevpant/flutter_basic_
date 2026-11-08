import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.back_hand) ,
            title: Text("Back To home"),
            onTap: (){
              if (Navigator.canPop(context)){
                Navigator.pop(context);
              }
            }
          ),
          ListTile(
              leading: Icon(Icons.apartment) ,
              title: Text("Hello Sanjeev this is Settings Page")
          )
        ],
      ),
    );
  }
}
