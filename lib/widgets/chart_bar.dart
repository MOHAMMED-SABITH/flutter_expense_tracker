import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal,
      {super.key});
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, Constraints) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text('\$ ${spendingAmount.toStringAsFixed(0)}'),
              ),
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: const Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spendingPctOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Theme.of(context).primaryColor,
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}
