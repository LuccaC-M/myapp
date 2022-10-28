import 'package:flutter/material.dart';
import 'settingspage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, World'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Hello World Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () { Navigator.push( context, MaterialPageRoute(builder: (conterx) => SettingsPage()),); },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { setState (() { print('Hello world');}); },
        child: Icon(Icons.add),
      ),
    );
  }
}
