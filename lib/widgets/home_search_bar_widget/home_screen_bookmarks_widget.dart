import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/images.dart';
import 'package:govint/widgets/drawer_widget/history_widget.dart';

class HomeScreenBookmarksWidgetComponent extends StatefulWidget {
  final String siteIcon;
  final String title;

  const HomeScreenBookmarksWidgetComponent(
      {super.key, required this.siteIcon, required this.title});

  @override
  State<HomeScreenBookmarksWidgetComponent> createState() =>
      _HomeScreenBookmarksWidgetComponentState();
}

class _HomeScreenBookmarksWidgetComponentState
    extends State<HomeScreenBookmarksWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GColors.white,
          border: Border.all(color: GColors.lightBlueGrey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeScreenBookmarksSiteIconWidget(siteIcon: widget.siteIcon),
          SizedBox(height: 0.004.sh),
          Text(
            widget.title,
            style: GoogleFonts.lato(
                color: GColors.primaryColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class HomeScreenBookmarksSiteIconWidget extends StatefulWidget {
  final String siteIcon;

  const HomeScreenBookmarksSiteIconWidget({super.key, required this.siteIcon});

  @override
  State<HomeScreenBookmarksSiteIconWidget> createState() =>
      _HomeScreenBookmarksSiteIconWidgetState();
}

class _HomeScreenBookmarksSiteIconWidgetState
    extends State<HomeScreenBookmarksSiteIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.12.sw,
      height: 0.12.sw,
      decoration: BoxDecoration(
          color: GColors.lightBlueGrey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100.r)),
      child: Center(
          child: SizedBox(
              width: 0.06.sw,
              height: 0.06.sw,
              child: Image.asset(widget.siteIcon))),
    );
    ;
  }
}
