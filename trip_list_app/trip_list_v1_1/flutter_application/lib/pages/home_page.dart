import 'package:flutter/material.dart';
import 'package:flutter_application/services/database.dart'; // Updated import
import 'package:flutter_application/pages/gear_management.dart';
import 'package:provider/provider.dart'; // Add this import

class HomePage extends StatelessWidget { // Change to StatelessWidget since we're using Provider
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get database from provider
    final database = Provider.of<AppDatabase>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Trip List', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GearManagementPage()),
                );
              },
              child: const Text('Gear Management'),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_application/services/database_service.dart';
// import 'package:flutter_application/pages/gear_management.dart';


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
  
//   final DatabaseService _databaseService = DatabaseService.instance;
//    final List<Widget> _pages = [
//     const GearManagementPage()
//   ];
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text('Trip List'),
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//     ),
//      body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('Welcome to Trip List', style: TextStyle(fontSize: 24)),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const GearManagementPage()),
//               );
//             },
//             child: const Text('Gear Management'),
//           ),
//         ],
//       ),
//     ),
//   );
//   }
// }


