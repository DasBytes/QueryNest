import 'package:flutter/material.dart';
import 'package:querynest/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
          // side navbar
          SideBar(),
          Column(
            children: [
              //search section
              //footer section 
            ],
          )
        ],
      )
    );
  }
}