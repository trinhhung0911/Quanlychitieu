import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/widgets/drawer_item_card.dart';
class ManagementCollect extends StatefulWidget {
  const ManagementCollect({Key? key}) : super(key: key);

  @override
  _ManagementCollectState createState() => _ManagementCollectState();
}
class _ManagementCollectState extends State<ManagementCollect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(child: Text('Quản Lý Thu')),
      ),
      body: Container(),
      drawer: const DrawerItem(),
    );
  }
}
