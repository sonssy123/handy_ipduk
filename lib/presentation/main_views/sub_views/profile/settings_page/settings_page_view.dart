import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/screen_theme_data.dart';
import 'package:handy_ipduk/domain/providers/settings_store.dart';

class SettingsPageView extends ConsumerStatefulWidget {
  const SettingsPageView({super.key});

  @override
  ConsumerState<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends ConsumerState<SettingsPageView> {
  bool isSelectTheme = false;

  @override
  void initState() {
    super.initState();
    isSelectTheme = ref.read(settingsStoreProvider).themeData ==
        ScreenThemedata().darkThemeData;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('설정'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      '테마',
                      style: TextStyle(fontSize: 30),
                    ),
                    trailing: Switch(
                      value: isSelectTheme,
                      onChanged: (value) async {
                        setState(() {
                          isSelectTheme = value;
                        });
                        await ref
                            .read(settingsStoreProvider.notifier)
                            .toggleTheme(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
