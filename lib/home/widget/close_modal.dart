import 'package:flutter/material.dart';

import '../../utils/color_utils.dart';

class ModalCloseButton extends StatelessWidget {
  const ModalCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: darkPlanetBgColor.withOpacity(0.4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Icon(
          Icons.close,
          color: darkGreyColor,
          size: 15,
        ),
      ),
    );
  }
}
