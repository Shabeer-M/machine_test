import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnimationScreen extends StatefulWidget {
 const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _width = 200;
  double _height = 200;

  double? _updatestate() {
    setState(() {
      _width = 400;
      _height = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  _updatestate();
                },
                child: Text("Animation view"),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 900), decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg") )),
                curve: Curves.bounceOut,
                width: _width,
                height: _height,
                // color: Colors.white,
                // child: Center(
                //   child:Image.network("",fit:BoxFit.fitHeight ,)
                ),

            ],
          ),
      ),

    );
  }
}

