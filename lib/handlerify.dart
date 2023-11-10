import 'package:flutter/material.dart';
import 'package:handlerify/ui/pages/reports_page.dart';
import 'package:handlerify/ui/pages/activity_page.dart';
import 'package:handlerify/ui/pages/statistics_page.dart';

class HandlerifyApp extends StatelessWidget {
  const HandlerifyApp({super.key});

  // application root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handlerify',
      theme: ThemeData.dark(),
      home: const Handlerify(title: 'Handerlify'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Handlerify extends StatefulWidget {
  const Handlerify({super.key, required this.title});
  final String title;

  @override
  State<Handlerify> createState() => _HandlerifyState();
}

class _HandlerifyState extends State<Handlerify> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    ActivityPage(),
    HistoryPage(),
    ReportsPage()
  ];

  static const List<String> _pageTitles = <String>[
    'Today',
    'History',
    'Reports'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        title: Text(_pageTitles[_selectedIndex]),
        centerTitle: false,
        elevation: 0,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Reports',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
