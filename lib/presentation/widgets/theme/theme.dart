import 'package:flutter/material.dart';

import '../Monta_colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: MontaColors.sand40,
    primary: MontaColors.coral150,
    secondary: MontaColors.sand20,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: MontaColors.night60,
    primary: MontaColors.night100,
    secondary: MontaColors.night50,
  ),
);
