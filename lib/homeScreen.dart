// ignore_for_file: prefer_const_constructors_in_immutables, file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_element, unused_import
// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:travel/FrontEnd/Destination.dart';
import 'package:travel/Widgets/bigtext.dart';
import 'package:travel/Widgets/smallText.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _selectedIndex = 0;

  List<IconData> _icon = [
    Icons.place_outlined,
    Icons.bike_scooter,
    Icons.bed_rounded,
    Icons.nordic_walking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _selectedIndex == index
                ? Theme.of(context).colorScheme.secondary
                : Color(0xFFE7BEE)),
        child: Icon(
          _icon[index],
          size: 25,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB1C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120, bottom: 20),
              child: BigText(
                text: "What u would like to find",
                size: 24,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icon
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildIcon(map.key))
                    .toList()),
            SizedBox(
              height: 20,
            ),
            // <--------------------
            Destination(),
          ],
        ),
      ),
    );
  }
}
