import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourist_guide/Widgets/Destinationtail.dart';
import 'package:tourist_guide/Widgets/HotelsTail.dart';
import 'package:tourist_guide/models/activitys.dart';
import 'package:tourist_guide/models/destination.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //icon selected index = 0;
  int selectedIndex = 0;
  //list of icon
  List<IconData> _Topicon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.hotel,
    FontAwesomeIcons.bicycle
  ];
  //fuction to switch between icon
  Widget _buildicon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        print(selectedIndex);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: selectedIndex == index
                ? Theme.of(context).primaryColor
                : Colors.grey.shade300),
        child: Icon(_Topicon[index],
            size: 25,
            color: selectedIndex == index ? Colors.blue : Colors.grey),
      ),
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            //text( Where would you like to travel to next?)
            const Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: const Text(
                "Where would you like to travel to next...",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 01),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _Topicon.asMap()
                  .entries
                  .map((MapEntry map) => _buildicon(map.key))
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Destinations",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Destinationtail(),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exclusive Hotels",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HotelTail()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        
      items: [
        BottomNavigationBarItem(label:"" ,icon: Icon(Icons.search,),),
        BottomNavigationBarItem(label:"",icon: Icon(FontAwesomeIcons.house)),
        BottomNavigationBarItem(label:  "",icon: CircleAvatar(radius: 22,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1552058544-f2b08422138a?q=80&w=1899&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),))
      ]),
    );
  }
}
