import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';

class SearchHistoryWidget extends StatefulWidget {
  final ValueChanged<String> onChanged;
  // final TextEditingController? controller;
  const SearchHistoryWidget({super.key,  required this.onChanged, });

  @override
  State<SearchHistoryWidget> createState() => _SearchHistoryWidgetState();
}

class _SearchHistoryWidgetState extends State<SearchHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 0.07.sh,
      padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
      child: Center(
        child: TextField(
          onChanged: widget.onChanged,
          autofocus: true,
          style: GoogleFonts.lato(
            color: GColors.lightBlack,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal
          ),
          cursorColor: GColors.primaryColor,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: GColors.lightBlueGrey.withOpacity(0.2),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.r),
                  borderSide: BorderSide(
                      color: GColors.lightBlueGrey.withOpacity(0.2))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.r),
                  borderSide: BorderSide(color: GColors.lightBlueGrey.withOpacity(0.2))),
              isCollapsed: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.012.sh, horizontal: 0.06.sw),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.008.sh, horizontal: 0.022.sw),
                child: SvgPicture.asset(GIcons.search,
                    color: GColors.lightBlueGrey),
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 42.w, maxWidth: 42.w),
            hintText: 'Search in history',
            hintStyle: GoogleFonts.lato(
              color: GColors.lightBlueGrey,
              fontWeight: FontWeight.normal,
              fontSize: 16.sp
            ),


          ),
        ),
      ),
    );
  }
}
