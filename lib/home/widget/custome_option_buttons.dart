import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../utils/color_utils.dart';

class CustomOptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const CustomOptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 30.0,
        margin: const EdgeInsets.only(
          top: 12.0,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: getThemeManager(context).isDarkMode
                ? darkGreyColor
                : lightGreyColor2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: getThemeManager(context).isDarkMode
              ? []
              : [
                  const BoxShadow(
                    color: lightGreyColor2,
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 1.0),
                  ),
                ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).iconTheme.color,
              size: 18.0,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
