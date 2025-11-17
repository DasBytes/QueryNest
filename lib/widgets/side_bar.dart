import 'package:flutter/material.dart';
import 'package:querynest/theme/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
       width: isCollapsed ? 64 : 128,
       color: AppColors.sideNav,
       duration: const Duration(milliseconds: 100),
       child: Column(
        crossAxisAlignment:  isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
        
          Icon(Icons.auto_awesome_mosaic, 
          color: AppColors.whiteColor,
          size: 30,
          ),
          const SizedBox(height: 24),
             Row(
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
             ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
             child: Icon(Icons.search, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),

           Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
             child: Icon(Icons.language, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),

           Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
             child: Icon(Icons.auto_awesome, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
             child: Icon(Icons.cloud_outlined, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),
           const Spacer(),
           GestureDetector(
            onTap: () {
             setState(() {
              isCollapsed = !isCollapsed;
             });
              },
             child: AnimatedContainer(
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
               duration: const Duration(milliseconds: 100),
               child: Icon( isCollapsed
               ? Icons.keyboard_arrow_right 
                : Icons.keyboard_arrow_left,
                         color: AppColors.whiteColor,
                         size: 30,
                         ),
             ),
           ),
           const SizedBox(height: 16),
        ],
       ),

    );
  }
}
