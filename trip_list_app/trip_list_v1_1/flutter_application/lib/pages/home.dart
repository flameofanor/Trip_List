import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TripList',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          )
        ),
        centerTitle: true,
      ),
    );
  }
}


