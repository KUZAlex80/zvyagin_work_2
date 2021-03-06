import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
    @override
  Widget build(BuildContext context) {
      final ButtonStyle buttonStyle =
      TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Пример"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.face)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.dangerous)),
            TextButton(
                onPressed: () {},
                child: const Text("Тут"),
              style: buttonStyle,),
          ],
        ),
        body: const Center(child: Text("Что-то"))),
      );
  }
}
