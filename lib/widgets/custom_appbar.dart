import 'package:flutter/material.dart';

class custom_appbar {
    static AppBar myAppBar() {
    return AppBar(
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
    );
  }
}
