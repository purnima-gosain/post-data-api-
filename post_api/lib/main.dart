import 'package:flutter/material.dart';
import 'package:post_api/page/post_page.dart';
import 'package:post_api/view/views.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.purple,
      ),
      home: ChangeNotifierProvider(
          create: (BuildContext context) => ProductPage(),
          child: const PostPage()),
    );
  }
}
