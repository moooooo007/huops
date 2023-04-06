import 'package:flutter/material.dart';
import 'package:hello/Model/categorys.dart';
import 'package:hello/widget/categorystyle.dart';

class hometab extends StatefulWidget {
  @override
  State<hometab> createState() => _hometabState();
}

class _hometabState extends State<hometab> {
  List<Categoryss> Category = [
    Categoryss(Name: "Resturant", Url: "assets/photo/2 (2).png"),
    Categoryss(Name: "Cafe", Url: "assets/photo/2 (3).png"),
    Categoryss(Name: "Hotel", Url: "assets/photo/2 (7).png"),
    Categoryss(Name: "Car Services", Url: "assets/photo/2 (1).png"),
    Categoryss(Name: "Groceries", Url: "assets/photo/2 (9).png"),
    Categoryss(Name: "Shopping", Url: "assets/photo/2 (8).png"),
    Categoryss(Name: "Money Transfer", Url: "assets/photo/2 (10).png"),
    Categoryss(Name: "Services", Url: "assets/photo/2 (12).png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFfbfbfb),
                  borderRadius: BorderRadius.circular(30)

              ),
              child: SingleChildScrollView(
                child: TextField(
                  decoration: InputDecoration(suffixIcon:Icon(Icons.search) ,
                    hintText: ("Search Here..."),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 3, color: Colors.transparent), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Discover Services",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Dilevered To Cairo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.edit_rounded)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
            height: 300,
              margin: EdgeInsets.all(30),
               child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: Category.length,shrinkWrap:true ,
                itemBuilder: (BuildContext context, index) {
                  return categorystyle(
                      nameitem: Category[index].Name, image: Category[index].Url);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
