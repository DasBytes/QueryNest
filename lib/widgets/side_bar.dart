import 'package:flutter/material.dart';
import 'package:querynest/theme/colors.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 64,
       color: AppColors.sideNav,
       child: Column(
        children: [
          const SizedBox(height: 16),
        
          Icon(Icons.auto_awesome_mosaic, 
          color: AppColors.whiteColor,
          size: 30,
          ),
          const SizedBox(height: 24),
             Container(
               margin: EdgeInsets.symmetric(vertical: 14),
               child: Icon(Icons.add, 
                         color: AppColors.iconGrey,
                         size: 22,
                         ),
             ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 14),
             child: Icon(Icons.search, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),

           Container(
            margin: EdgeInsets.symmetric(vertical: 14),
             child: Icon(Icons.language, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),

           Container(
            margin: EdgeInsets.symmetric(vertical: 14),
             child: Icon(Icons.auto_awesome, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 14),
             child: Icon(Icons.keyboard_arrow_right, 
                       color: AppColors.whiteColor,
                       size: 30,
                       ),
           ),
        ],
       ),

    );
  }
}
