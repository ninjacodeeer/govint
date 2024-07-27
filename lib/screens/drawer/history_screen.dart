import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govint/dimensions/colors.dart';
import 'package:govint/dimensions/icons.dart';
import 'package:govint/dimensions/images.dart';
import 'package:govint/widgets/drawer_widget/history_search_widget.dart';
import 'package:govint/widgets/drawer_widget/history_widget.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool _openHistorySearch = false;
  List<Map<String, String>> _foundHistories = [];

  @override
  void initState() {
    _foundHistories = historyMapList;
    super.initState();
    setState(() {});
  }

  List<Map<String, Object>> resultSet = [];

  late final TextEditingController controller = TextEditingController()
    ..addListener(() {
      resultSet = historyMapList
          .where((e) => "${e['title']}"
              .toLowerCase()
              .contains(controller.text.toLowerCase()))
          .toList();
      setState(() {});
    });

  // final now = DateTime.now();
  String formatter = DateFormat('yMd').format(DateTime.now());
  static final nowDate = DateFormat('yMMMMEEEEd').format(DateTime.now());

  List<Map<String, String>> historyMapList = [
    {
      'date': '$nowDate',
      'title': 'Тохир Содиков - "Шамол"',
      'link':
          'https://www.youtube.com/watch?v=7wtrtZ-_OZM&list=RDm1Kgy-DUmpE&index=2',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': '$nowDate',
      'title': 'Ozodbek Nazarbekov - Sarson | Озодбек Назарбеков - Сарсон',
      'link':
          'https://www.youtube.com/watch?v=g_uas0mKRLI&list=RDm1Kgy-DUmpE&index=4',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': '$nowDate',
      'title':
          'Munisa Rizayeva - Jonginam (cover Laylo Aliyeva) (Official Music Video)',
      'link':
          'https://www.google.com/search?q=Munisa+Rizayeva+-+Jonginam+%28cover+Laylo+Aliyeva%29+%28Official+Music+Video%29&sca_esv=247eb50602a83f19&sca_upv=1&sxsrf=ADLYWIKqgQqDd3TuUIsdoMpYoE0k8kQC7A%3A1722013568490&source=hp&ei=gNejZvexG8_HwPAPkLKm2Ak&iflsig=AL9hbdgAAAAAZqPlkKpfPgiw4ByxVjdHRxrY72hFYMEU&ved=0ahUKEwj38a64mMWHAxXPIxAIHRCZCZsQ4dUDCBY&uact=5&oq=Munisa+Rizayeva+-+Jonginam+%28cover+Laylo+Aliyeva%29+%28Official+Music+Video%29&gs_lp=Egdnd3Mtd2l6GgIYASJHTXVuaXNhIFJpemF5ZXZhIC0gSm9uZ2luYW0gKGNvdmVyIExheWxvIEFsaXlldmEpIChPZmZpY2lhbCBNdXNpYyBWaWRlbykyDRAjGCcY-AUY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyChAjGCcY6gIYiwMyEBAuGCcYqAMY6gIYiwMYnANIjRJQtAdYtAdwAXgAkAEAmAEAoAEAqgEAuAEDyAEA-AEC-AEBmAIBoAIKqAIKmAMKkgcBMaAHAA&sclient=gws-wiz',
      'siteIcon': GBookmarkImages.google
    },
    {
      'date': '$nowDate',
      'title': 'Sevak & JANAGA — На грани [ПРЕМЬЕРА | mood video]',
      'link':
          'https://www.youtube.com/watch?v=fS6U1iP6jPg&list=RDm1Kgy-DUmpE&index=9',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': '$nowDate',
      'title': 'Nilufar Usmonova - Qaray olasanmi (Ibrohim Nurmatov)',
      'link':
          'https://www.google.com/search?q=Nilufar+Usmonova+-+Qaray+olasanmi+%28Ibrohim+Nurmatov%29&sca_esv=247eb50602a83f19&sca_upv=1&sxsrf=ADLYWIKLzlf8xt_2RBMhNL--UuAWBdeafA%3A1722013572838&ei=hNejZqPsMoiuwPAPyfnzoQg&ved=0ahUKEwijvrq6mMWHAxUIFxAIHcn8PIQQ4dUDCBA&uact=5&oq=Nilufar+Usmonova+-+Qaray+olasanmi+%28Ibrohim+Nurmatov%29&gs_lp=Egxnd3Mtd2l6LXNlcnAaAhgCIjROaWx1ZmFyIFVzbW9ub3ZhIC0gUWFyYXkgb2xhc2FubWkgKElicm9oaW0gTnVybWF0b3YpMggQABiABBiiBEiZE1CbCFibCHABeACQAQCYAe0BoAHtAaoBAzItMbgBA8gBAPgBAfgBApgCAqAC-QGoAg7CAgcQIxgnGOoCwgIKECMYJxjqAhiLA8ICFBAAGIAEGJECGLQCGIoFGOoC2AEBmAMKugYGCAEQARgBkgcFMS4wLjGgB8EB&sclient=gws-wiz-serp',
      'siteIcon': GBookmarkImages.google
    },
    {
      'date': 'Friday, July 26, 2024',
      'title': 'HammAli & Navai - У окна',
      'link':
          'https://www.youtube.com/watch?v=olOnunHLoUc&list=RDm1Kgy-DUmpE&index=11',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title': 'Jah Khalib – Искал-Нашёл | Премьера клипа',
      'link':
          'https://www.youtube.com/watch?v=io-BG2YhXrA&list=RDm1Kgy-DUmpE&index=13',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title':
          'Munisa Rizayeva & Konsta - O\'ylamading | Муниса Ризаева & Конста - Уйламадинг',
      'link':
          'https://www.youtube.com/watch?v=c7DwV2HMmNw&list=RDm1Kgy-DUmpE&index=17',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title': 'G\'aybulla Tursunov - Janona (Premyera)',
      'link':
          'https://www.youtube.com/watch?v=uVCDKfV69wA&list=RDm1Kgy-DUmpE&index=26',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title': 'Andro, ELMAN, TONI, MONA — Зари (Official Music Video)',
      'link':
          'https://www.youtube.com/watch?v=4OUFYyiMgM0&list=RDm1Kgy-DUmpE&index=31',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title':
          'Ulug\'bek Rahmatullayev - Layloyimsan | Улугбек Рахматуллаев - Лайлойимсан',
      'link':
          'https://www.youtube.com/watch?v=Apta4t3PP6U&list=RDm1Kgy-DUmpE&index=40',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Friday, July 26, 2024',
      'title': 'Shaxriyor Izhor | Шахриёр Изхор',
      'link':
          'https://www.youtube.com/watch?v=eXJH1kHt_Vk&list=RDm1Kgy-DUmpE&index=47',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Nilufar Usmonova - Erkalaydi (Official Music Video)',
      'link':
          'https://www.youtube.com/watch?v=W5CZw-345Pg&list=RDm1Kgy-DUmpE&index=46',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Konsta & Dilnoz - U haqida (AUDIO)',
      'link': 'https://www.youtube.com/watch?v=E00y1bAMkN0',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Gafur - Калейдоскоп',
      'link': 'https://www.youtube.com/watch?v=gas85RqFdyM',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Otabek Muhammadzohid - Mayli telba denglar',
      'link': 'https://www.youtube.com/watch?v=cDb9Vkkpx0E',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title':
          'Benom guruhi - Sevmasam degandim | Беном гурухи - Севмасам дегандим',
      'link': 'https://www.youtube.com/watch?v=RBiAWIu4zps',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Мот & JONY - Лилии (Премьера клипа, 2021)',
      'link': 'https://www.youtube.com/watch?v=pNU_ImrnyVU',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Xcho - Музыка в ночи (Official Audio)',
      'link': 'https://www.youtube.com/watch?v=2GQXhYeVeqc',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Andro — Дай мне только шанс (Official Music Video)',
      'link': 'https://www.youtube.com/watch?v=IR1ctl735N8',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Elyanna - Tamally Maak x Calling U (Live at El Rey Theatre)',
      'link': 'https://www.youtube.com/watch?v=jaEMNlSsE4I',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Alexander Rybak - Fairytale - multilingual subtitles, HD',
      'link': 'https://www.youtube.com/watch?v=KgA2TpKJC30',
      'siteIcon': GBookmarkImages.youtube
    },
    {
      'date': 'Thursday, July 25, 2024',
      'title': 'Grouped ListView (Flutter Sticky Header)',
      'link': 'https://www.youtube.com/watch?v=ndYxhCE5bMk',
      'siteIcon': GBookmarkImages.youtube
    },
  ];

  void _runFilter(String enteredKeyword) {
    List<Map<String, String>> results = [];
    if (enteredKeyword.isEmpty) {
      results = historyMapList;
    } else {
      results = historyMapList
          .where((title) => title['title']!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundHistories = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(formatter);

    return Scaffold(
      backgroundColor: GColors.white,
      body: Column(
        children: [
          _openHistorySearch
              ? SearchHistoryWidget(onChanged: (value) => _runFilter(value))
              : Container(),
          Expanded(
            child: GroupedListView<dynamic, dynamic>(
                useStickyGroupSeparators: true,
                elements: _foundHistories,
                sort: false,
                stickyHeaderBackgroundColor: GColors.lightBlueGreyShade100,
                groupBy: (element) => element['date'],
                groupComparator: (value1, value2) => value2.compareTo(value1),
                padding: EdgeInsets.zero,
                groupSeparatorBuilder: (value) {
                  return HistoryDateWidgetComponent(date: value);
                },
                // itemCount: _searchedList.length,
                itemBuilder: (context, element) {
                  return HistoryWidgetComponent(
                      title: element['title'],
                      link: element['link'],
                      siteIcon: element['siteIcon']);
                }),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: GColors.white,
            border: Border(
                top: BorderSide(
                    width: 0.5,
                    color: GColors.lightBlueGrey.withOpacity(0.2)))),
        child: TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            surfaceTintColor: MaterialStatePropertyAll(GColors.white),
            overlayColor: MaterialStatePropertyAll(GColors.transparent),
          ),
          child: Text('Delete all',
              style: GoogleFonts.lato(
                  color: GColors.pinkyRed,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _openHistorySearch = !_openHistorySearch;
          });
        },
        backgroundColor: GColors.primaryColor,
        foregroundColor: GColors.white,
        shape: const CircleBorder(),
        child: _openHistorySearch
            ? SvgPicture.asset(GIcons.cross, color: GColors.white)
            : SvgPicture.asset(GIcons.search, color: GColors.white),
      ),
    );
  }
}
