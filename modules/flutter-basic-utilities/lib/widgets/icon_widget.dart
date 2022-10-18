import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    this.icons = Icons.add,
    this.sizeIcon = 22,
    required this.press, this.colorIcon = Colors.black54,
  }) : super(key: key);
  final IconData icons;
  final double sizeIcon;
  final VoidCallback press;
  final Color colorIcon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        width: 32,
        height: 28,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Icon(
          icons,
          color: colorIcon,
          size: sizeIcon,
        ),
      ),
    );
  }
}
