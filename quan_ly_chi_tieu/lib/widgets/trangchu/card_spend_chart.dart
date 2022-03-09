import 'package:flutter/material.dart';
class CardSpendChart extends StatefulWidget {
  const CardSpendChart({Key? key}) : super(key: key);
  @override
  _CardSpendChartState createState() => _CardSpendChartState();
}
class _CardSpendChartState extends State<CardSpendChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'Trung bình tháng:',
                style: TextStyle(color: Colors.teal),
              ),
              Text('1.500.000 đ'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
