import 'package:flutter/material.dart';
import 'package:hello/Model/palces.dart';
import 'package:hello/widget/toprestustyle.dart';


class resturanttab extends StatelessWidget {
  List<palces> palce = [
    palces(Name: "Cairo", Url: "assets/photo/a.jpg", palcenomber: 135),
    palces(Name: "Banha", Url: "assets/photo/b.jpg", palcenomber: 140),
    palces(Name: "Aswan", Url: "assets/photo/c.jpg", palcenomber: 122),
    palces(Name: "Tanta", Url: "assets/photo/d.jpg", palcenomber: 82),
    palces(Name: "Quissna", Url: "assets/photo/e.jpg", palcenomber: 19),
    palces(Name: "Alexandria", Url: "assets/photo/f.jpg", palcenomber: 160),
    palces(Name: "Giza", Url: "assets/photo/g.jpg", palcenomber: 113),
  ];

  @override

  Widget build(BuildContext context) {
    return
      NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            stretch: false,

            backgroundColor: Colors.white,

            floating: false,

            flexibleSpace:
            SingleChildScrollView(
              child: Stack(
                children: [
                  const FlexibleSpaceBar(

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child:
                        SizedBox(
                          height:MediaQuery.of(context).size.width * .55,
                        width: MediaQuery.of(context).size.width - 100,
                          child: Column(
                            children: [
                              TextField(
                                style: const TextStyle(
                                    fontSize: 22.0, color: Color(0xff262626)),
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: const Icon(
                                      Icons.search_sharp,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Search',
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                  contentPadding: const EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide:
                                        const BorderSide(color: Colors.black, width: 0.0),
                                  ),
                                ),
                                onChanged: (value) {
                                  // do something
                                },
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Choose City",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  InkWell(
                                      child: Text(
                                        "Show All >>>",
                                        style: TextStyle(
                                            fontSize: 10, fontWeight: FontWeight.bold),
                                      )),

                                ],
                              ),
                              Expanded(
                                child: Container(
                                  height: 150,
                                  color: Colors.white,
                                  child: ListView.builder(
                                    itemCount: palce.length,
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemBuilder: (ctx, index) {
                                      return toprestustyle(
                                         center: false,
                                          readuis: 20,
                                          width: 100,
                                          hights: 75,
                                          nameitem: palce[index].Name,
                                          image: palce[index].Url,
                                          numberrest: palce[index].palcenomber);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 200,
          ),
        ];
      },

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.width * .45,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
              children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Top Resturant",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                          child: Text(
                            "Show All >>>",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),

                    ],
                  ),
                  Expanded(

                    child: Container(
                    width: double.infinity,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: palce.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return toprestustyle(
                              center: false,
                              readuis: 5,
                              width: 150,
                              hights: 75,
                              nameitem: palce[index].Name,
                              image: palce[index].Url,
                              numberrest: palce[index].palcenomber);
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.width * .45,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Fast Food",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                          child: Text(
                            "Show All >>>",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),

                    ],
                  ),
                  Expanded(
                    child: Container(
                    color: Colors.white,
                      child: ListView.builder(
                        itemCount: palce.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return toprestustyle(
                              center: false,
                              readuis: 5,
                              width: 100,
                              hights: 75,
                              nameitem: palce[index].Name,
                              image: palce[index].Url,
                              numberrest: palce[index].palcenomber);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.width * .45,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Sea Food",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                          child: Text(
                            "Show All >>>",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),

                    ],
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: palce.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return toprestustyle(
                             center: false,
                              readuis: 5,
                              width: 100,
                              hights: 75,
                              nameitem: palce[index].Name,
                              image: palce[index].Url,
                              numberrest: palce[index].palcenomber);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.width * .45,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Citis",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                          child: Text(
                            "Show All >>>",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),

                    ],
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: palce.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return toprestustyle(
                             center: true,
                              readuis: 5,
                              width: 100,
                              hights: 75,
                              nameitem: palce[index].Name,
                              image: palce[index].Url,
                              numberrest: palce[index].palcenomber);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
