import 'package:bar_module_demo/component.dart';
import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<double> income = [450, 230, 352, 293];
    List<double> expense = [334, 312, 156, 124];
    //int gridCrossCount = 7;
    int _max;
    int barCount = income.length;
    final maxIncome = income.reduce((curr, next) => curr > next ? curr : next);
    final maxExpense =
        expense.reduce((curr, next) => curr > next ? curr : next);
    if (maxIncome > maxExpense) {
      _max = maxIncome.toInt();
    } else {
      _max = maxExpense.toInt();
    }
    print(_max);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(
            barCount,
            (index) => Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                BarChartComponent(
                  height: income[index],
                  income: income[index],
                  expense: expense[index],
                  isIncome: true,
                  amountValue: income[index],
                  barCount: barCount,
                ),
                BarChartComponent(
                  height: expense[index],
                  income: income[index],
                  expense: expense[index],
                  amountValue: expense[index],
                  barCount: barCount,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        // GridView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   itemCount: 10000,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: gridCrossCount,
        //   ),
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: MediaQuery.of(context).size.height,
        //       width: MediaQuery.of(context).size.width,
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //           color: Colors.grey.shade300,
        //         ),
        //       ),
        //     );
        //   },
        // ),

        SizedBox(
          height: _max.toDouble(),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _max,
            itemBuilder: (contex, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
