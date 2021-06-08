import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key key, this.imagePath, this.sizey, this.sizex})
      : super(key: key);
  final imagePath;
  final sizey;
  final sizex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: sizey,
      width: sizex,
      child: Container(
          margin: EdgeInsets.all(10), child: SvgPicture.asset(imagePath)),
    );
  }
}
