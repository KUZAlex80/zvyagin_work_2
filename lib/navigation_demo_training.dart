import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {const NavigationDemo({Key? key}): super (key: key);
@override
  _NavigationDemoState createState () => _NavigationDemoState();
}
class _NavigationDemoState extends State <NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/info': (context) => const SecondScreen(),
      },
    );
  }
  }
  Widget navDrawer(context) => Drawer(
    child: ListView(padding: EdgeInsets.zero, children: [
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
        leading: const Icon(Icons.sailing),
        title: const Text("Личный кабинет"),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: const Icon(Icons.nat),
        title: const Text("Инфомация"),
        onTap: () {
          Navigator.pushNamed(context, '/info');
        },
        ),
    ]),
  );

    class MainScreen extends StatelessWidget {
      const MainScreen ({Key? key}) : super (key: key);
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Личный кабинет')),
        drawer: navDrawer(context),
          body: const Center(
            child: Text('Личный кабинет'),
          )
        );
      }
    }

class SecondScreen extends StatelessWidget {
  const SecondScreen ({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Информация')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Информация'),
        )
    );
  }
}