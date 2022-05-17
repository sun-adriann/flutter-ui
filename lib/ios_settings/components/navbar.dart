import 'package:flutter/cupertino.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoSliverNavigationBar(
      largeTitle: Text('Settings'),
    );
  }
}
