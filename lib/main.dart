import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seaway/providers/walkthrough_provider.dart';
import 'package:seaway/router.dart';
import 'package:seaway/styles/theme_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => WalkthroughProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        theme: ThemeScheme.light(),
        initialRoute: WalkthroughRoute,
      ),
    ),
  );
}
