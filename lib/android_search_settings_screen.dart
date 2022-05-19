import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/ios_settings_screen.dart';

class AndroidSearchSettingsScreen extends StatefulWidget {
  const AndroidSearchSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AndroidSearchSettingsScreen> createState() => _AndroidSearchSettingsScreenState();
}

class _AndroidSearchSettingsScreenState extends State<AndroidSearchSettingsScreen> {
  void goToAndroidSettingsScreen() {
    Navigator.of(context).pushReplacement(
      CupertinoPageRoute(
        builder: (_) => const IosSettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87, //change your color here
        ),
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0.4,
        title: const Text(
          'Search settings',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
            CupertinoPageRoute(
              builder: (_) => const IosSettingsScreen(),
            ),
            (_) => false,
          );
        },
        child: Center(
          child: SizedBox(
            height: 170,
            child: Column(
              children: const [
                Icon(Icons.search, size: 32.0),
                SizedBox(height: 14.0),
                Text(
                  'Search settings',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
