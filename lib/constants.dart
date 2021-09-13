import 'package:flutter/material.dart';
int number=0;

class MyIconButton extends StatelessWidget {
  final Color col;
  final String text;
  final IconData wow;
  dynamic func;
  MyIconButton(this.text, this.wow, this.func,this.col);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      splashColor: Colors.white,
      textStyle: TextStyle(color: Colors.blue),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
                color: col, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Icon(wow)
        ],
      ),
      onPressed: func,
    );
  }
}

//
// Align(
// alignment: Alignment.bottomCenter,
// child: Container(
// height: 300,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(50),
// topRight: Radius.circular(50)),
// boxShadow: [
// BoxShadow(
// color: Colors.black,
// blurRadius: 2.0,
// spreadRadius: 2.0,
// offset:
// Offset(2.0, 2.0), // shadow direction: bottom right
// )
// ],
// ),
// child: Container(
// child: Column(children: <Widget>[
// // Padding(
// //   padding: const EdgeInsets.only(top: 16.0),
// //   child: Text(
// //     'Sides',
// //     textAlign: TextAlign.center,
// //     style: TextStyle(
// //         fontWeight: FontWeight.bold,
// //         fontSize: 30,
// //         color: Colors.black),
// //   ),
// // ),
// Expanded(
// child: Row(
// children: [
// TextButton(
// onPressed: () {
// value
// ? setState(() {
// print(value);
// value = false;
// })
//     : setState(() {
// print(value);
// value = true;
// });
// if (value == true) {
// print('sides checked');
// } else if (value == false) {
// print('side unchecked');
// }
// },
// child: Expanded(
// child: Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('images/image9.png')),
// ),
// ),
// ),
// ),
// TextButton(
// onPressed: () {
// value
// ? setState(() {
// print(value);
// value = false;
// })
//     : setState(() {
// print(value);
// value = true;
// });
// if (value == true) {
// print('sides checked');
// } else if (value == false) {
// print('side unchecked');
// }
// },
// child: Expanded(
// child: Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('images/image10.png')),
// ),
// ),
// ),
// ),
// ],
// ),
// ),
// // Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //   children: [
// //     Text(
// //       'Any Salad',
// //       style: TextStyle(
// //           fontWeight: FontWeight.w600,
// //           fontSize: 20,
// //           color: Colors.black),
// //     ),
// //     SizedBox(width: 10),
// //     Padding(
// //       padding: const EdgeInsets.only(bottom: 8.0),
// //       child: Text(
// //         'Any Soup',
// //         style: TextStyle(
// //             fontWeight: FontWeight.w600,
// //             fontSize: 20,
// //             color: Colors.black),
// //       ),
// //     )
// //   ],
// // ),
// ]),
// ),
// ),
// ),