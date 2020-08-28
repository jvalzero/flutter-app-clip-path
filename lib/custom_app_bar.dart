import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleText;

  CustomAppBar(this.titleText);

  @override
  Widget build(BuildContext context) {
    final background = Container(
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/header_app_background.jpg"),
        ),
      ),
    );

    final content = Container(
      color: Colors.transparent,
      height: 50.0,
      margin: EdgeInsets.only(top: 23.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            color: Colors.transparent,
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.15,
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.70,
            child: Center(
              child: Text(
                titleText,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Stack(children: [background, content]);
  }
}

class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    var sideOffset = 40.0;

    var minHeight = size.height - 50.0;
    var midHeight = size.height - 40.0;
    var maxHeight = size.height - 30.0;

    var halfWidth = size.width / 2;
    var thirdWidth = size.width / 3;

    path.lineTo(0.0, minHeight);

    var fcPoint = new Offset(thirdWidth - sideOffset, minHeight);
    var fePoint = new Offset(thirdWidth, midHeight);
    path.quadraticBezierTo(fcPoint.dx, fcPoint.dy, fePoint.dx, fePoint.dy);

    var scPoint = new Offset(halfWidth, maxHeight);
    var sePoint = new Offset(size.width - thirdWidth, midHeight);
    path.quadraticBezierTo(scPoint.dx, scPoint.dy, sePoint.dx, sePoint.dy);

    var tcPoint = new Offset((size.width - thirdWidth) + sideOffset, minHeight);
    var tePoint = new Offset(size.width, minHeight);
    path.quadraticBezierTo(tcPoint.dx, tcPoint.dy, tePoint.dx, tePoint.dy);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BoxShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    var sideOffset = 40.0;

    var minHeight = size.height - 50.0;
    var midHeight = size.height - 40.0;
    var maxHeight = size.height - 30.0;

    var halfWidth = size.width / 2;
    var thirdWidth = size.width / 3;

    path.lineTo(0.0, minHeight);

    var fcPoint = new Offset(thirdWidth - sideOffset, minHeight);
    var fePoint = new Offset(thirdWidth, midHeight);
    path.quadraticBezierTo(fcPoint.dx, fcPoint.dy, fePoint.dx, fePoint.dy);

    var scPoint = new Offset(halfWidth, maxHeight);
    var sePoint = new Offset(size.width - thirdWidth, midHeight);
    path.quadraticBezierTo(scPoint.dx, scPoint.dy, sePoint.dx, sePoint.dy);

    var tcPoint = new Offset((size.width - thirdWidth) + sideOffset, minHeight);
    var tePoint = new Offset(size.width, minHeight);
    path.quadraticBezierTo(tcPoint.dx, tcPoint.dy, tePoint.dx, tePoint.dy);

    path.lineTo(size.width, 0.0);

    path.close();

    canvas.drawShadow(path, Colors.black87, 3.0, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
