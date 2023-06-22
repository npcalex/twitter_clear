import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clear/components/npc_button.dart';
import 'package:twitter_clear/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Twitter Clear',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Twitter Clear'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NpcButton.solidBlue(
              onTap: () => Get.offAndToNamed(Routes.TWEETS),
              text: 'Clear tweets',
            ),
            const SizedBox(width: 10),
            NpcButton.solidBlue(
              onTap: () => Get.offAndToNamed(Routes.FAVOURITES),
              text: 'Clear favourites',
            ),
          ],
        ),
      ),
    );
  }
}
