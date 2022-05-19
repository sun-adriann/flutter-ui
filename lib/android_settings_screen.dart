import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/android_search_settings_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class AndroidSettingsScreen extends StatefulWidget {
  const AndroidSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AndroidSettingsScreen> createState() => _AndroidSettingsScreenState();
}

class _AndroidSettingsScreenState extends State<AndroidSettingsScreen> {
  void goToAndroidSearchScreen() {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (_) => const AndroidSearchSettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F3),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    const SizedBox(height: 70.0),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        const Icon(
                          Icons.account_circle_outlined,
                          color: Color(0xFF0D65D9),
                          size: 48.0,
                        ),
                        const SizedBox(width: 12.0),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        const Text(
                          'Settings',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 36.0,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                    const SizedBox(height: 18.0),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Search settings",
                        fillColor: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  SettingsList(
                    shrinkWrap: true,
                    platform: DevicePlatform.android,
                    physics: const NeverScrollableScrollPhysics(),
                    applicationType: ApplicationType.cupertino,
                    sections: [
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.wifi),
                            title: const Text('Network & internet'),
                            value: const Text('Mobile, Wi-Fi, hotspot'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.devices),
                            title: const Text('Connected devices'),
                            value: const Text('Bluetooth, pairing'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.apps),
                            title: const Text('Apps'),
                            value: const Text('Assistant, recent apps, default apps'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.notifications_outlined),
                            title: const Text('Notifications'),
                            value: const Text('Notification history, conversations'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.battery_std),
                            title: const Text('Battery'),
                            value: const Text('100%'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.storage),
                            title: const Text('Storage'),
                            value: const Text('32% used - 69 GB free'),
                          ),
                        ],
                      ),
                      SettingsSection(
                        tiles: [
                          SettingsTile.navigation(
                            onPressed: (_) {
                              goToAndroidSearchScreen();
                            },
                            leading: const Icon(Icons.volume_up_rounded),
                            title: const Text('Storage'),
                            value: const Text('32% used - 69 GB free'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
