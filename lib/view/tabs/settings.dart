import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({Key? key}) : super(key: key);

  @override
  State<Settings_screen> createState() => _Settings_screenState();
}

class _Settings_screenState extends State<Settings_screen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Container(
        margin:EdgeInsets.only(top: 15),
          color: Colors.black,
          child: Column(
            children: [
              ListTile(
                leading:
                const Icon(Icons.notifications, color: violetcolor),
                title: const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                trailing: IconButton(
                    icon:  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ), onPressed: () {  },
                )

              ),
              ListTile(
                leading: const Icon(
                  Icons.share,
                  color: violetcolor,
                ),
                onTap: () {

                },
                title: const Text(
                  'Share The App',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.lock,
                  color: violetcolor,
                ),
                onTap: () {},
                title: const Text(
                  'Privacy Policies',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.receipt,
                  color: violetcolor,
                ),
                title: Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: violetcolor,
                ),
                onTap: () => showAboutDialog(
                    context: context,
                    applicationName: 'Demo',
                    applicationVersion: '1.0',
                    children: [
                      Text(
                          "         DemoApp  Created by Shabeer M."),
                    ]),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const SizedBox(height: 250),
            ],
          ),

      ),
    );
  }
}