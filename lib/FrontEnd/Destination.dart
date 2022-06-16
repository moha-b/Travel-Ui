// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel/Widgets/bigtext.dart';
import 'package:travel/Widgets/smallText.dart';
import 'package:travel/backEnd/places.dart';

class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);

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
              BigText(text: "Top Destination"),
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
                places dest = destinations[index];
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 210,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15,
                        child: Container(
                          width: 200,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "3 Activities"),
                                SmallText(
                                  text: dest.description,
                                  color: Colors.grey,
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
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                  image: AssetImage(dest.imageUrl)),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(text: dest.city, color: Colors.white),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      SmallText(
                                        text: dest.country,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
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
