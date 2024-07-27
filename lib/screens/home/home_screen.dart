import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/buttons/buttons.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/widgets/tab_bar_widget/drawer_tab_bar_widget.dart';

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
            backgroundColor: Colors.red,
            automaticallyImplyLeading: false,
            titleSpacing: 0.0,
            title: Padding(
              padding:
                  EdgeInsets.only(left: 0.03.sw, right: 0.03.sw, top: 0.01.sh),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DrawerButtonComponent(
                      onTap: () => _scaffoldKey.currentState?.openDrawer())
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
    );
  }
}
