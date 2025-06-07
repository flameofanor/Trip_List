import "package:flutter/material.dart";
import "package:flutter_application/pages/gear_page.dart";
import "package:flutter_svg/svg.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "package:path/path.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext context;


  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(scaffoldKey),
      drawer: menuDrawer()
    );
  }

  Drawer menuDrawer() {
    return Drawer(
      backgroundColor: Colors.green[200],
      child: ListView(
        
        children: [
          ListTile(
            title: Text(
              'Gear Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,

              ),
              ),
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GearPage()),
  );
            }
          )
        ],
      )
    );
  }
}

/// App Bar for home page
  AppBar appBar(GlobalKey<ScaffoldState> key) {
    return AppBar(
      title: Text(
        'TripList',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.green,
      elevation: 0.0,
      centerTitle: true,

      leading: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),

          ),
      ),
        // Menu Icon
        actions: [
          GestureDetector(
            onTap: () {
              key.currentState?.openDrawer();
            },
            child: Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
            'assets/icons/menu.svg', 
            height: 40,
            color: Colors.black,
            ),
                      ),
          ),
        ]
      
        
      );
  }

