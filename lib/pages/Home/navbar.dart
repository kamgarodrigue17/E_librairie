// import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/pages/Home/tabController.dart';
// import 'package:provider/provider.dart';

// class RootPage extends StatelessWidget {
//   RootPage({super.key});
//   List<Widget> pages = [
//     Container(),
//     Container(),
//     Container(),
//     Container(),
//     Container()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     final ctr = context.watch<TabContrller>();

//     return Scaffold(
//         body: Stack(
//       children: [
//         Container(
//           height: height,
//           width: width,
//           child: Column(
//             children: [
//               Expanded(
//                   flex: 12,
//                   child: Container(
//                     color: Colors.amber,
//                     child: pages[ctr.item],
//                   )),
//               Expanded(
//                   flex: 1,
//                   child: Container(
//                     padding: EdgeInsets.only(left: 20, right: 20),
//                     color: Colors.white,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           width: width * .4,
//                           height: 50,
//                           // color: Colors.amber,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               GestureDetector(
//                                 onTap: () =>
//                                     context.read<TabContrller>().setItem(0),
//                                 child: Expanded(
//                                     child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Icon(
//                                       Icons.home_outlined,
//                                       size: 17,
//                                       color: Colors.black,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Container(
//                                         height: 2,
//                                         width: 21,
//                                         color: ctr.item == 0
//                                             ? Color.fromRGBO(253, 104, 71, 1)
//                                             : Colors.white)
//                                   ],
//                                 )),
//                               ),
//                               GestureDetector(
//                                   onTap: () =>
//                                       context.read<TabContrller>().setItem(1),
//                                   child: Expanded(
//                                       child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.groups_outlined,
//                                         size: 17,
//                                         color: Colors.black,
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Container(
//                                           height: 2,
//                                           width: 21,
//                                           color: ctr.item == 1
//                                               ? Color.fromRGBO(253, 104, 71, 1)
//                                               : Colors.white)
//                                     ],
//                                   )))
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: width * .4,
//                           height: 50,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               GestureDetector(
//                                   onTap: () =>
//                                       context.read<TabContrller>().setItem(2),
//                                   child: Expanded(
//                                       child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.notifications_none_outlined,
//                                         size: 17,
//                                         color: Colors.black,
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Container(
//                                           height: 2,
//                                           width: 21,
//                                           color: ctr.item == 2
//                                               ? Color.fromRGBO(253, 104, 71, 1)
//                                               : Colors.white)
//                                     ],
//                                   ))),
//                               GestureDetector(
//                                   onTap: () =>
//                                       context.read<TabContrller>().setItem(4),
//                                   child: Expanded(
//                                       child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.person_2_outlined,
//                                         size: 17,
//                                         color: Colors.black,
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Container(
//                                           height: 2,
//                                           width: 21,
//                                           color: ctr.item == 3
//                                               ? Color.fromRGBO(253, 104, 71, 1)
//                                               : Colors.white)
//                                     ],
//                                   )))
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ))
//             ],
//           ),
//         ),
//         Align(
//             alignment: Alignment.bottomCenter,
//             child: GestureDetector(
//                 onTap: () => context.read<TabContrller>().setItem(4),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: 25,
//                   ),
//                   child: CircleAvatar(
//                     child: Icon(Icons.add, size: 25, color: Colors.white),
//                     radius: 30,
//                     backgroundColor: Color.fromRGBO(250, 176, 60, 1),
//                   ),
//                 )))
//       ],
//     ));
//   }
// }
