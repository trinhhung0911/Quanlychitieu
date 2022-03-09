import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/widgets/danhsachtaikhoan/card_list_account.dart';
import 'package:quan_ly_chi_tieu/widgets/drawer_item_card.dart';
class ListAccount extends StatefulWidget {
  const ListAccount({Key? key}) : super(key: key);
  @override
  _ListAccountState createState() => _ListAccountState();
}
class _ListAccountState extends State<ListAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text('Danh sách tài khoản')),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => {
              print("Click on add button")
            },
          ),
        ],
        ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 15.0),
                      blurRadius: 15.0,
                    ),
                  ],
                ),
                child:const Text('Tổng: 10.000.000 đ',style: TextStyle(fontWeight: FontWeight.bold),
                )

            ),
            const SizedBox(
              height: 15,
            ),
            const CardListAccount(),
          ],
        ),
      ),
        drawer: const DrawerItem()
    );
  }
}
