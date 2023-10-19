import 'package:flutter/material.dart';

import '../common/color_extension.dart';

// ignore: must_be_immutable
class TipRow extends StatefulWidget {
  final Map tObj;
  final VoidCallback onPressed;
  bool isActive;

  TipRow(
      {super.key,
      required this.tObj,
      required this.onPressed,
      required this.isActive});

  @override
  State<TipRow> createState() => _TipRowState();
}

class _TipRowState extends State<TipRow> {
  void setActive(bool value) {
    setState(() {
      widget.isActive = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setActive(!widget.isActive);
        widget.onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  widget.tObj["name"],
                  style: TextStyle(
                      color: widget.isActive
                          ? TColor.primary
                          : TColor.secondaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Image.asset(
              "assets/img/next.png",
              width: 25,
              height: 25,
              color: widget.isActive ? TColor.primary : TColor.secondaryText,
            ),
          ],
        ),
      ),
    );
  }
}
