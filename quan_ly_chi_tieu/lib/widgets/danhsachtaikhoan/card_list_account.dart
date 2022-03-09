import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/widgets/danhsachtaikhoan/the.dart';
class CardListAccount extends StatefulWidget {
  const CardListAccount({Key? key}) : super(key: key);
  @override
  _CardListAccountState createState() => _CardListAccountState();
}
class _CardListAccountState extends State<CardListAccount> {

  @override
  Widget build(BuildContext context) {
    _moreOption(int option) {
      if (option == 0) {
        print('Sửa thành công');
      } else if (option == 1) {
        print('Xóa thành công');
      }
    }
    Widget _simplePopup() => PopupMenuButton<int>(
      onSelected: _moreOption,
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 0,
          child: Center(
            child: Text("Sửa"),
          ),
        ),
        const PopupMenuItem(
          value: 1,
          child: Center(
            child: Text("Xóa"),
          ),
        ),
      ],
    );
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const ExpansionTile(
              title: Text(
                "Đang sử dụng 3",
                style:TextStyle(fontWeight: FontWeight.bold),
              ),
              initiallyExpanded: true,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 110,
                      foregroundColor: Colors.red,
                      child: Text(
                        'TVH',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    )
                  ),
                  title: Text('Ví'),
                  subtitle: Text('1234123'),
                ),
                ListTile(
                  leading: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        radius: 110,
                        foregroundColor: Colors.red,
                        child: Text(
                          'TVH',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      )
                  ),
                  title: Text('Agribank'),
                  subtitle: Text('1234123'),
                ),
                ListTile(
                  leading: Padding(
                      padding: const EdgeInsets.all(5),
                      child: CircleAvatar(
                        radius: 110,
                        foregroundColor: Colors.red,
                        child: Text(
                          'TVH',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      )
                  ),
                  title: Text('MoMo'),
                  subtitle: Text('1234123'),
                ),

              ],

            ),
          ),
          Container(
            width: double.infinity,
            child: const ExpansionTile(
              title: Text(
                "Tài khoản tiết kiệm 10.000.000 đ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              initiallyExpanded: false,
              children: [

              ]
            ),
          )
        ],
      ),
    );
  }
}
