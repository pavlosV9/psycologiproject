import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psycologi/Providers/mainProvider.dart';
import 'package:psycologi/UI/selectCity.dart';
import 'UI/selectCategory.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (context) => MainProvider(), // Initialize the provider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Selectcategory(),
        '/citypage': (context) => const SelectCity()

      },
      initialRoute: '/citypage', // The app will open with the home page
    );
  }
}
