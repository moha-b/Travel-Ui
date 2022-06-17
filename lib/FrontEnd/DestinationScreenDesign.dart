// ignore_for_file: file_names, prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:travel/FrontEnd/DestinationDesign.dart';
import 'package:travel/backEnd/places.dart';

class DestinationScreen extends StatefulWidget {
  places dest;

  DestinationScreen({
    Key? key,
    required this.dest,
  }) : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6),
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: AssetImage(widget.dest.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
