import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/screens/drawer/bookmarks_screen.dart';
import 'package:govint/screens/drawer/history_screen.dart';

class DrawerTabBarWidgetComponent extends StatelessWidget {
  const DrawerTabBarWidgetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              tabs: const [Text('History'), Text('Bookmarks')],
            ),
            const Expanded(
              child: TabBarView(children: [HistoryScreen(), BookmarksScreen()]),
            )
          ],
        ),
      ),
    );
  }
}
