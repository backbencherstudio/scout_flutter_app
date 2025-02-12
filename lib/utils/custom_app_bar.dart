import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 24,
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
}
