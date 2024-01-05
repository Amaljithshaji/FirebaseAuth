
import 'package:flutter/material.dart';

import 'Components/FoodItems.dart';
import 'Components/Restaurant.dart';
import 'Components/Search_bar.dart';
import 'Components/odernow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9E9E9),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        items: [
        BottomNavigationBarItem( icon: Icon(Icons.home),
              label: 'Home',
              
              backgroundColor: Colors.white,
              activeIcon: Icon(Icons.home,color: Color(0xffFA6A02),),),
               BottomNavigationBarItem( icon: Icon(Icons.explore_outlined),label: 'Discover',
               backgroundColor:Colors.white,
 ),
              BottomNavigationBarItem( icon:Icon( Icons.person, ),label: 'Profile',
              backgroundColor: Colors.white,
 ),
             
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: [
                  Image.asset('assets/img/Frame.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "office",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff9F9F9F),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.02,
                child: Text(
                    "38/A, 3rd Floor, 18th Main, 22nd Cross Rd, Sector 3, HSR Layout, Bengaluru, Karnataka 560102",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.04),
              child: Center(
                child: OderNow(),
              ),
            ),
            Center(
              child: Search_bar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Food(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Text("Restaurant near you",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
             
              child: Restaurant(),
            )
          ],
        ),
      ),
    );
  }
}

