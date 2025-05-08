import 'package:flutter/material.dart';
import 'package:tech_app/constants/colors.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.star,size: 12,color: kSecondaryColor,),
      Icon(Icons.star,size: 12,color: kSecondaryColor,),
      Icon(Icons.star,size: 12,color: kSecondaryColor,),
      Icon(Icons.star,size: 12,color: kSecondaryColor,),
      const Icon(Icons.star,size: 12,color: Colors.black,),
    ],);
  }
}