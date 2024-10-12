import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/constants/app_assets.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/core/widgets/large_screen_appbar.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey there,",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "I'm Mahmud Ebne Zaman",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          "-Mobile Application Developer",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: seedColor),
                        ),
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
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Image.asset(
                      profileImage,
                      height: 400,
                      fit: BoxFit.contain,
                      isAntiAlias: true,
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
