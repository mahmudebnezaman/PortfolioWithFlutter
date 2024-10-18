import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/core/constants/app_texts.dart';

class CustomSmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSmallAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(name, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: primaryTextColor),),
        );
      },
    );
  }

}
