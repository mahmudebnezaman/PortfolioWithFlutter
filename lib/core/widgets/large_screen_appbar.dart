import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/app_texts.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:portfolio/core/widgets/build_nav_buttons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side: Text buttons for navigation
              Row(
                children: [
                  buildNavButton(context, "Home"),
                  buildNavButton(context, "About"),
                  buildNavButton(context, "Skills"),
                  buildNavButton(context, "Experience"),
                  buildNavButton(context, "Projects"),
                  buildNavButton(context, "Education"),
                  buildNavButton(context, "Contact"),
                  if (constraints.maxWidth > 640)
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Download CV")),
                ],
              ),

              if (constraints.maxWidth > 750)
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        linkedInIcon,
                        height: 20,
                      ),
                      // Twitter
                      onTap: () => launchUrlExternal(linkedInLink),
                    ),
                    const Gap(5),
                    InkWell(
                      child: SvgPicture.asset(
                        githubIcon,
                        height: 20,
                      ),
                      // Twitter
                      onTap: () => launchUrlExternal(githubLink),
                    ),
                    const Gap(5),
                    InkWell(
                      child: SvgPicture.asset(
                        skypeIcon,
                        height: 20,
                      ),
                      // Twitter
                      onTap: () => launchUrlExternal(skypeLink),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
