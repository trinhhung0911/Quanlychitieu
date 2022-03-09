import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/widgets/trangchu/balance_card.dart';
import 'package:quan_ly_chi_tieu/widgets/trangchu/card_maximun_spend.dart';
import 'package:quan_ly_chi_tieu/widgets/trangchu/card_spend_chart.dart';
import 'package:quan_ly_chi_tieu/widgets/drawer_item_card.dart';
import 'package:quan_ly_chi_tieu/page/new_transaction_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(child: Text('Trang Chủ')),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
             Container(
              color: Colors.teal,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundColor: Colors.teal,
                              child: Icon(
                                Icons.attach_money,
                                size: 30,
                                color:Colors.white,
                              ),
                            ),
                            Text(
                              '10.000.000',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).primaryColor),
                            ),
                            const Icon(
                              Icons.navigate_next,
                              size: 30,
                              color: Colors.teal,
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
             const Cardbalance(),
             const SizedBox(
              height: 15,
             ),
            const CardMaximunSpend(),
            const SizedBox(
               height: 15,
             ),
             const CardSpendChart(),
             const SizedBox(
               height: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewTransactionPage()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const DrawerItem(),
    );
  }
}
