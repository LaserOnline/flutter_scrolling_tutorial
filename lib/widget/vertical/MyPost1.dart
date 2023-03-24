import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../horizontal/MyPost4.dart';
import '../horizontal/MyPost5.dart';
import '../horizontal/MyPost6.dart';

class MyPost1 extends StatefulWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  State<MyPost1> createState() => _MyPost1();
}

class _MyPost1 extends State<MyPost1> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        // * แนวตั้ง
        // scrollDirection: Axis.vertical,
        // * แนวนอน
        scrollDirection: Axis.horizontal,
        children: const [
          MyPost4(),
          MyPost5(),
          MyPost6(),
        ],
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
