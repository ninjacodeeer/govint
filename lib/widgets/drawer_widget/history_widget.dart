import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';
import 'package:govint/dimensions/images.dart';

class HistoryWidgetComponent extends StatefulWidget {
  final String title;
  final String link;
  final String siteIcon;

  const HistoryWidgetComponent(
      {super.key,
      required this.title,
      required this.link,
      required this.siteIcon});

  @override
  State<HistoryWidgetComponent> createState() => _HistoryWidgetComponentState();
}

class _HistoryWidgetComponentState extends State<HistoryWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 0.08.sh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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

class SiteIconWidgetComponent extends StatefulWidget {
  final String siteIcon;

  const SiteIconWidgetComponent({super.key, required this.siteIcon});

  @override
  State<SiteIconWidgetComponent> createState() =>
      _SiteIconWidgetComponentState();
}

class _SiteIconWidgetComponentState extends State<SiteIconWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.08.sw,
      height: 0.08.sw,
      decoration: BoxDecoration(
          color: GColors.lightBlueGrey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(100.r)),
      child: Center(
          child: SizedBox(
              width: 0.04.sw,
              height: 0.04.sw,
              child: Image.asset(widget.siteIcon))),
    );
  }
}


class HistoryDateWidgetComponent extends StatefulWidget {
  final String date;
  const HistoryDateWidgetComponent({super.key, required this.date});

  @override
  State<HistoryDateWidgetComponent> createState() => _HistoryDateWidgetComponentState();
}

class _HistoryDateWidgetComponentState extends State<HistoryDateWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GColors.lightBlueGreyShade100,
      width: 1.sw,
      height: 0.04.sh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 0.04.sw),
           Text(widget.date,
           style: GoogleFonts.lato(
             color: GColors.lightBlack,
             fontSize: 15.sp,
             fontWeight: FontWeight.w500
           ),
           )
        ],
      ),
    );
  }
}
