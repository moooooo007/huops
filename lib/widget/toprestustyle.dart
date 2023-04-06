import 'package:flutter/material.dart';

class toprestustyle extends StatelessWidget {

  String nameitem ;
  String image ;
  int numberrest;
  double width ;
  double hights;
  double readuis ;
  toprestustyle
      ({required this.nameitem,
    required this.image,
    required this.numberrest,
    required this.width,
    required this.hights,
    required this.readuis
      });
  @override
  Widget build(BuildContext context) {
    return
      Column(
    children: [
        InkWell(onTap: (){},
          child:
          Container(
          margin:EdgeInsets.all(10) ,
            height: hights,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(readuis),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("$image")
                )
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$nameitem",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black,),),
            Text("$numberrest",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Colors.black,),),
          ],
        )
      ],
    ) ;
  }
}
