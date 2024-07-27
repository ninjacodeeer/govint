import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';

class DrawerButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const DrawerButtonComponent({super.key, required this.onTap});

  @override
  State<DrawerButtonComponent> createState() => _DrawerButtonComponentState();
}

class _DrawerButtonComponentState extends State<DrawerButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 24.w,
        height: 24.w,
        child: SvgPicture.asset(GIcons.drawer, color: GColors.lightBlack),
      ),
    );
  }
}

class CastButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const CastButtonComponent({super.key, required this.onTap});

  @override
  State<CastButtonComponent> createState() => _CastButtonComponentState();
}

class _CastButtonComponentState extends State<CastButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 28.w,
        height: 28.w,
        child: SvgPicture.asset(GIcons.cast, color: GColors.lightBlack),
      ),
    );
  }
}

class TabsButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const TabsButtonComponent({super.key, required this.onTap});

  @override
  State<TabsButtonComponent> createState() => _TabsButtonComponentState();
}

class _TabsButtonComponentState extends State<TabsButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 24.w,
        height: 24.w,
        decoration: BoxDecoration(
            border: Border.all(color: GColors.lightBlack, width: 1.8),
            borderRadius: BorderRadius.circular(6.r)),
        child: Center(
            child: Text(
          '1',
          style: GoogleFonts.lato(color: GColors.lightBlack, fontSize: 15.sp),
        )),
      ),
    );
  }
}

class MoreButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const MoreButtonComponent({super.key, required this.onTap});

  @override
  State<MoreButtonComponent> createState() => _MoreButtonComponentState();
}

class _MoreButtonComponentState extends State<MoreButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 26.w,
        height: 26.w,
        child: SvgPicture.asset(GIcons.more, color: GColors.lightBlack),
      ),
    );
  }
}

class PreviousButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const PreviousButtonComponent({super.key, required this.onTap});

  @override
  State<PreviousButtonComponent> createState() =>
      _PreviousButtonComponentState();
}

class _PreviousButtonComponentState extends State<PreviousButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 26.w,
        height: 26.w,
        child: SvgPicture.asset(GIcons.chevronLeft, color: GColors.lightBlack),
      ),
    );
  }
}

class NextButtonComponent extends StatefulWidget {
  final VoidCallback onTap;

  const NextButtonComponent({super.key, required this.onTap});

  @override
  State<NextButtonComponent> createState() => _NextButtonComponentState();
}

class _NextButtonComponentState extends State<NextButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 26.w,
        height: 26.w,
        child: SvgPicture.asset(GIcons.chevronRight, color: GColors.lightBlack),
      ),
    );
  }
}

class DownloadsButtonComponent extends StatefulWidget {
  final VoidCallback onTap;
  const DownloadsButtonComponent({super.key, required this.onTap});

  @override
  State<DownloadsButtonComponent> createState() =>
      _DownloadsButtonComponentState();
}

class _DownloadsButtonComponentState extends State<DownloadsButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 26.w,
        height: 26.w,
        child: SvgPicture.asset(GIcons.downloads, color: GColors.lightBlack),
      ),
    );
  }
}
