import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ismart_apps/modules/login/login_screen.dart';
import 'package:ismart_apps/shared/colors/colors.common.dart';
import 'package:ismart_apps/shared/components/componets.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image(
             image: AssetImage('assets/images/main_logo.png'),
           ),
            SizedBox(
              height: 100,
            ),
            defaultButton(
              text: 'Login',
              function: (){
                navigateTo(context, LoginScreen());
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            defaultButton(
              text: 'register',
              function: (){},
            ),

            Container(
            ),
            SizedBox(
              height: 40.0,
            ),
            captionText('Or Login with'),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage('assets/images/facebook.png'),
                    height: 22.0,
                    width: 22.0,
                    color: Colors.white,
                ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: defaultColor,
                  child: Image(
                    image: AssetImage('assets/images/google.png'),
                    height: 22.0,
                    width: 22.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}