import 'package:flutter/material.dart';
import 'package:querynest/theme/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final Text text;
  const SideBarButton(
    {super.key, required this.isCollapsed, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) => Row(
              mainAxisAlignment: isCollapsed ? MainAxisAlignment.center :  MainAxisAlignment.start,
               children: [
                 Container(
                   margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                   child: Icon(Icons.add, 
                             color: AppColors.iconGrey,
                             size: 22,
                             ),
                 ),
                 isCollapsed ? 
                 const SizedBox() :
                 Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                 )
               ],
             );
}