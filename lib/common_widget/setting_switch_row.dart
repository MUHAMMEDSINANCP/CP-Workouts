import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class SettingSwitchRow extends StatelessWidget {
  final Map tObj;
  final Function(bool)? onChanged;

  const SettingSwitchRow({super.key, required this.tObj, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tObj["name"],
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          Transform.scale(
            scale: 0.85,
            child: CupertinoSwitch(
              activeColor: TColor.primary,
              thumbColor: Colors.white60,
              value: tObj["value"] == "true",
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
