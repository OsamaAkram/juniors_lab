import 'package:flutter/material.dart';
import 'package:ismart_apps/modules/register/register_screen.dart';
import 'package:ismart_apps/shared/components/componets.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              defaultTextForm(
                title: 'Email',
                hint: 'enter your email',
                controller: emailController,
                type: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultTextForm(
                title: 'Password',
                hint: 'enter your password',
                controller: passwordController,
                type: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultButton(
                  function: ()
                  {
                  },
                  text: 'login'),
              SizedBox(
                height: 20.0,
              ),
              defaultButton(
                  function: ()
                  {
                    navigateTo(context, RegisterScreen());
                  },
                  text: 'register'),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                  onTap: (){
                  print('Forget you password?');
                  },
                child: captionText('Forget you password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
