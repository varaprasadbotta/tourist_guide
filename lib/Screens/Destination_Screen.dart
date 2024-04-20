import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourist_guide/models/activitys.dart';
import 'package:tourist_guide/models/destination.dart';

class Destination_Screen extends StatefulWidget {
  Destination destinations;

  Destination_Screen({super.key, required this.destinations});

  @override
  State<Destination_Screen> createState() => _Destination_ScreenState();
}

class _Destination_ScreenState extends State<Destination_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Stack(
            children: [
              //container
              Container(
                height: MediaQuery.of(context).size.width,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(blurRadius: 6, color: Colors.black38),
                  ],
                ),
                child: Hero(
                  tag: widget.destinations.imageurl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.network(
                      widget.destinations.imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 30,
                ),
                child: Row(
                  children: [
                    //icons on the top we need three icons like  back ,search, sorted
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.black,
                        )),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.sort,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //city name
                    Text(
                      widget.destinations.destinationName,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.flight,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          widget.destinations.destinationCity,
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: Icon(
                    Icons.location_on_rounded,
                    size: 35,
                    color: Colors.white,
                  ))
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: Activitys.length,
                  itemBuilder: (context, index) {
                    Activity activity = Activitys[index];
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.cyan.shade100
                          //color: Colors.grey.shade200
                          ),
                      child: Stack(
                        children: [
                          //text like city name and place name
                          Padding(
                            padding: const EdgeInsets.only(left: 130.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  activity.ActivityName,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  activity.ActivityPlace,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  activity.ActivityCountry,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(top: 20,
                            right: 15,
                            child: Column(
                              children: [
                               // price
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.green,),
                                    Text(activity.ActivityPrice,style:TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.green),),
                                  ],
                                ),
                                Text("per Day",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.green),)
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.purple.shade100,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      activity.hotelStartingTime,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.purple.shade100,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    activity.hotelEndingTime,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              left: 5,
                              top: 5,
                              bottom: 5,
                              child: Container(
                                height: 150,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    //color: Colors.white,
                                    image: DecorationImage(image: NetworkImage(activity.ActivityImageUrl),fit: BoxFit.cover)),
                              )),
                              
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
