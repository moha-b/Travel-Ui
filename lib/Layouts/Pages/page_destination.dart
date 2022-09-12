// ignore_for_file: file_names, prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, duplicate_ignore, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';


import '../../Models/Activity.dart';
import '../../Models/places.dart';
import '../Widgets/widget_big_text.dart';
import '../Widgets/widget_small_text.dart';

class DestinationScreen extends StatefulWidget {
  Places dest;

  DestinationScreen({
    Key? key,
    required this.dest,
  }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildStars(int rate) {
    String star = "";
    for (int i = 0; i < rate; i++) {
      star += "⭐ ";
    }

    return Text(star);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6),
                    ]),
                child: Hero(
                  tag: widget.dest.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: AssetImage(widget.dest.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.sort_outlined,
                          size: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: widget.dest.city,
                      color: Colors.white,
                      size: 45,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white70,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SmallText(
                          text: widget.dest.country,
                          color: Colors.white70,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 20,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 20,
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                itemCount: widget.dest.activities.length,
                itemBuilder: (context, int index) {
                  Activity activity = widget.dest.activities[index];
                  return Stack(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 130,
                                  child: BigText(
                                    text: activity.name,
                                    overflow: TextOverflow.ellipsis,
                                    lines: 2,
                                  ),
                                ),
                                Column(
                                  children: [
                                    BigText(text: "\$${activity.price}"),
                                    SmallText(
                                      text: "Per ",
                                      color: Colors.grey,
                                      size: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SmallText(
                              text: activity.type,
                              color: Colors.grey,
                            ),
                            _buildStars(activity.rating),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  alignment: Alignment.center,
                                  child: SmallText(
                                    text: activity.startTimes[0],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  alignment: Alignment.center,
                                  child: SmallText(
                                    text: activity.startTimes[1],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 15,
                      bottom: 15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: 110,
                          image: AssetImage(activity.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]);
                }),
          )
        ],
      ),
    );
  }
}
