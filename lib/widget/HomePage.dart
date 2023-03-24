import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scrolling_tutorial/widget/vertical/MyPost1.dart';
import 'package:flutter_scrolling_tutorial/widget/vertical/MyPost2.dart';
import 'package:flutter_scrolling_tutorial/widget/vertical/MyPost3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        // * แนวตั้ง
        scrollDirection: Axis.vertical,
        // * แนวนอน
        // scrollDirection: Axis.horizontal,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
