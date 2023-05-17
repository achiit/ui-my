import 'package:assignment_netclan/screens/explore.dart';
import 'package:assignment_netclan/screens/refine.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 76, 27, 181),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const ExploreScreen();
    var activePageTitle = 'Explore';

    if (_selectedIndex == 1) {
      activePage = const RefineScreen();
      activePageTitle = 'Refine';
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.explore,
              ),
              label: activePageTitle,
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.refresh_outlined,
              ),
              label: activePageTitle,
            ),
          ],
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.black,
          fixedColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          iconSize: 34,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
