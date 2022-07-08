import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: screenSize.width,
              height: screenSize.height * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenSize.width * 0.2,
                    height: screenSize.width * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Divider(),
                  Text(
                    "Add Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.5,
                    child: ListTile(
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: Text("Manage Profiles"),
                      leading: Icon(Icons.edit),
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              selected: true,
              selectedTileColor: Colors.grey[800],
              selectedColor: Colors.white,
              title: Text("Notifications"),
              leading: Icon(Icons.notifications),
            ),
            Divider(height: 2),
            ListTile(
              selected: true,
              selectedTileColor: Colors.grey[800],
              selectedColor: Colors.white,
              title: Text("List"),
              leading: Icon(Icons.check),
            ),
            Divider(height: 2),
            Container(
              color: Colors.grey[800],
              height: screenSize.height * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "App Settings",
                        style: TextStyle(color: Colors.white),
                      )),
                  Divider(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Account",
                        style: TextStyle(color: Colors.white),
                      )),
                  Divider(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Help",
                        style: TextStyle(color: Colors.white),
                      )),
                  Divider(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
