import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://media-exp1.licdn.com/dms/image/C5103AQFPzh5LWhQuog/profile-displayphoto-shrink_200_200/0/1585603280628?e=1628121600&v=beta&t=JdxMr3rzYfKiIT9XtN4BPNTbM3Vo1KdnQR9FQl7j4Bg";
    return Drawer(
      child: Container(
        color: Colors.pink,
        child: ListView(children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                accountName: Text("Sandesh Rimal"),
                accountEmail: Text('rimal.sandesh11@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                )),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.white,
            ),
            title: Text(
              'Emailme',
              textScaleFactor: 1.4,
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
