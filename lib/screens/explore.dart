import 'package:assignment_netclan/widgets/custom_appbar.dart';
import 'package:assignment_netclan/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabController,
          tabs: const [
            Icon(Icons.people, color: Colors.white, size: 35,),
            Icon(Icons.email, color: Colors.white, size: 35,),
            Icon(Icons.house, color: Colors.white, size: 35,),
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
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'Howdy Anupam Khosti !!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                    style: TextStyle(color: Colors.white, fontSize: 13),
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimSearchBar(
                        onSubmitted: (value) {},
                        width: 310,
                        textController: textController,
                        onSuffixTap: () {
                          setState(
                            () {
                              textController.clear();
                            },
                          );
                        },
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom :20.0),
                    child: custom_stack(screenWidth: screenWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom :20.0),
                    child: custom_stack(screenWidth: screenWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom :20.0),
                    child: custom_stack(screenWidth: screenWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom :20.0),
                    child: custom_stack(screenWidth: screenWidth),
                  ),
                ],
              ),
            ),
          ),
          Text('h1'),
          Text('h1'),
        ],
      ),
    );
  }
}

