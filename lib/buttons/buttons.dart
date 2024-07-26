import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:govint/dimensions/icons.dart';

class DrawerButtonComponent extends StatefulWidget {
  final VoidCallback onTap;
  const DrawerButtonComponent({super.key, required this.onTap});

  @override
  State<DrawerButtonComponent> createState() => _DrawerButtonComponentState();
}

class _DrawerButtonComponentState extends State<DrawerButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 24.w,
        height: 24.w,
        child: SvgPicture.asset(GIcons.drawer),
      ),
    );
  }
}
