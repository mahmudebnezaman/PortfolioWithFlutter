import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/app_colors.dart';
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
              Image.asset(
                profileImage,
                height: 250,
                fit: BoxFit.contain,
                isAntiAlias: true,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(5),
                  Text(
                    "\"I am a passionate Flutter developer with a knack for creating intuitive and engaging mobile applications. My expertise lies in building responsive UIs and implementing innovative features that enhance user experiences. I thrive on challenges and continuously seek opportunities to expand my skills and knowledge in the ever-evolving tech landscape.\"",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Gap(5),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Get in touch",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
