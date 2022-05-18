import 'package:flutter/cupertino.dart';

class IosPopupScreen extends StatelessWidget {
  const IosPopupScreen({Key? key}) : super(key: key);

  Widget _tabBuilder(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            border: null,
            largeTitle: const Text('Recents'),
            transitionBetweenRoutes: true,
            backgroundColor: const Color(0xFFF2F2F8),
            trailing: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: CupertinoContextMenu(
                    actions: [
                      CupertinoContextMenuAction(
                        child: const Text('Action one'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoContextMenuAction(
                        child: const Text('Action two'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                    child: const Icon(CupertinoIcons.square_grid_2x2),
                  ),
                )),
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
}
