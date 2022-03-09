import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/custom_toolbox/message_label.dart';
class CardMaximunSpend extends StatefulWidget {
  const CardMaximunSpend({Key? key}) : super(key: key);
  @override
  _CardMaximunSpendState createState() => _CardMaximunSpendState();
}
class _CardMaximunSpendState extends State<CardMaximunSpend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Hạn mức chi',
                    style: TextStyle(fontSize: 20)),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed:(){} ,
                ),
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            Column(
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.fastfood,
                          size: 35,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text('Hàng Tháng',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text('1/2-1/3'),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const <Widget>[
                            Text(
                                '4.000.000 đ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
               /* Container(
                  margin:  EdgeInsets.zero,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius:
                          BorderRadius.all(const Radius.circular(5.0)),
                        ),
                        child: const Text("Hôm nay", maxLines: 1),
                      ),
                      Container(
                        child: CustomPaint(
                          painter: TrianglePainter(
                            strokeColor: Theme.of(context).accentColor,
                            strokeWidth: 10,
                            paintingStyle: PaintingStyle.fill,
                          ),
                          child: const SizedBox(
                            height: 7,
                            width: 7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),*/
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const LinearProgressIndicator(
                    backgroundColor: Colors.black38,
                    value: 10,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text('Còn 4 ngày'),
                    Text('1.234.123'),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
