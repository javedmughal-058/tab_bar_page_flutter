import 'package:flutter/material.dart';
import 'package:tab_bar_page_flutter/widget/tab_widget.dart';

class MyHomePage extends StatelessWidget {

  final List<String> itemList = ["Menu", "Property", "Gallery"];

  MyHomePage({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic TabBar Example'),
      ),
      body: DefaultTabController(
        length: itemList.length,
        child: Column(
          children: [
            TabBar(
              tabs: [
                for (var item in itemList)
                  Tab(text: item),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  for (var item in itemList)
                    buildTabPage(item),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



