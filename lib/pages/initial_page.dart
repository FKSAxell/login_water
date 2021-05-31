import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
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
            child: CustomPaint(
              painter: _HeaderWavePainter(),
            ),
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

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz.color = Color(0xff0059d4); //Colors.yellow; //Color(0xff0059d4);
    lapiz.style = PaintingStyle.fill; //.fill rellenar
    lapiz.strokeWidth = 4;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.moveTo(size.width * 0.25, 0);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.15,
      size.width * 0.55,
      size.height * 0.20,
    );
    path.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.23,
      size.width * 0.85,
      size.height * 0.30,
    );
    path.quadraticBezierTo(
      size.width * 0.90,
      size.height * 0.40,
      size.width * 0.80,
      size.height * 0.44,
    );
    path.quadraticBezierTo(
      size.width * 0.68,
      size.height * 0.49,
      size.width * 0.52,
      size.height * 0.43,
    );
    path.quadraticBezierTo(
      size.width * 0.24,
      size.height * 0.30,
      size.width * 0.0,
      size.height * 0.35,
    );
    path.lineTo(0, size.height * 0.55);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.48,
      size.width * 0.50,
      size.height * 0.60,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.72,
      size.width,
      size.height * 0.60,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.25, 0);
    canvas.drawPath(path, lapiz);

    final lapiz2 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz2.color = Colors.yellow; //Colors.yellow; //Color(0xff006bff);
    lapiz2.style = PaintingStyle.stroke; //.fill rellenar
    lapiz2.strokeWidth = 3;

    final path2 = new Path();
    path2.moveTo(size.width * 0.61, size.height * 0.04);
    path2.quadraticBezierTo(
      size.width * 0.62,
      size.height * 0.02,
      size.width * 0.65,
      size.height * 0.04,
    );
    path2.quadraticBezierTo(
      size.width * 0.64,
      size.height * 0.06,
      size.width * 0.61,
      size.height * 0.04,
    );
    canvas.drawPath(path2, lapiz2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
