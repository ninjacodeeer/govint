import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';
import 'package:govint/widgets/drawer_widget/history_widget.dart';

class BookmarksWidgetComponent extends StatefulWidget {
  final String siteIcon;
  final String title;
  final String link;

  const BookmarksWidgetComponent(
      {super.key,
      required this.siteIcon,
      required this.title,
      required this.link});

  @override
  State<BookmarksWidgetComponent> createState() =>
      _BookmarksWidgetComponentState();
}

class _BookmarksWidgetComponentState extends State<BookmarksWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.1.sw,
      height: 0.08.sh,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 0.16.sw,
            height: 1.sh,
            child: Center(
              child: SiteIconWidgetComponent(siteIcon: widget.siteIcon),
            ),
          ),
          SizedBox(
            width: 0.62.sw,
            height: 1.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lato(
                      color: GColors.lightBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 0.002.sh),
                Text(
                  widget.link,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lato(
                      color: GColors.lightBlueGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          SizedBox(
            width: 0.12.sw,
            height: 1.sh,
            child: Center(
              child: SizedBox(
                  width: 0.06.sw,
                  height: 0.06.sw,
                  child:
                      SvgPicture.asset(GIcons.delete, color: GColors.pinkyRed)),
            ),
          )
        ],
      ),
    );
  }
}
