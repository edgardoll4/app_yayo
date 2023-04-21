import 'package:flutter/material.dart';
import 'package:app_yayo/widgets/card_table.dart';
import 'package:app_yayo/widgets/custom_botton_navigation.dart';

import 'package:app_yayo/widgets/backround.dart';
import 'package:app_yayo/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        elevation: 15,
      ),
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title
          PageTitle(),
          // Card table
          CardTable(),
        ],
      ),
    );
  }
}
