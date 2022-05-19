import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/android_settings_screen.dart';

class IosPopupScreen extends StatefulWidget {
  const IosPopupScreen({Key? key}) : super(key: key);

  @override
  State<IosPopupScreen> createState() => _IosPopupScreenState();
}

class _IosPopupScreenState extends State<IosPopupScreen> {
  void goToAndroidSettingsScreen() {
    Navigator.of(context).pushReplacement(
      CupertinoPageRoute(
        builder: (_) => const AndroidSettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBuilder: (context, index) => _tabBuilder(context),
        tabBar: CupertinoTabBar(
          backgroundColor: const Color(0xFFF2F2F8),
          border: const Border(top: BorderSide.none),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.clock_solid),
              label: "Recents",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.folder_fill),
              label: "Browse",
            )
          ],
        ),
      ),
    );
  }

  Widget _tabBuilder(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            border: null,
            transitionBetweenRoutes: true,
            largeTitle: const Text('Recents'),
            backgroundColor: const Color(0xFFF2F2F8),
            trailing: GestureDetector(
              onTap: () async {
                await showDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierColor: CupertinoColors.inactiveGray.withOpacity(0.4),
                  builder: (context) {
                    return Stack(
                      children: [
                        Positioned(
                          right: 0.5,
                          top: 28,
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              children: [
                                CupertinoListSection.insetGrouped(
                                  dividerMargin: -42,
                                  backgroundColor: Colors.transparent,
                                  children: [
                                    CupertinoListTile.notched(
                                      title: const Text('Icons'),
                                      leadingToTitle: 2.0,
                                      leading: const Icon(
                                        CupertinoIcons.check_mark,
                                        color: CupertinoColors.black,
                                        size: 18.0,
                                      ),
                                      trailing: const Icon(
                                        CupertinoIcons.square_grid_2x2,
                                        color: CupertinoColors.black,
                                        size: 22.0,
                                      ),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                    CupertinoListTile.notched(
                                      title: const Text('List'),
                                      leadingToTitle: 2.0,
                                      leading: const SizedBox(),
                                      trailing: const Icon(
                                        CupertinoIcons.list_bullet,
                                        color: CupertinoColors.black,
                                        size: 22.0,
                                      ),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.5,
                          top: 140,
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              children: [
                                CupertinoListSection.insetGrouped(
                                  dividerMargin: -42,
                                  backgroundColor: Colors.transparent,
                                  children: [
                                    CupertinoListTile.notched(
                                      title: const Text('Name'),
                                      leadingToTitle: 2.0,
                                      leading: Container(),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                    CupertinoListTile.notched(
                                      title: const Text('Kind'),
                                      leadingToTitle: 2.0,
                                      leading: const SizedBox(),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                    CupertinoListTile.notched(
                                      title: const Text('Date'),
                                      leadingToTitle: 2.0,
                                      leading: const Icon(
                                        CupertinoIcons.check_mark,
                                        color: CupertinoColors.black,
                                        size: 18.0,
                                      ),
                                      trailing: const Icon(
                                        CupertinoIcons.chevron_down,
                                        color: CupertinoColors.black,
                                        size: 18.0,
                                      ),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                    CupertinoListTile.notched(
                                      title: const Text('Size'),
                                      leadingToTitle: 2.0,
                                      leading: const SizedBox(),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                    CupertinoListTile.notched(
                                      title: const Text('Tags'),
                                      leadingToTitle: 2.0,
                                      leading: const SizedBox(),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.5,
                          top: 415,
                          child: SizedBox(
                            width: 300,
                            child: Column(
                              children: [
                                CupertinoListSection.insetGrouped(
                                  dividerMargin: -42,
                                  backgroundColor: Colors.transparent,
                                  children: [
                                    CupertinoListTile.notched(
                                      title: const Text('Use groups'),
                                      leadingToTitle: 2.0,
                                      leading: Container(),
                                      onTap: () {
                                        goToAndroidSettingsScreen();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(CupertinoIcons.square_grid_2x2),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 0),
                child: CupertinoSearchTextField(controller: TextEditingController()),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
