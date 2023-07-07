import 'package:dots_app/login.dart';
import 'package:flutter/material.dart';
import 'package:dots_app/profile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.red,
      surfaceTintColor: Colors.black,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .03),
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // height: MediaQuery.of(context).size.height * .3,
            UserAccountsDrawerHeader(
              accountName: Text(
                'Mark Spooner',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'markspooner@.umd.edu',
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/mark.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => {
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Profile'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()))
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
