import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';

class HomeSearchBarWidgetComponent extends StatelessWidget {
  const HomeSearchBarWidgetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
      child: TextField(
        cursorColor: GColors.primaryColor,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: GColors.lightBlueGrey.withOpacity(0.2),
            isCollapsed: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.04.sw),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.r),
                borderSide:
                    BorderSide(color: GColors.lightBlueGrey.withOpacity(0.2))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.r),
                borderSide:
                    BorderSide(color: GColors.lightBlueGrey.withOpacity(0.2))),
            hintText: 'Search or Enter URL...',
            hintStyle: GoogleFonts.lato(
                color: GColors.lightBlueGrey,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 0.008.sh, horizontal: 0.022.sw),
              child:
                  SvgPicture.asset(GIcons.search, color: GColors.lightBlueGrey),
            ),
            prefixIconConstraints:
                BoxConstraints(maxWidth: 42.w, maxHeight: 42.w)),
      ),
    );
  }
}
