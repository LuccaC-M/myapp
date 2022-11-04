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

// thanks to mobikul.com for the code
class ThemeClass{

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red,
    )
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      )
  );
}
// thanks for flutter.dev for the code
class Switched extends StatefulWidget {
  const Switched({super.key});

  @override
  State<Switched> createState() => _SwitchedState();
}

class _SwitchedState extends State<Switched> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
