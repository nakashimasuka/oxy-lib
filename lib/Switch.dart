import 'package:flutter/material.dart';
import 'package:material_switch/material_switch.dart';

class SwitchAuto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchState();
  }
}

class _SwitchState extends State<SwitchAuto> {
  String selectedSwitchOption = "Auto";
  List<String> switchOptions = ["Auto", "Manuel"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 302,
        height: 50,
        child: MaterialSwitch(
          padding: const EdgeInsets.only(left: 47.0, top: 7.0, bottom: 5.0),
          margin: const EdgeInsets.all(10.0),
          selectedOption: selectedSwitchOption,
          options: switchOptions,
          selectedBackgroundColor: Colors.blue[700],
          selectedTextColor: Colors.white,
          onSelect: (String selectedOption) {
            setState(() {
              selectedSwitchOption = selectedOption;
            });
          },
        ));
  }
}
