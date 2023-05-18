import 'package:flutter/material.dart';

class TabController extends StatefulWidget {
  const TabController({
    Key? key,
    required int length,
    int initialIndex = 0,
    required Widget child,
  });

  @override
  State<TabController> createState() => _TabControllerState();
}

class _TabControllerState extends State<TabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Icon(Icons.safety_check),
              Icon(Icons.safety_check),
              Icon(Icons.safety_check),
            ],
          ),
          title: const Text('Woolha.com Flutter Tutorial'),
          backgroundColor: Colors.teal,
        ),
        body: const TabBarView(
          // dragStartBehavior: DragStartBehavior.down,
          children: [
            // Add widgets here
            Text('HI there'),
          ],
        ),
      ),
    );
  }
}
