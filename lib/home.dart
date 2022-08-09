// import 'package:bar_module_demo/expense_container.dart';
// import 'package:bar_module_demo/income_container.dart';
// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //double income = 300.0;
//     List<double> incomeList = [300.0, 220.0, 340.0, 200.0, 100.0];
//     List<double> expenseList = [250.0, 200.0, 230.0, 100.0, 150.0];
//     final ammount = List<int>.generate(10000, (i) => (1000 * i));
//     final items =
//         List<String>.generate(expenseList.length, (i) => i.toString());
//     double max = expenseList.reduce((curr, next) => curr > next ? curr : next);
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: max + 100,
//                 width: 50,
//                 child: ListView.builder(
//                   shrinkWrap: true,
//                   reverse: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: max ~/ expenseList.length,
//                   itemBuilder: (contex, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                       child: Text(
//                         ammount[index].toString(),
//                         style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const Text(
//                 'Date',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           ListView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemCount: expenseList.length,
//               itemBuilder: (contex, index) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Row(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(
//                           height: incomeList[index],
//                           width: 30,
//                           child: IncomeContainer(
//                             height: incomeList[index],
//                             max: max,
//                             count: double.parse(expenseList.length.toString()),
//                           ),
//                         ),
//                         SizedBox(
//                           height: expenseList[index],
//                           width: 30,
//                           child: ExpenseContainer(
//                             income: incomeList[index],
//                             expense: expenseList[index],
//                             height: expenseList[index],
//                             max: max,
//                             count: double.parse(expenseList.length.toString()),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       items[index],
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }


// // Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //           children: [
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text('Day'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text('Weekly'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text('Monthly'),
// //             )
// //           ],
// //         ),