import 'dart:collection';

//import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/services/database/database.dart';

// might need to be a stateful widget
class GearPage extends StatefulWidget {
  const GearPage({super.key});
  @override
  GearPageState createState() => GearPageState();
}

class GearPageState extends State<GearPage> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  late BuildContext context;

  final AppDatabase db = AppDatabase();
  late final SplayTreeMap<int, GearItem> gearItemSearch = db.gearItemSearch;

  final searchController = TextEditingController();
  Set<String> activeTags = {};
  List<GearItem> activeItems = [];
  Set<int> activeId = {};

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(scaffoldKey),
      body: body(scaffoldKey),
    );
  }

  Widget body(GlobalKey<ScaffoldState> key) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'name, attribute, category... (search to add tag)',
                  border: OutlineInputBorder(),
                ),
				onChanged: (value) async {
					activeId = await db.gearSearch(value);

				} //seaches database for input
//                onSubmitted: addTag,
              ),
            ),
          ],
        ),

        // Wrap(
        //   spacing: 8,
        //   children:
        //     //   activeTags
        //     //       .map(
        //     //         (tag) =>
        //     //           //  Chip(label: Text(tag), onDeleted: () => removeTag(tag)),
        //     //       )
        //     //       .toList(),
        // ),
		Expanded(
      child: ListView.builder(
        itemCount: activeId.length,
        itemBuilder: (context, index) {
          return ListTile(
			title: Text(tempTitle()),
            //title: FutureBuilder<GearItem?>(
				//future: db.searchGearItem(activeId.elementAt(index)),
				//builder: (context, snapshot) {
					
					// if (snapshot.hasData && snapshot.data != null) {
					// 	print("checking index: $index");
					// 	return Text(snapshot.data!.getName());
					// }
					// return Text('Item not found');
				//},
			//),
            //trailing: Text(activeItems[index].quantity.toString()),
          );
        },
      ),
    ),
      ],
    );
  }

  // add the item adder button! plus button in lower corner, goes to new page

//   void addTag(String tag) {
//     if (tag.isNotEmpty && !activeTags.contains(tag)) {
//       activeTags.add(tag);
//       searchController.clear();
//     }
//   }

//   void removeTag(String tag) {
//     if (tag.isNotEmpty) {
//       activeTags.remove(tag);
//     }
//   }

//   void clearTags() {
//     activeTags.clear();
//   }

String tempTitle() {
	return "smeep";
}




  AppBar appBar(GlobalKey<ScaffoldState> key) {
    return AppBar(
      title: Text(
        'Gear Management',
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
          Navigator.pop(context);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/chevron_left.svg',
            height: 40,
            color: Colors.black,
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
      ],
    );
  }
}
