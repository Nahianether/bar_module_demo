import 'package:flutter/material.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({
    Key? key,
    this.income,
    this.expense,
    this.isIncome = false,
    this.incomeColor = Colors.blue,
    this.expenseMoreThanEighty = Colors.red,
    this.expenseLessThanFifty = Colors.green,
    this.expensebetweenFiftyEighty = Colors.yellow,
    required this.barCount,
    this.amountValue,
    required this.height,
  }) : super(key: key);

  final double height;
  final double? income;
  final double? expense;
  final bool? isIncome;
  final Color? incomeColor;
  final Color? expenseMoreThanEighty;
  final Color? expenseLessThanFifty;
  final Color? expensebetweenFiftyEighty;
  final double? amountValue;
  final int barCount;

  @override
  Widget build(BuildContext context) {
    //late final _inner = height < ScreenSize.height - 80;
    print('screenwidth' + MediaQuery.of(context).size.width.toString());
    double percent = (expense! / income!) * 100;
    return FutureBuilder<double>(
      future: getWidth(),
      builder: (_, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              amountValue.toString(),
              style: TextStyle(
                fontSize: barCount >= 5 ? 7 : 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            AnimatedSize(
              curve: Curves.linearToEaseOut,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              duration: isIncome!
                  ? const Duration(seconds: 2)
                  : percent > 80
                      ? const Duration(seconds: 2)
                      : percent <= 50
                          ? const Duration(seconds: 5)
                          : const Duration(seconds: 4),
              child: Container(
                width:
                    ((MediaQuery.of(context).size.width / barCount) / 2) - 10,
                height: snapshot.data ?? 0,
                alignment: Alignment.bottomCenter,
                //margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: isIncome!
                      ? incomeColor
                      : percent > 80
                          ? expenseMoreThanEighty
                          : percent <= 50
                              ? expensebetweenFiftyEighty
                              : expenseLessThanFifty,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<double> getWidth() async {
    await Future.delayed(const Duration(seconds: 1));
    return height * 0.9;
  }
}
