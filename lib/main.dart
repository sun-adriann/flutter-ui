import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/ios_settings/ios_settings_screen.dart';

void main() => runApp(const FlutterUiApp());

class FlutterUiApp extends StatelessWidget {
  const FlutterUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter UI App',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(scaffoldBackgroundColor: Color(0xFFF2F2F8)),
      home: IosSettingsScreen(),
    );
  }
}
