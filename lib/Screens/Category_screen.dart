import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hello/TAB/account.dart';
import 'package:hello/TAB/home.dart';
import 'package:hello/TAB/hotel.dart';
import 'package:hello/TAB/more.dart';
import 'package:hello/TAB/resturant.dart';
import 'package:hello/TAB/shobing.dart';

class categoryscreen extends StatefulWidget {
  static var RoutName = "Category";

  @override
  State<categoryscreen> createState() => _categoryscreenState();
}

class _categoryscreenState extends State<categoryscreen> {
  final List<String> items = [
    'Banha',
    'Cairo',
    'Alexandria',
    'Aswan',
  ];
  String? selectedValue;
  int currentindex = 0;
  List<Widget> tab = [
    hometab(),
    accounttab(),
    resturanttab(),
    shobingtab(),
    hoteltab(),
    moretab()
  ];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BackButton(color: Colors.black,),
                  const Spacer(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Current Location',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(onTap: (){},
                    child:  const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: (tab[currentindex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          onTap: (currenttab) {
            currentindex = currenttab;
            setState(() {});
          },
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          ),
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          currentIndex: currentindex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),label: "Account",),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant), label: "Resturant"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Shoping"),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel), label: "Hotel"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: "More"),
          ],
        ),
      ),
    );
  }
}
