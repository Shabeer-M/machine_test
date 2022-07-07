import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machinetest/view/homepage.dart';
import 'package:machinetest/view/widgets/custButton.dart';
import 'package:machinetest/view/widgets/customText.dart';
import 'package:machinetest/view/widgets/signUp.dart';
import 'package:sizer/sizer.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController value = TextEditingController();
  TextEditingController value1 = TextEditingController();
 

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(5.w),
        child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 10.h,
                width: 10.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://cdn.dribbble.com/users/24078/screenshots/15522433/media/e92e58ec9d338a234945ae3d3ffd5be3.jpg?compress=1&resize=400x300"))
                ),
                ),
                SizedBox(height: 2.h,),
                PurpleTokoTextWidget(),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                    validator: (value) {},
                    textinputaction: TextInputAction.next,
                    textinputtype: TextInputType.emailAddress,
                    obscure: false,
                    controller:value ,
                    hinttext: "Email",
                    labeltext: "Email"),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                    validator: (value) {},
                    textinputaction: TextInputAction.done,
                    textinputtype: TextInputType.name,
                    obscure: true,
                    controller: value1,
                    hinttext: "Passowrd",
                    labeltext: "Password"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Forgot Password?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),

                //SizedBox(height: 15,),
                Button(
                  ontap: () {
                  if(value.text==value1.text){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  }
                    
                  },
                ),

                const SizedBox(
                  height: 25,
                ),
                const Text("or sign in using"),
                const SizedBox(
                  height: 15,
                ),

                const RegisterDontHaveAccount()
              ],
            )

        ),
      )
  );
  }

  RichText PurpleTokoTextWidget() {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "L",
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.purple)),
        TextSpan(
            text: "ogin",
            style: TextStyle(fontSize: 13.sp, color: Colors.black)),
        TextSpan(
            text: "S",
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.purple)),
        TextSpan(
            text: "creen",
            style: TextStyle(fontSize: 13.sp, color: Colors.black)),
      ]),
    );
  }
}
