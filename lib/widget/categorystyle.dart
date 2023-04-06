import 'package:flutter/material.dart';

class categorystyle extends StatelessWidget {

  String nameitem ;
  String image ;
  categorystyle ({required this.nameitem,required this.image});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
    borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
             margin:EdgeInsets.all(10) ,
              padding: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Text("$nameitem",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white,),),
          )
        ],
      ),
    );
  }
}
