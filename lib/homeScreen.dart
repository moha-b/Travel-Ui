// ignore_for_file: prefer_const_constructors_in_immutables, file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_element
// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:travel/Widgets/bigtext.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;

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
          selectedIndex == index;
          print("object = ");
          print(selectedIndex);
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: selectedIndex == index
                ? Theme.of(context).colorScheme.secondary
                : Color(0xFFE7BEE)),
        child: Icon(
          _icon[index],
          size: 25,
          color: selectedIndex == index
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
              padding: EdgeInsets.only(left: 20, right: 120),
              child: BigText(text: "What u would like to find"),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icon
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildIcon(map.key))
                    .toList()),
            Column(
              children: [
                Row(
                  children: [],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
