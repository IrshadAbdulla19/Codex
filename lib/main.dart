import 'package:flutter/material.dart';
import 'package:irshad_codex/presentation/customer/widgets/create_customer.dart';
import 'package:irshad_codex/presentation/landing/landing_screen.dart';
import 'package:irshad_codex/presentation/login/login_screen.dart';

import 'core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        primaryColor: kMaterialPrimaryColor,
        hintColor: kMaterialPrimaryColor,
        // Define the default font family.
        fontFamily: 'OpenSans',
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: kMaterialPrimaryColor)
                .copyWith(secondary: kMaterialPrimaryColor),

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
      ),
      debugShowCheckedModeBanner: false,
      home: const CreateCustomerScreen(),
    );
  }
}
