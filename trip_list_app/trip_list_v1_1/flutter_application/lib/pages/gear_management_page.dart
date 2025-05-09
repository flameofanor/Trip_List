// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_application/services/database/database.dart'; // Updated import
// import 'package:provider/provider.dart';

// class GearManagementPage extends StatefulWidget {
//   const GearManagementPage({super.key});

//   @override
//   State<GearManagementPage> createState() => _GearManagementPageState();
// }

// class _GearManagementPageState extends State<GearManagementPage> {
//   String? gearName;
//   int? gearQuantity; 
//   int? gearWeight;

//   @override
//   Widget build()

// @override
//  Widget build(BuildContext context) {
//     final database = Provider.of<AppDatabase>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gear Management'),
//       ),
//       // Add a StreamBuilder to display gear items reactively
//       body: Lis(
//         allData =  database.watchAllMasterGear(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
			
//             return const Center(child: CircularProgressIndicator());
//           }
          
//           if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No gear items found'));
//           }
          
//           final gearItems = snapshot.data!;
//           return ListView.builder(
//             itemCount: gearItems.length,
//             itemBuilder: (context, index) {
//               final item = gearItems[index];
//               return ListTile(
//                 title: Text(item.name),
//                 subtitle: Text('${item.getName()} • Qty: ${item.getQuantity()}'),
//                 // onTap: editGear,
//               );
//             },
//           );
//           /*
//           Is somewhere here where I can make my gear clickable / editable? Also check out the groovy way that I designed the 
//           GUI in my notebook. its pretty swifty methinks
//           */
//         },
//       ),
//       floatingActionButton: _addGearButton(context),
//     );
//   }

//   // void editGear() {
//   //   Page _editGear(BuildContext context) {
//   //     //maybe do a new page for editing gear? or like an overlay?
//   //   }
//   // }


//   Widget _addGearButton(BuildContext context) {
//     final database = Provider.of<AppDatabase>(context, listen: false);
    
//     return FloatingActionButton(
//       onPressed: () {
//         double h = 10;
//         gearName = null;
//         gearQuantity = null; 
//         gearWeight = null;
//         showDialog(
//           context: context,
//           builder: (_) => AlertDialog(
//             title: const Text('Add Gear'),
//             content: Column(
//               mainAxisSize: MainAxisSize.min, // Make dialog smaller
//               children: [
//                 TextField(
//                   onChanged: (value) {
//                     setState(() {
//                       gearName = value;
//                     });
//                   },
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Gear Name',
//                   )
//                 ),
//                 SizedBox(height: h),
//                 // DropdownButtonFormField<String>(
//                 //   decoration: const InputDecoration(
//                 //     border: OutlineInputBorder(),
//                 //     labelText: 'Gear Type',
//                 //     hintText: 'Select Gear Type',
//                 //   ),
//                   // value: gearType,
//                   // items: const [
//                   //   DropdownMenuItem(
//                   //     value: 'climbing',
//                   //     child: Text('Climbing'),
//                   //   ),
//                   // ],
//                 //   onChanged: (value) {
//                 //     setState(() {
//                 //       gearType = value!;
//                 //     });
//                 //   },
//                 // ),
//                 SizedBox(height: h),
//                 TextField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'qty',
//                   ),
//                   keyboardType: TextInputType.number,
//                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                   onChanged: (value) {
//                     setState(() {
//                       gearQuantity = int.tryParse(value) ?? 0;
//                     });
//                   },
//                 ),
//                 SizedBox(height: h),
//                 TextField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Weight (g)',
//                     hintText: 'Enter weight in grams',
//                   ),
//                   keyboardType: TextInputType.numberWithOptions(decimal: true),
//                   onChanged: (value) {
//                     setState(() {
//                       double? parsedValue = double.tryParse(value);
//                       if (parsedValue != null) {
//                         gearWeight = (parsedValue * 10).toInt();
//                       } else {
//                         gearWeight = 0;
//                       }
//                     });
//                   },
//                 ),
//                 SizedBox(height: h),
//                 SizedBox(height: h),
//                 ElevatedButton(
//                   onPressed: () async {
//                     if (gearName != null && gearQuantity != null) {
//                       database.addGearMaster(
//                         gearName!, 
//                         gearQuantity!, 
//                         gearWeight ?? 0,
//                       );
//                       Navigator.of(context).pop();
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Please fill in all required fields')),
//                       );
//                     }
//                   },
//                   child: const Text('Add Gear'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       child: const Icon(Icons.add),
//     );
//   }


// // Widget _editGearButton(BuildContext context) { //pop up for gear editing. make all of these for mobile app emulator though!
// // // later add options for web and desktop if still desired)
// //   final database = Provider.of<AppDatabase>(context, listen: false);

// // }

// }