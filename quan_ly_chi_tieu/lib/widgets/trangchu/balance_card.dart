import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/page/records_page.dart';
class Cardbalance extends StatefulWidget {
  const Cardbalance({Key? key}) : super(key: key);
  @override
  _CardbalanceState createState() => _CardbalanceState();
}
class _CardbalanceState extends State<Cardbalance> {
  void _navToRecords() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecordsPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark? Colors.blueGrey: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 41,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: 190,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Tình hình thu chi',
                            style: TextStyle(fontSize: 20)),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height:130, //outComeHeight,
                                width:40 ,
                                color: Colors.red,
                              ),
                              Container(
                                height:20,// inComeHeight,
                                width:40, //ScreenUtil.getInstance().setWidth(120),
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),
          Expanded(
            flex: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                DropdownButton<String>(
                  value: 'Tháng này',
                  items: <String>['Tháng này','Hôm Nay', 'Tuần Này', 'Năm Này'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Thu',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          const Text(
                            '2.000.000',
                            style: TextStyle(
                                color: Colors.green, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: const <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 5.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Chi',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          const Text(
                           '1.234.567',
                            style: TextStyle(
                                color: Colors.red, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text('Tích lũy',
                              style: TextStyle(fontSize: 16)),
                          Text('100.000 đ',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap:
                              _navToRecords
                            ,
                            child: const Text(
                              "Xem ghi chép",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Colors.blue,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
