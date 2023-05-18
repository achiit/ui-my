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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
          Padding(
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
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            height: screenHeight*0.25,
                            width: screenWidth*0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: kElevationToShadow[2],
                            ),
                            alignment: Alignment.topRight,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.add, size: 15),
                                      label: Text("INVITE"),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 80),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Text('Nikhil Wipra Das'),
                                      Text('Nikhil Wipra Das'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey.shade200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text('h1'),
          Text('h1'),
        ],
      ),
    );
  }
}
