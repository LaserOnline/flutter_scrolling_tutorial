import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../horizontal/MyPost4.dart';
import '../horizontal/MyPost5.dart';
import '../horizontal/MyPost6.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
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
      backgroundColor: Colors.orange,
    );
  }
}
