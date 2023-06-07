import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../widget/appbar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          title: const Text('Home'),
          leading: Flexible(
            child: AppBarIcons(
              function: () {},
              icon: IconlyBold.category,
            ),
          ),
          actions: [
            AppBarIcons(
              function: () {},
              icon: IconlyBold.user_3,
            ),
          ],
        ),
        body: const Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}
