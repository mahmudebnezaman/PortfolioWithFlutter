import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/core/constants/app_texts.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  // Social media URL functions
  void _launchUrl(String link) async {
    final Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  _buildNavButton(context, "Home"),
                  _buildNavButton(context, "About"),
                  _buildNavButton(context, "Skills"),
                  _buildNavButton(context, "Experience"),
                  _buildNavButton(context, "Projects"),
                  _buildNavButton(context, "Education"),
                  _buildNavButton(context, "Contact"),
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
                        // color: primaryTextColor,
                      ),
                      // Twitter
                      onTap: () => _launchUrl(linkedInLink),
                    ),
                    const Gap(5),
                    InkWell(
                      child: SvgPicture.asset(
                        githubIcon,
                        height: 20,
                        color: primaryTextColor,
                      ),
                      // Twitter
                      onTap: () => _launchUrl(githubLink),
                    ),
                    const Gap(5),
                    InkWell(
                      child: SvgPicture.asset(
                        skypeIcon,
                        height: 20,
                        color: primaryTextColor,
                      ),
                      // Twitter
                      onTap: () => _launchUrl(skypeLink),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  // Helper method to build text buttons for navigation
  Widget _buildNavButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(20, 20),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
