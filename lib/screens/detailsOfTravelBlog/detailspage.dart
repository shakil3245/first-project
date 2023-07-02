import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/travelvlog.dart';

class detailspage extends StatefulWidget {
   final Travel travel;
  const detailspage({super.key, required this.travel});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("hello"),);
  }
}
