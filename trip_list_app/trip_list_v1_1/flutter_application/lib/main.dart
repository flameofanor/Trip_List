import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home.dart';
import 'package:flutter_application/services/database/database.dart'; // Import your Drift database
import 'package:provider/provider.dart'; // Add this dependency

late final List<String> modules;

void main() {
  // Create database instance
  // WidgetsFlutterBinding.ensureInitialized();
  // loadModules();

  final database = AppDatabase();
  runApp(
    Provider.value(
      value: database,
      child: const MyApp(),
    ),
  );
  

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	  debugShowCheckedModeBanner: false,
	  theme: ThemeData(fontFamily: "Roboto"),
      home: HomePage(),
    );
  }
}

// Future<void> loadModules() async {
//     List<String> loaded = [];
//     final userPreferences = UserPreferences();
//     await userPreferences.initialize();
//     if (userPreferences.getModules().contains("climbing")) loaded.add("climbing");
//     if (userPreferences.getModules().contains("camping")) loaded.add("camping");
//     if (userPreferences.getModules().contains("clothing")) loaded.add("clothing");
    
//     modules = loaded;
// }
