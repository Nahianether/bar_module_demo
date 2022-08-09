// import 'package:flutter/material.dart';

// class IncomeContainer extends StatelessWidget {
//   const IncomeContainer(
//       {Key? key,
//       required this.height,
//       this.width = 30,
//       required this.max,
//       required this.count})
//       : super(key: key);

//   final double height;
//   final double width;
//   final double max;
//   final double count;

//   @override
//   Widget build(BuildContext context) {
//     //int count = height ~/ 50;
//     return ListView.builder(
//       reverse: true,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: max ~/ count,
//       itemBuilder: (contex, index) {
//         return AnimatedSize(
//           curve: Curves.linearToEaseOut,
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           duration: const Duration(milliseconds: 800),
//           child: Container(
//             width: width,
//             height: max / count,
//             color: const Color.fromARGB(255, 0, 1, 88),
//           ),
//         );
//       },
//     );
//     // Container(
//     //   width: width,
//     //   height: height,
//     //   color: const Color.fromARGB(255, 0, 1, 88),
//     // );
//   }
// }
