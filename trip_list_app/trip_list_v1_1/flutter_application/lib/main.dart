import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter_application/services/database.dart'; // Import your Drift database
import 'package:provider/provider.dart'; // Add this dependency

void main() {
  // Create database instance
  final database = AppDatabase();
  
  runApp(
    // Provide database to entire app
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
      title: 'Trip List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_application/pages/home_page.dart';



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Trip List',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
