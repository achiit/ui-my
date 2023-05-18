import 'package:assignment_netclan/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() {
    return _ExploreScreenState();
  }
}

class _ExploreScreenState extends State<ExploreScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Icon(Icons.access_alarm),
            Icon(Icons.access_alarm),
            Icon(Icons.access_alarm),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {},
              color: Colors.white,
            ),
          )
        ],
        title: const Column(
          children: [
            Row(
              children: [
                Text(
                  'Howdy Anupam Khosti !!',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.gps_fixed,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 17,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Anand nagar, Pune",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 6, 57, 98),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AnimSearchBar(
            onSubmitted: (value) {},
            width: 250,
            textController: textController,
            onSuffixTap: () {
              setState(
                () {
                  textController.clear();
                },
              );
            },
          ),
          
          Text('h1'),
          Text('h1'),
        ],
      ),
    );
  }
}
