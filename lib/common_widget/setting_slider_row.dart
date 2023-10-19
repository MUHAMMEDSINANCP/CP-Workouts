import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class SettingsSliderRow extends StatelessWidget {
  final Map tObj;
  final Function(double)? onChanged;

  const SettingsSliderRow({super.key, required this.tObj, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tObj["name"],
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "1",
                style: TextStyle(
                    color: TColor.secondaryText.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Slider(
                    activeColor: TColor.primary,
                    max: 100.0,
                    min: 1.0,
                    value: double.tryParse(tObj["value"]) ?? 0,
                    onChanged: onChanged),
              ),
              Text(
                "100",
                style: TextStyle(
                    color: TColor.secondaryText.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
