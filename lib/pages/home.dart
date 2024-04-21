import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _homePageTabController;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _homePageTabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _homePageTabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          bottom: TabBar(controller: _homePageTabController, tabs: const [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "Dashboard",
            ),
            Tab(
              text: "Search",
            ),
          ]),
        ),
        body: TabBarView(
          controller: _homePageTabController,
          children: const [
            Center(
              child: Text("Home"),
            ),
            Center(
              child: Text("Dashboard"),
            ),
            Center(
              child: Text("Search"),
            )
          ],
        ));
  }
}
