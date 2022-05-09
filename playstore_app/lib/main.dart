import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './screens/readerscreen.dart';
import './screens/Homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:rate_my_app/rate_my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // RateMyApp _rateMyApp = RateMyApp(
  //   preferencesPrefix: 'rateMyApp_',
  //   minDays: 3,
  //   minLaunches: 5,
  //   remindDays: 2,
  //   remindLaunches: 5,
  //   // googlePlayIdentifier: '',
  // );

  // @override
  // void initState() {
  //
  //   super.initState();
  //   _rateMyApp.init().then((_) {
  //     // if (_rateMyApp.shouldOpenDialog) {
  //     // removethis for check.
  //     _rateMyApp.showStarRateDialog(
  //       context,
  //       title: 'Enjoying this App?',
  //       message: 'Please leave a message to help us grow',
  //       actionsBuilder: (context, stars) {
  //         // can customize more with conditions.
  //         return [
  //           TextButton(
  //               onPressed: () {
  //                 if (stars != null) {
  //                   _rateMyApp.save().then((_) => Navigator.of(context).pop());
  //                 } else {
  //                   Navigator.pop(context);
  //                 }
  //               },
  //               child: Text('OK')),
  //         ];
  //       },
  //       starRatingOptions: StarRatingOptions(),
  //       dialogStyle: DialogStyle(
  //           titleAlign: TextAlign.center,
  //           messageAlign: TextAlign.center,
  //           messagePadding: EdgeInsets.only(bottom: 20.0)),
  //     );
  //     // }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/reader_screen': (context) => ReaderScreen()},
      // home: const MyHomePage()
      home: AnimatedSplashScreen(
        splash: "lib/assets/download.png",
        nextScreen: const MyHomePage(),
        splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
      ),
    );
  }
}
