import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class IosSettingsPage extends StatelessWidget {
  const IosSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            border: null,
            backgroundColor: Color(0xFFF2F2F8),
            largeTitle: Text('Settings'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 4.0),
                        Icon(
                          Icons.account_circle,
                          size: 65.0,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Sign in to your iPhone',
                              style: TextStyle(
                                color: CupertinoColors.activeBlue,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Set up iCloud, the App store, and more.',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: CupertinoColors.inactiveGray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SettingsList(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  applicationType: ApplicationType.cupertino,
                  sections: [
                    SettingsSection(
                      margin: const EdgeInsetsDirectional.fromSTEB(
                          0, 12.0, 0, 16.0),
                      tiles: [
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.hourglass_empty,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Screen time'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      margin: const EdgeInsetsDirectional.only(
                        top: 16.0,
                        bottom: 16.0,
                      ),
                      tiles: [
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('General'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.activeBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.settings_accessibility_rounded,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Accessibility'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.activeBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.back_hand,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Privacy'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      margin: const EdgeInsetsDirectional.only(
                        top: 16.0,
                        bottom: 16.0,
                      ),
                      tiles: [
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade600,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.key,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Passwords'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      margin: const EdgeInsetsDirectional.only(
                        top: 16.0,
                        bottom: 16.0,
                      ),
                      tiles: [
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.public,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Safari'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.newspaper,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('News'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.translate_outlined,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Translate'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade700,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.map_rounded,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Maps'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade900,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: Icon(
                              Icons.short_text,
                              color: Colors.pinkAccent.shade100,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Shortcuts'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Health'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: Colors.pink.shade900,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.light_mode,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Siri & Search'),
                        ),
                        SettingsTile.navigation(
                          leading: Container(
                            width: 26.0,
                            height: 26.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: const Icon(
                              Icons.stay_primary_landscape_outlined,
                              color: Colors.blue,
                              size: 18.0,
                            ),
                          ),
                          title: const Text('Photos'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
    ;
  }
}
