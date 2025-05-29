// import 'package:flutter/material.dart';

// class ColorSlider extends StatefulWidget {
//   @override
//   _ColorSliderState createState() => _ColorSliderState();
// }

// class _ColorSliderState extends State<ColorSlider> {
//   double _sliderValue = 0.0;
//   bool _isRed = false;
//   bool _isChecked = true;
//   bool _disabled = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 200,
//             height: 200,
//             color:
//                 (_isRed ? Colors.red : Colors.black).withOpacity(_sliderValue),
//           ),
//           Slider(
//             value: _sliderValue,
//             min: 0,
//             max: 1,
//             onChanged: (value) {
//               setState(() {
//                 _sliderValue = value;
//               });
//             },
//           ),
//           Switch(
//             value: _isRed,
//             onChanged: (value) {
//               setState(() {
//                 _isRed = value;
//               });
//             },
//           ),
//           Text(_isChecked ? "Salom" : ""),
//           Text(_disabled ? "Disabled" : "Enabled"),
//           Switch(
//             value: _disabled,
//             onChanged: (value) {
//               setState(() {
//                 _disabled = ! _disabled;
//               });
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
