import 'package:flutter/material.dart';

class CinameSeatsPage extends StatefulWidget {
  const CinameSeatsPage({super.key});

  @override
  State<CinameSeatsPage> createState() => _CinameSeatsPageState();
}

class _CinameSeatsPageState extends State<CinameSeatsPage> {
  final listColumn = [
    {
      'id': 1,
      'name': 'A',
    },
    {
      'id': 2,
      'name': 'B',
    },
    {
      'id': 3,
      'name': 'C',
    },
    {
      'id': 4,
      'name': 'D',
    },
    {
      'id': 5,
      'name': 'E',
    },{
      'id': 6,
      'name': 'F',
    },
    {
      'id': 7,
      'name': 'G',
    }
  ];

  final listRow = [
    {
      'id'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
