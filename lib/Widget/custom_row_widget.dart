import 'package:flutter/material.dart';

class CustomRowWidget extends StatefulWidget {
  const CustomRowWidget({
    required this.txt,
    required this.val,
    required this.clr,
    Key? key,
  }) : super(key: key);
  final String txt;
  final int val;
  final Color clr;

  @override
  State<CustomRowWidget> createState() => _CustomRowWidgetState();
}

class _CustomRowWidgetState extends State<CustomRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: const Color(0xffF8F0E3), borderRadius: BorderRadius.circular(10)),
          child: Text(
            widget.txt,
            style: const TextStyle(
                fontSize: 18,
                color: Color(0xffD05050),
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        CircleAvatar(
            backgroundColor: widget.clr,
            radius: 15,
            child: Text(
              widget.val.toString(),
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xffF8F0E3),
              ),
            )),
      ],
    );
  }
}