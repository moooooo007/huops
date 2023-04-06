import 'package:flutter/material.dart';

class palcestyle extends StatelessWidget {

  String nameitem ;
  String image ;
  int numberrest;
  palcestyle ({required this.nameitem,required this.image,required this.numberrest});
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(onTap: (){},
          child: Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
                image: DecorationImage(

                    fit: BoxFit.cover,
                    image: AssetImage("$image")
                )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(2),
          width: 150,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$nameitem",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black,),),
              Text("$numberrest",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Colors.black,),),
            ],
          ),
        )
      ],
    ) ;
  }
}
