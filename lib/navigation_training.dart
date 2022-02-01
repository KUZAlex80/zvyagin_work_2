import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(),
        drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
            DrawerHeader(decoration: const BoxDecoration(color: Colors.blueGrey,),
              child: Container(height: 200,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 100, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    child: const Image (image: AssetImage('assets/logo2.png',))),
                  const Text("Тут что-то будет")
                ],),),),
              ListTile(
                leading: const Icon(Icons.one_k),
                title: const Text("Каталог"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(const SnackBar(content: Text('Переход в каталог')));
                  },
              ),
              ListTile(
                leading: const Icon(Icons.two_k),
                title: const Text("Помощь"),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(const SnackBar(content: Text('Раздел Помощь')));
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.sailing),
                title: const Text("Просто кнопка"),
                onTap: () {
                _messengerKey.currentState!.showSnackBar(const SnackBar(content: Text('Переход в раздел Просто')));
          },),
            ],
          ),
        ),
        body: const Center(child: Text("Здесь будет что-то"),),
      ),
    );
  }
}
