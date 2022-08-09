// import 'package:flutter/material.dart';

// class _VerticalBarHead extends StatelessWidget {
//   const _VerticalBarHead({Key? key, required this.name, required this.amount})
//       : super(key: key);

//   final String name;
//   final double amount;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 80,
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             numberFormate().format(amount).split('.').first.split(' ').last,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(
//             name,
//             style: const TextStyle(
//               fontSize: 10,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }