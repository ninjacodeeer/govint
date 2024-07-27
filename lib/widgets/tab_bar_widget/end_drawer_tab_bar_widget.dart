import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/screens/drawer/history_screen.dart';
import 'package:govint/screens/end-drawer/downloads_screen/downloads_screen.dart';


class EndDrawerTabBarWidgetComponent extends StatelessWidget {
  const EndDrawerTabBarWidgetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: EdgeInsets.only(top: 0.02.sh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.8,
              indicatorColor: GColors.primaryColor,
              labelStyle: GoogleFonts.lato(
                  color: GColors.primaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
              labelColor: GColors.primaryColor,
              unselectedLabelColor: GColors.blueGrey,
              labelPadding: EdgeInsets.symmetric(vertical: 0.012.sh),
              splashFactory: NoSplash.splashFactory,
              dividerColor: GColors.lightBlueGrey.withOpacity(0.2),
              tabs: const [Text('Downloads'), Text('Videos'), Text('Audios')],
            ),
            Expanded(
              child: TabBarView(children: [DownloadsScreen(), Placeholder(), Placeholder()]),
            )
          ],
        ),
      ),
    );
  }
}
