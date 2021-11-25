import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  void CreateTables() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ElevatedButton(onPressed: CreateTables, child: const Text('create')),
        ElevatedButton(onPressed: CreateTables, child: const Text('delete')),
        ElevatedButton(onPressed: CreateTables, child: const Text('view')),
        ElevatedButton(onPressed: CreateTables, child: const Text('queries')),
        ElevatedButton(onPressed: CreateTables, child: const Text('populate'))
      ],),
    );
  }
}