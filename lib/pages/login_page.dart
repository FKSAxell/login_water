import 'package:flutter/material.dart';

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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 40,
                  left: 40,
                  bottom: 10,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Water delivery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 40,
                  left: 40,
                  bottom: 45,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'We deliver water at any point of the Earth in 30 minutos',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                color: Colors.white,
                minWidth: size.width - 80,
                height: 45,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(color: Color(0xff006bff), fontSize: 18),
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                splashColor: Colors.transparent,
                color: Color(0xff006bff),
                minWidth: size.width - 80,
                height: 45,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6),
                  side: BorderSide(color: Colors.white),
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
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
