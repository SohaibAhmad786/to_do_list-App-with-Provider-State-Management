
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlideableAction extends StatelessWidget {
  CustomSlideableAction({required this.lbl, required this.func, required this.icons,
    Key? key,
  }) : super(key: key);
  final String lbl; 
  IconData icons;
  Function? func;
  @override
  Widget build(BuildContext context) {
    return SlidableAction(
       onPressed: (context) => func!(),
       backgroundColor: const Color(0xffD05050),
       foregroundColor: const Color(0xffF8F0E3),
       icon: icons,
       label: lbl,
       borderRadius: BorderRadius.circular(10),
     );
  }
}
