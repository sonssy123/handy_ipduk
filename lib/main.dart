import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/firebase_options.dart';
import 'package:handy_ipduk/main_screen/launch_screen/launch_screen_view.dart';
import 'package:handy_ipduk/screen_theme_data.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: HandyIpduk()));
}

class HandyIpduk extends StatelessWidget {
  const HandyIpduk({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 820),
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        theme: themeData,
        darkTheme: darkThemeData,
        debugShowCheckedModeBanner: false,
        home: const MainLaunchScreenView(),
      ),
    );
  }
}
