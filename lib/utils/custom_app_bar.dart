


import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context, String title,){
  return AppBar(
    centerTitle: true,
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(
            0xFF111315,
          ),
        )
    ),
    title: Text(title,style: Theme.of(context).textTheme.bodyMedium,),
  );
}