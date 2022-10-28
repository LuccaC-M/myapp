import 'package:flutter/material.dart';
import 'homepage.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPage();
}
class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Settings'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red,),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24,),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () { Navigator.push( context, MaterialPageRoute(builder: (conterx) => HomePage()),);},
            ),
          ],
        ),
      ),
    );
  }
}
