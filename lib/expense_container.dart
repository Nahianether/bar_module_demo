// import 'package:bar_module_demo/functions.dart';
// import 'package:flutter/material.dart';

// class ExpenseContainer extends StatelessWidget {
//   const ExpenseContainer(
//       {Key? key,
//       required this.height,
//       this.width = 30,
//       required this.max,
//       required this.income,
//       required this.expense,
//       required this.count})
//       : super(key: key);

//   final double height;
//   final double width;
//   final double max;
//   final double count;
//   final double income;
//   final double expense;

//   @override
//   Widget build(BuildContext context) {
//     //int count = height ~/ 50;
//     double percent = (expense / income) * 100;
//     final _inner = height < MediaQuery.of(context).size.width - 80;
//     return ListView.builder(
//       reverse: true,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: height ~/ count,
//       itemBuilder: (_, index) {
//         return FutureBuilder<double>(
//           future: getWidth(max / count),
//           builder: (_, snapshot) {
//             return AnimatedSize(
//               curve: Curves.linearToEaseOut,
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               duration: const Duration(seconds: 5),
//               child: Container(
//                 width: width,
//                 height: snapshot.hasData ? max / count : 0,
//                 color: percent > 80
//                     ? Colors.red
//                     : percent <= 50
//                         ? Colors.yellow
//                         : Colors.green,
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
