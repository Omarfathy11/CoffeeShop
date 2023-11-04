import 'dart:collection';

import 'package:coffeeshop/widgets/home_bottom_bar.dart';
import 'package:coffeeshop/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handTableSelection);
    super.initState();
  }

  _handTableSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  "It's a Great Day for Coffee",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find for Coffee",
                      hintStyle:
                          TextStyle(color: Colors.white..withOpacity(0.5)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(controller: _tabController,
              labelColor: Color(0xFFE57734),
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Color(0xFFE57734)
                ),
                insets: EdgeInsets.symmetric(horizontal: 16),
              ),
              labelStyle: const TextStyle(
                fontSize: 16, 
              ),labelPadding: const EdgeInsets.symmetric(horizontal: 16),
               tabs: const [
                Tab(
                  text: "Hot Coffee",
                ),
                Tab(
                  text: "Cold Coffee",
                ),
                Tab(
                  text: "Cappuiccino",
                ),
                Tab(
                  text: "Tea",
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
