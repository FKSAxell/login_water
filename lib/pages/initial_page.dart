import 'package:flutter/material.dart';
import 'package:login_water/widgets/custom_button_widget.dart';

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
              CustomButton(
                text: 'Log in',
                textColor: Color(0xff006bff),
                color: Colors.white,
                onPressed: () {},
                side: BorderSide.none,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Sign up',
                textColor: Colors.white,
                color: Color(0xff006bff),
                onPressed: () {},
                side: BorderSide(color: Colors.white),
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

    lapiz.color = Color(0xff0059d4);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 4;

    final path = new Path();

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
      size.height * 0.52,
      size.width * 0.48,
      size.height * 0.62,
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

    lapiz2.color = Color(0xff006bff);
    lapiz2.style = PaintingStyle.fill;
    lapiz2.strokeWidth = 3;

    final path2 = new Path();
    path2.moveTo(size.width * 0.08, size.height * 0.48);

    path2.cubicTo(
      size.width * 0.08,
      size.height * 0.46,
      size.width * 0.15,
      size.height * 0.43,
      size.width * 0.15,
      size.height * 0.48,
    );
    path2.cubicTo(
      size.width * 0.15,
      size.height * 0.49,
      size.width * 0.10,
      size.height * 0.51,
      size.width * 0.08,
      size.height * 0.48,
    );

    canvas.drawPath(path2, lapiz2);

    final lapiz3 = Paint()..strokeCap = StrokeCap.round;

    lapiz3.color = Color(0xff006bff);
    lapiz3.style = PaintingStyle.fill;
    lapiz3.strokeWidth = 3;

    final path3 = new Path();
    path3.moveTo(size.width * 0.68, size.height * 0.59);
    path3.cubicTo(
      size.width * 0.69,
      size.height * 0.54,
      size.width * 0.88,
      size.height * 0.55,
      size.width * 0.86,
      size.height * 0.59,
    );
    path3.cubicTo(
      size.width * 0.85,
      size.height * 0.63,
      size.width * 0.68,
      size.height * 0.62,
      size.width * 0.68,
      size.height * 0.59,
    );

    canvas.drawPath(path3, lapiz3);

    final lapiz4 = Paint()..strokeCap = StrokeCap.round;

    lapiz4.color = Color(0xff0059d4);
    lapiz4.style = PaintingStyle.fill;
    lapiz4.strokeWidth = 3;

    final path4 = new Path();
    path4.moveTo(size.width * 0.55, size.height * 0.38);
    path4.cubicTo(
      size.width * 0.57,
      size.height * 0.32,
      size.width * 0.69,
      size.height * 0.32,
      size.width * 0.70,
      size.height * 0.39,
    );
    path4.cubicTo(
      size.width * 0.70,
      size.height * 0.45,
      size.width * 0.55,
      size.height * 0.42,
      size.width * 0.55,
      size.height * 0.38,
    );
    canvas.drawPath(path4, lapiz4);

    final lapiz5 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz5.color = Color(0xff006bff); //Colors.yellow; //Color(0xff006bff);
    lapiz5.style = PaintingStyle.fill; //.fill rellenar
    lapiz5.strokeWidth = 3;

    final path5 = new Path();
    path5.moveTo(size.width * 0.71, size.height * 0.12);
    path5.cubicTo(
      size.width * 0.74,
      size.height * 0.05,
      size.width * 0.94,
      size.height * 0.05,
      size.width * 0.92,
      size.height * 0.15,
    );
    path5.cubicTo(
      size.width * 0.90,
      size.height * 0.22,
      size.width * 0.68,
      size.height * 0.18,
      size.width * 0.71,
      size.height * 0.12,
    );
    path5.close();
    canvas.drawPath(path5, lapiz5);

    final lapiz6 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz6.color = Color(0xff006bff); //Colors.yellow; //Color(0xff006bff);
    lapiz6.style = PaintingStyle.fill; //.fill rellenar
    lapiz6.strokeWidth = 1;

    final path6 = new Path();
    path6.moveTo(size.width * 0.90, size.height * 0.27);
    path6.cubicTo(
      size.width * 0.91,
      size.height * 0.25,
      size.width * 0.95,
      size.height * 0.25,
      size.width * 0.96,
      size.height * 0.27,
    );
    path6.cubicTo(
      size.width * 0.96,
      size.height * 0.30,
      size.width * 0.90,
      size.height * 0.28,
      size.width * 0.90,
      size.height * 0.27,
    );

    path6.close();
    canvas.drawPath(path6, lapiz6);

    final lapiz7 = Paint()..strokeCap = StrokeCap.round;

    // Propiedades
    lapiz7.color = Color(0xff006bff); //Colors.yellow; //Color(0xff006bff);
    lapiz7.style = PaintingStyle.fill; //.fill rellenar
    lapiz7.strokeWidth = 1;

    final path7 = new Path();
    path7.moveTo(size.width * 0.60, size.height * 0.05);
    path7.cubicTo(
      size.width * 0.61,
      size.height * 0.03,
      size.width * 0.65,
      size.height * 0.03,
      size.width * 0.65,
      size.height * 0.05,
    );
    path7.cubicTo(
      size.width * 0.66,
      size.height * 0.08,
      size.width * 0.60,
      size.height * 0.06,
      size.width * 0.60,
      size.height * 0.05,
    );

    path7.close();
    canvas.drawPath(path7, lapiz7);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
