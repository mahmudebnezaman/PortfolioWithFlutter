import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/utils/utils.dart';

class ContactInfoRow extends StatelessWidget {
  final String icon;
  final String text;
  final String? url;
  final double iconHeight;

  const ContactInfoRow({
    super.key,
    required this.icon,
    required this.text,
    this.url,
    this.iconHeight = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        url != null ? launchUrlExternal(url!) : null;
      },
      child: Row(
        children: [
          SvgPicture.asset(icon, height: iconHeight),
          const Gap(5),
          Expanded(child: Text(text, style: Theme.of(context).textTheme.bodySmall)),
        ],
      ),
    );
  }
}