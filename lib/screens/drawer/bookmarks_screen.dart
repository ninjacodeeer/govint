import 'package:flutter/material.dart';
import 'package:govint/dimensions/images.dart';
import 'package:govint/widgets/drawer_widget/bookmarks_widget_component.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  List<Map<String, String>> bookmarksMapList = [
    {
      'siteIcon': GBookmarkImages.google,
      'title': 'Google',
      'link': 'https://www.google.com'
    },
    {
      'siteIcon': GBookmarkImages.youtube,
      'title': 'YouTube',
      'link': 'https://www.youtube.com'
    },
    {
      'siteIcon': GBookmarkImages.facebook,
      'title': 'Facebook',
      'link': 'https://www.facebook.com'
    },
    {
      'siteIcon': GBookmarkImages.instagram,
      'title': 'Instagram',
      'link': 'https://www.instagram.com'
    },
    {
      'siteIcon': GBookmarkImages.twitter,
      'title': 'Twitter',
      'link': 'https://twitter.com'
    },
    {
      'siteIcon': GBookmarkImages.dailymotion,
      'title': 'DailyMotion',
      'link': 'https://www.dailymotion.com'
    },
    {
      'siteIcon': GBookmarkImages.vimeo,
      'title': 'Vimeo',
      'link': 'https://vimeo.com'
    },
    {
      'siteIcon': GBookmarkImages.metacafe,
      'title': 'MetaCafe',
      'link': 'https://www.metacafe.com'
    },
    {
      'siteIcon': GBookmarkImages.navertv,
      'title': 'Naver Tv',
      'link': 'https://tv.naver.com'
    },
    {
      'siteIcon': GBookmarkImages.kakaotv,
      'title': 'Kakao Tv',
      'link': 'https://tv.kakao.com'
    },
    {
      'siteIcon': GBookmarkImages.youku,
      'title': 'YouKu',
      'link': 'https://www.youku.tv'
    },
    {
      'siteIcon': GBookmarkImages.mangotv,
      'title': 'Mango Tv',
      'link': 'https://w.mgtv.com'
    },
    {
      'siteIcon': GBookmarkImages.soundcloud,
      'title': 'SoundCloud',
      'link': 'https://soundcloud.com'
    },
    {
      'siteIcon': GBookmarkImages.smule,
      'title': 'Smule',
      'link': 'https://www.smule.com'
    },
    {
      'siteIcon': GBookmarkImages.sonyliv,
      'title': 'SonyLiv',
      'link': 'https://www.sonyliv.com'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: bookmarksMapList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: BookmarksWidgetComponent(
                siteIcon: '${bookmarksMapList[index]['siteIcon']}',
                title: '${bookmarksMapList[index]['title']}',
                link: '${bookmarksMapList[index]['link']}'),
          );
        });
  }
}
