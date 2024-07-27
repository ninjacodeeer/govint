import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/buttons/buttons.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/images.dart';
import 'package:govint/widgets/home_search_bar_widget/home_screen_bookmarks_widget.dart';
import 'package:govint/widgets/home_search_bar_widget/home_search_bar_widget.dart';
import 'package:govint/widgets/tab_bar_widget/drawer_tab_bar_widget.dart';
import 'package:govint/widgets/tab_bar_widget/end_drawer_tab_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(62),
          child: AppBar(
            backgroundColor: GColors.white,
            automaticallyImplyLeading: false,
            titleSpacing: 0.0,
            actions: [Container()],
            title: Padding(
              padding:
                  EdgeInsets.only(left: 0.03.sw, right: 0.02.sw, top: 0.01.sh),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 0.01.sw),
                    child: DrawerButtonComponent(
                        onTap: () => _scaffoldKey.currentState?.openDrawer()),
                  ),
                  const Expanded(child: HomeSearchBarWidgetComponent()),
                  Padding(
                    padding: EdgeInsets.only(right: 0.05.sw, left: 0.02.sw),
                    child: CastButtonComponent(onTap: () {}),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0.03.sw),
                    child: TabsButtonComponent(onTap: () {}),
                  ),
                  MoreButtonComponent(onTap: () {})
                ],
              ),
            ),
          )),
      drawer: Drawer(
        backgroundColor: GColors.white,
        surfaceTintColor: GColors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        width: 0.9.sw,
        child: const DrawerTabBarWidgetComponent(),
      ),
      endDrawer: Drawer(
        backgroundColor: GColors.white,
        surfaceTintColor: GColors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        width: 0.9.sw,
        child: const EndDrawerTabBarWidgetComponent(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: GColors.white,
        surfaceTintColor: GColors.white,
        notchMargin: 0,
        padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
        height: 0.06.sh,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PreviousButtonComponent(onTap: () {}),
            SizedBox(width: 0.052.sw),
            NextButtonComponent(onTap: () {}),
            SizedBox(width: 0.052.sw),
            DownloadsButtonComponent(onTap: () => _scaffoldKey.currentState?.openEndDrawer())
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 0.014.sh,
        crossAxisSpacing: 0.03.sw,
        padding: EdgeInsets.symmetric(horizontal: 0.026.sw, vertical: 0.012.sh),
        children: const [
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.google, title: 'Google'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.youtube, title: 'YouTube'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.facebook, title: 'Facebook'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.instagram, title: 'Instagram'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.twitter, title: 'Twitter'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.dailymotion, title: 'DailyMotion'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.vimeo, title: 'Vimeo'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.metacafe, title: 'MetaCafe'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.navertv, title: 'Naver Tv'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.kakaotv, title: 'Kakao Tv'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.youku, title: 'YouKu'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.mangotv, title: 'Mango Tv'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.soundcloud, title: 'SoundCloud'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.smule, title: 'Smule'),
          HomeScreenBookmarksWidgetComponent(
              siteIcon: GBookmarkImages.sonyliv, title: 'SonyLiv'),
        ],
      ),
    );
  }
}
