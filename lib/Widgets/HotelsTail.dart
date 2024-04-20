import 'package:flutter/material.dart';
import 'package:tourist_guide/models/activitys.dart';

class HotelTail extends StatelessWidget {
  const HotelTail({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                    height: 350,
                    decoration: BoxDecoration(
                        // color: Colors.yellow,
                        borderRadius: BorderRadius.circular(16)),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Activitys.length,
                        itemBuilder: (context, index) {
                          Activity activity = Activitys[index];
                          return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                //  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(16)),
                              height: 350,
                              width: 350,
                              child: Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 350,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.blue.shade100,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              activity.ActivityImageUrl),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            activity.ActivityName,
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white),
                                          ),
                                          Text(activity.ActivityPlace,
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                        }),
                  );
  }
}