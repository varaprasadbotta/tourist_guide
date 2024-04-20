import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourist_guide/Screens/Destination_Screen.dart';
import 'package:tourist_guide/models/destination.dart';

class Destinationtail extends StatelessWidget {
  const Destinationtail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      // color: Colors.blue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Destinations.length,
          itemBuilder: (context, index) {
            Destination destination = Destinations[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Destination_Screen(destinations: destination,)));
              },
              child: Container(
                margin: EdgeInsets.only(left: 12, top: 10, bottom: 10),
                height: 330,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade100),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          
                            Text(
                              destination.destinationCity,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(destination.destinationDescripation,maxLines: 2,)
                          ],
                        ),
                      ),
                    ),
                    Hero(
                      tag: destination.imageurl,
                      child: Container(
                        height: 230,
                        width: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(destination.imageurl),
                                fit: BoxFit.cover)
                                ),
                                
                      ),
                    ),
                    Positioned( left: 20,bottom: 110,
                      child: Text(destination.destinationName,style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w700),)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
