import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/buttons/buttons.dart';
import 'package:govint/dimensions/colors.dart';

class DownloadsWidgetComponent extends StatefulWidget {
  final String title;
  const DownloadsWidgetComponent({super.key, required this.title});

  @override
  State<DownloadsWidgetComponent> createState() => _DownloadsWidgetComponentState();
}

class _DownloadsWidgetComponentState extends State<DownloadsWidgetComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 0.1.sh,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 0.2.sw,
            height: 1.sh,
            child: Center(
              child: Container(
                width: 0.14.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.r)
                ),
              ),
            ),
          ),
          SizedBox(
            width: 0.62.sw,
            height: 1.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 0.016.sh),
                Text(widget.title, style: GoogleFonts.lato(
                  color: GColors.lightBlack,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          SizedBox(
            width: 0.08.sw,
            height: 1.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 0.018.sh),
                MoreButtonComponent(onTap: (){})
              ],
            ),
          )
        ],
      ),
    );
  }
}
