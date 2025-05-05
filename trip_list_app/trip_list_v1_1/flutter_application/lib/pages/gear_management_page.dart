import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/services/database/database.dart'; // Updated import
import 'package:provider/provider.dart';

class GearManagementPage extends StatefulWidget {
  const GearManagementPage({super.key});

  @override
  State<GearManagementPage> createState() => _GearManagementPageState();
}

class _GearManagementPageState extends State<GearManagementPage> {
  String? gearName;
  String? gearType;
  int? gearQuantity; 
  int? weight;
  int? price;

  @override
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gear Management'),
      ),
      // Add a StreamBuilder to display gear items reactively
      body: StreamBuilder<List<MasterGearData>>(
        stream: database.watchAllMasterGear(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No gear items found'));
          }
          
          final gearItems = snapshot.data!;
          return ListView.builder(
            itemCount: gearItems.length,
            itemBuilder: (context, index) {
              final item = gearItems[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('${item.type} • Qty: ${item.quantity}'),
                trailing: Text('\$${(item.price / 100).toStringAsFixed(2)}'),
                onTap: editGear,
              );
            },
          );
          /*
          Is somewhere here where I can make my gear clickable / editable? Also check out the groovy way that I designed the 
          GUI in my notebook. its pretty swifty methinks
          */
        },
      ),
      floatingActionButton: _addGearButton(context),
    );
  }

  void editGear() {
    Page _editGear(BuildContext context) {
      //maybe do a new page for editing gear? or like an overlay?
    }
  }


  Widget _addGearButton(BuildContext context) {
    final database = Provider.of<AppDatabase>(context, listen: false);
    
    return FloatingActionButton(
      onPressed: () {
        double h = 10;
        gearName = null;
        gearType = null;
        gearQuantity = null; 
        weight = null;
        price = null;
        
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Add Gear'),
            content: Column(
              mainAxisSize: MainAxisSize.min, // Make dialog smaller
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      gearName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Gear Name',
                  )
                ),
                SizedBox(height: h),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gear Type',
                    hintText: 'Select Gear Type',
                  ),
                  value: gearType,
                  items: const [
                    DropdownMenuItem(
                      value: 'climbing',
                      child: Text('Climbing'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      gearType = value!;
                    });
                  },
                ),
                SizedBox(height: h),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'qty',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) {
                    setState(() {
                      gearQuantity = int.tryParse(value) ?? 0;
                    });
                  },
                ),
                SizedBox(height: h),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight (g)',
                    hintText: 'Enter weight in grams',
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  onChanged: (value) {
                    setState(() {
                      double? parsedValue = double.tryParse(value);
                      if (parsedValue != null) {
                        weight = (parsedValue * 10).toInt();
                      } else {
                        weight = 0;
                      }
                    });
                  },
                ),
                SizedBox(height: h),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price (\$)',
                    hintText: 'Enter price in dollars',
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  onChanged: (value) {
                    setState(() {
                      double? parsedValue = double.tryParse(value);
                      if (parsedValue != null) {
                        price = (parsedValue * 100).toInt();
                      } else {
                        price = 0;
                      }
                    });
                  },
                ),
                SizedBox(height: h),
                ElevatedButton(
                  onPressed: () async {
                    if (gearName != null && gearType != null && gearQuantity != null && weight != null && price != null) {
                      database.addGear(
                        gearName!, 
                        gearType!, 
                        gearQuantity!, 
                        weight!, 
                        price!
                      );
                      Navigator.of(context).pop();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please fill in all fields')),
                      );
                    }
                  },
                  child: const Text('Add Gear'),
                ),
              ],
            ),
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

// Widget _editGearButton(BuildContext context) { //pop up for gear editing. make all of these for mobile app emulator though!
// // later add options for web and desktop if still desired)
//   final database = Provider.of<AppDatabase>(context, listen: false);

// }


// import 'package:flutter/material.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'package:flutter_application/services/database_service.dart';
// import 'package:flutter/services.dart';

// class GearManagementPage extends StatefulWidget {
//   const GearManagementPage({super.key});

