import 'package:country_app/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Explore',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w900,
                    ),
              ),
              Text(
                '.',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w900,
                      color:
                          logoDotColor, // AppColor.logoDotColor is a constant
                    ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => getThemeManager(context).toggleDarkLightTheme(),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: getThemeManager(context).isDarkMode
                  ? const Color.fromRGBO(152, 162, 179, 0.2)
                  : darkPlanetBgColor.withOpacity(0.2),
              child: Icon(
               getThemeManager(context).isDarkMode
                    ? Icons.bedtime_outlined
                    : Icons.wb_sunny_outlined,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
