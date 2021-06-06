import 'package:flutter/material.dart';
import 'package:login_water/widgets/custom_button_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff006bff),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              height: size.height * 0.45,
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                text: 'Log in',
                textColor: Colors.white,
                color: Color(0xff006bff),
                onPressed: () {},
                side: BorderSide.none,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    indent: size.width * 0.075,
                    endIndent: size.width * 0.075,
                    thickness: 1,
                    color: Colors.grey,
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 20,
                    width: 30,
                    color: Colors.white,
                    child: Text(
                      "or",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
              CustomButton(
                text: 'Sign up',
                textColor: Colors.grey,
                color: Colors.white,
                onPressed: () {},
                side: BorderSide(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
