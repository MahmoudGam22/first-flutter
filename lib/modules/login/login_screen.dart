import 'package:firstproject/shared/components/components.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => LoginscreenState();
}

class LoginscreenState extends State<Loginscreen> {
  bool ispassword = true;

  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Text(
                    'login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultff(
                    controller: emailcontroller,
                    label: 'Email',
                    kType: TextInputType.emailAddress,
                    prefix: Icon(Icons.email),
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'email must not be null';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultff(
                      controller: passwordcontroller,
                      label: 'Password',
                      kType: TextInputType.visiblePassword,
                      prefix: Icon(Icons.lock),
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'password must not be null';
                        }
                        return null;
                      },
                      ispassword: ispassword,
                      suffix: ispassword? Icons.visibility:Icons.visibility_off,
                      suffixpressed: () {
                        setState(() {
                          ispassword=!ispassword;
                        });
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  defaultbutton(
                    text: 'login',
                    function: () {
                      if (formkey.currentState!.validate()) {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultbutton(
                    text: 'Regisiter',
                    function: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don\t have an account?',
                      ),
                      TextButton(
                          onPressed: () {}, child: Text('regisiter now')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
