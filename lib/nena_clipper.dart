import 'package:flutter/material.dart';

class NenaClipper extends CustomClipper<Path>{

  @override
  getClip(Size size){
 final Path path = Path();
path.lineTo(0.0,size.height);
var firstEndPoint = Offset(size.width * .5, size.height - 30.0);
var firstControlPoint = Offset(size.width * .25, size.height - 50.0);
path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

 var secondEndPoint = Offset(size.width, size.height - 80.0);
 var secondControlPoint = Offset(size.width * .85, size.height - 10.0);
//adding control points to Bezier curves...
path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


path.lineTo(size.width,0.0);
path.close();
 return path;
  }

@override
bool shouldReclip(CustomClipper oldClipper) => true;

}