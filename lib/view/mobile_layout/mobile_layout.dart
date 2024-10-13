import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/core/constants/app_texts.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:portfolio/core/widgets/build_nav_buttons.dart';
import 'package:portfolio/core/widgets/small_screen_appbar.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomSmallAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Image.asset(
                  profileImage,
                  height: 180,
                  fit: BoxFit.contain,
                  isAntiAlias: true,
                ),
              ),
              const Gap(5),
              Text(
                "Hey there,",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "I'm Mahmud Ebne Zaman",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "-Mobile Application Developer",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: seedColor),
              ),
              const Gap(5),
              Text(
                "\"I am a passionate Flutter developer with a knack for creating intuitive and engaging mobile applications. My expertise lies in building responsive UIs and implementing innovative features that enhance user experiences. I thrive on challenges and continuously seek opportunities to expand my skills and knowledge in the ever-evolving tech landscape.\"",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const Gap(5),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Get in touch",
                ),
              ),
              const Divider(),
              Text("Developed by -Mahmud", style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        width: MediaQuery.sizeOf(context).width * 0.65,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 16), // Adds padding around the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildNavButton(context, "Home"),
                      const Gap(10), // Add space between buttons
                      buildNavButton(context, "About"),
                      const Gap(10),
                      buildNavButton(context, "Skills"),
                      const Gap(10),
                      buildNavButton(context, "Experience"),
                      const Gap(10),
                      buildNavButton(context, "Projects"),
                      const Gap(10),
                      buildNavButton(context, "Education"),
                      const Gap(10),
                      buildNavButton(context, "Contact"),
                      const SizedBox(height: 20), // Spacing before the CV button
                      ElevatedButton(
                        onPressed: () {
                          // Add logic to download CV
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: seedColor,
                          foregroundColor: primaryTextColor,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                        child: const Text("Download CV"),
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom Section: Social Media Icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Get in touch", style: Theme.of(context).textTheme.bodySmall,),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          linkedInIcon,
                          height: 20,// Icon color
                        ),
                        onTap: () => launchUrlExternal(linkedInLink),
                      ),
                      const Gap(5), // Spacing between icons
                      InkWell(
                        child: SvgPicture.asset(
                          githubIcon,
                          height: 20,
                        ),
                        onTap: () => launchUrlExternal(githubLink),
                      ),
                      const Gap(5),
                      InkWell(
                        child: SvgPicture.asset(
                          skypeIcon,
                          height: 20,
                        ),
                        onTap: () => launchUrlExternal(skypeLink),
                      ),
                    ],
                  ),
                  const Divider(),
                  Text("Developed by -Mahmud", style: Theme.of(context).textTheme.bodySmall,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
