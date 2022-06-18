// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample_ui/view/bottom/account.dart';
import 'package:sample_ui/view/bottom/feeds.dart';
import 'package:sample_ui/view/bottom/history.dart';
import 'package:sample_ui/view/bottom/leads.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [
    FeedsScreen(),
    AccountScreen(),
    LeadsScreen(),
    const HistoryScreen()
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, child) {
          return _pages[updatedIndex];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (context, int updatedIndex, Widget? _) {
            return BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedFontSize: 0,
              selectedFontSize: 0,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                  selectedIndexNotifier.value = _selectedIndex;
                });
              },
              currentIndex: _selectedIndex,
              backgroundColor: Colors.black,
              selectedItemColor: HexColor("#E6BB2C"),
              unselectedItemColor: Colors.white,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.view_column),
                  label: 'Feed',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance),
                  label: 'ACCOUNT',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.leaderboard),
                  label: 'leads',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work_history),
                  label: 'leads',
                ),
              ],
            );
          }),
    );
  }
}
