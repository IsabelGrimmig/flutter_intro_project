import 'package:flutter/material.dart';

class SerachFieldScreen extends StatefulWidget {
  const SerachFieldScreen({super.key});

  @override
  State<SerachFieldScreen> createState() => _SerachFieldScreenState();
}

class _SerachFieldScreenState extends State<SerachFieldScreen> {
  String query = '';

  void onQueryChange(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        onChanged: onQueryChange,
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

/*
class SerachFieldScreen extends StatefulWidget {
  const SerachFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //first item
        Container(
          height: 50,
          color: Color(0xFFFFCAC2),
        ),
        //seecond Item
        Container(
          height: 50,
          color: Color(0xFFFFA8A0),
        ),

        //therd item
        Container(
          height: 50,
          color: Color(0xFFFFCAC2),
        ),
      ],
    );
  }
}*/
