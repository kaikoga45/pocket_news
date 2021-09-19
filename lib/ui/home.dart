import 'package:flutter/material.dart';
import 'package:pocket_news/ui/saved.dart';
import 'package:pocket_news/ui/search.dart';
import 'package:pocket_news/ui/setting.dart';
import 'package:pocket_news/ui/today.dart';

class Home extends StatefulWidget {
  static const id = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final ThemeData theme;
  late final List<Widget> listMenu;
  late int index;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => theme = Theme.of(context),
    );

    listMenu = [
      const Today(),
      const Search(),
      const Saved(),
      const Setting(),
    ];
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: listMenu[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() => index = value);
        },
        items: [
          BottomNavigationBarItem(
            icon: index == 0
                ? const Icon(Icons.article)
                : const Icon(Icons.article_outlined),
            label: 'All',
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? const Icon(Icons.search)
                : const Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? const Icon(Icons.bookmark)
                : const Icon(Icons.bookmark_border_outlined),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outline),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
