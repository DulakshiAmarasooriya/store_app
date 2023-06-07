import 'package:api_store_app/consts/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../widget/appbar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _texteditingcontroller;

  @override
  void initState() {
    _texteditingcontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _texteditingcontroller.dispose();
    super.dispose();
  }

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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _texteditingcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: Theme.of(context).cardColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    suffix: Icon(
                      IconlyLight.search,
                      color: lightIconColor,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
