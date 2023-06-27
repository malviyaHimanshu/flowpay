import 'package:flutter/material.dart';
import 'show_webview.dart';
import 'package:blockies/blockies.dart';
class sideDrawer extends StatelessWidget {
  const sideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Blockies(
                        seed: 'himanshu',
                        size:8,
                      ),
                    ),
                    
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Himanshu",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            // decoration: BoxDecoration(
            //     border:
            //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
              leading: Icon(
                Icons.link,
                color: Colors.white,
              ),
              title: Text(
                'Website',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>MyWebView( selectedUrl: 'https://authentic-learning-668089.framer.app/')),
                );
                // Add your settings code here
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            // decoration: BoxDecoration(
            //     border:
            //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20)),
              leading: Icon(
                Icons.lock_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Change passcode',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your settings code here
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            // decoration: BoxDecoration(
            //     border:
            //         Border(bottom: BorderSide(color: Colors.grey, width: 1))),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
              leading: Icon(
                Icons.fingerprint,
                color: Colors.white,
              ),
              title: Text(
                'Sign in with Biometrics',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your settings code here
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              leading: Icon(
                Icons.wallet_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Connected wallets',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your settings code here
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              leading: Icon(
                Icons.network_check_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Network',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your settings code here
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
              leading: Icon(
                Icons.settings_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your settings code here
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              // shape: RoundedRectangleBorder(
              //     borderRadius:
              //         BorderRadius.vertical(top: Radius.circular(20))),
              leading: Icon(
                Icons.policy_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your help code here
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              minLeadingWidth: 20,
              tileColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add your help code here
              },
            ),
          ),
        ],
      ),
    );


  }
}
