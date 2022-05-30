import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double spendingPct;

  const ChartBar(this.label, this.amount, this.spendingPct);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 20,
            child: FittedBox(
              child: Text('₹${amount.toStringAsFixed(0)}'),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[200], width: 1.0),
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10)),
              ),
              FractionallySizedBox(
                  heightFactor: spendingPct,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label.substring(0, 3),
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