//   @override
//   State<GearManagementPage> createState() => _GearManagementPageState();
// }

// class _GearManagementPageState extends State<GearManagementPage> {
//   final DatabaseService _databaseService = DatabaseService.instance;

//     String? gearName;
//     String? gearType; // type in 'climbing'
//     int? gearQuantity; 
//     int? weight; // in tenths of a gram
//     int? price; // in cents

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gear Management'),
//       ),
//       floatingActionButton: _addGearButton(),
//     );
//     }

//     Widget _addGearButton() {
//         return FloatingActionButton(
//             onPressed: () {
//                     double h = 10; // height in px between data entry fields
//                     gearName = null;
//                     gearType = null; // type in 'climbing'
//                     gearQuantity = null; 
//                     weight = null; // in tenths of a gram
//                     price = null; // in cents
//                 showDialog(
//                     context: context,
//                     builder: (_) => AlertDialog(
//                         title: const Text('Add Gear'),
//                         content: Column( 
//                             children: [
//                                 FloatingActionButton(
//                                     onPressed: () {
//                                         if (gearName != null && gearType != null && gearQuantity != null && weight != null && price != null) {
//                                             _databaseService.addMasterGear(gearName!, gearType!, gearQuantity!, weight!, price!);
//                                             Navigator.of(context).pop();
//                                         } else {
//                                             // Handle the case where one or more fields are empty
//                                             ScaffoldMessenger.of(context).showSnackBar(
//                                                 const SnackBar(content: Text('Please fill in all fields')),
//                                             );
//                                         }
//                                     }
//                                 ),
//                                 TextField(
//                                     onChanged: (value) {
//                                         setState(() {
//                                             gearName = value;
//                                         });
//                                     },
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         hintText: 'Gear Name',
//                                     )
                                    
//                                 ),
//                                 SizedBox(height: h),
//                                 DropdownButtonFormField<String>(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         labelText: 'Gear Type',
//                                         hintText: 'Select Gear Type',
//                                     ),
//                                     value: gearType,
//                                     items: const [
//                                         DropdownMenuItem(
//                                             value: 'climbing',
//                                             child: Text('Climbing'),
//                                         ),
//                                     ],
//                                     onChanged: (value) {
//                                         setState(() {
//                                             gearType = value!;
//                                         });
//                                     },
//                                 ),
//                                 SizedBox(height: h),
//                                 TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         labelText: 'qty',
                                        

//                                     ),
//                                     keyboardType: TextInputType.number,
//                                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                                     onChanged: (value) {
//                                         setState(() {
//                                             gearQuantity = int.tryParse(value) ?? 0;
//                                         });
//                                     },
//                                 ),
//                                 SizedBox(height: h),
//                                 TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         labelText: 'Weight (g)',
//                                         hintText: 'Enter weight in grams',

//                                     ),
//                                     keyboardType: TextInputType.numberWithOptions(decimal: true),
                                    
//                                     onChanged: (value) {
//                                         setState(() {
//                                             double? parsedValue = double.tryParse(value);
//                                                 if (parsedValue != null) {
//                                                     weight = (parsedValue * 10).round();
//                                                 } else {
//                                                 weight = 0;
//                                                 }

//                                         });
//                                     },
                                    
//                                 ),
//                                 SizedBox(height: h),
//                                 TextField(
//                                     decoration: InputDecoration(
//                                         border: OutlineInputBorder(),
//                                         labelText: 'Price (\$)',
//                                         hintText: 'Enter price in dollars',

//                                     ),
//                                     keyboardType: TextInputType.numberWithOptions(decimal: true),
                                    
//                                     onChanged: (value) {
//                                         setState(() {
//                                             double? parsedValue = double.tryParse(value);
//                                                 if (parsedValue != null) {
//                                                     price = (parsedValue * 100).round();
//                                                 } else {
//                                                 price = 0;
//                                                 }

//                                         });
//                                     },
                                    
//                                 )
//                             ],
//                         )
//                     )
//                 );
//             },
//             child: const Icon(Icons.add),
//             );
//     }
// }