import 'package:deligram/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/blend_provider.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          // create: (_) => BlendProvider(),
          value: BlendProvider(),
        ),
        ChangeNotifierProvider.value(
          // create: (context) => CartProvider(),
          value: CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          // primarySwatch: Colors.grey,
          // primaryTextTheme:
          //     TextTheme(bodyText1: TextStyle(color: Colors.black)),
          // fontFamily: bebas.n
        ),
        home: HomePage(),
      ),
    );
  }
}
