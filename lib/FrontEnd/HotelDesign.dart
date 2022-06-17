// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel/Widgets/bigtext.dart';
import 'package:travel/Widgets/smallText.dart';
import 'package:travel/backEnd/Hotel.dart';
import 'package:travel/backEnd/places.dart';

class HotelDesign extends StatelessWidget {
  const HotelDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Exclusive Hotels"),
              GestureDetector(
                onTap: () => print("see All"),
                child: SmallText(
                  text: "See All",
                  size: 13,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (context, int index) {
                Hotel hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 390,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15,
                        child: Container(
                          width: 370,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                BigText(text: hotel.name),
                                SizedBox(
                                  height: 3,
                                ),
                                SmallText(
                                  text: hotel.address,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                BigText(
                                  text: "\$${hotel.price} / night",
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6,
                                  color: Colors.black,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              width: 350,
                              height: 180,
                              fit: BoxFit.cover,
                              image: AssetImage(hotel.imageUrl)),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
