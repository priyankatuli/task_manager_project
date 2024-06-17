import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/auth/update_profile_screen.dart';
import 'package:task_manager_project/ui/widgets/network_cached_image.dart';

import '../utility/app_color.dart';

AppBar profileAppBar(context,[bool isUpdate= false]) {
  return AppBar(
    backgroundColor: AppColors.themeColor,
    leading: const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 10,
        child: NetworkCachedImage(url: '',),
      ),
    ),
    title: GestureDetector(
      onTap: (){
        if(isUpdate){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateProfileScreen(),),);
      },
      child:  const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Dummy Name',style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400
          ),),
          Text('email@gmail.com',
            style: TextStyle(
                fontSize: 13,
                color: Colors.white,fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
  ),

    actions: [
      IconButton(onPressed: (){

      }, icon: const  Icon(Icons.logout_outlined))
    ],

  );
}
