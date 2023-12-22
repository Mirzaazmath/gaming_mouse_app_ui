import 'package:flutter/material.dart';
class TextUtil extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  bool? weight;
  TextUtil({super.key,required this.text,this.size,this.color,this.weight});

  @override
  Widget build(BuildContext context) {
    return  Text(text,

      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(wordSpacing: 0,
          fontFamily: "Lato",
          color:color??Colors.black,fontSize:size?? 18,
          fontWeight:weight==null?FontWeight.normal: FontWeight.w900
      ),);
  }
}