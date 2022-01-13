import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(color: Color (0xFFeceff1), width: 2));
    const LinktestSt = TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 0.6));
    return MaterialApp(
      home: Scaffold(
          body: Container (
            decoration: const BoxDecoration(image: DecorationImage(
                image: AssetImage('assets/Fon3.jpg'), fit: BoxFit.cover)),
            width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SingleChildScrollView(child: Column(children: [
                const SizedBox(height: 100,),
                const SizedBox(width: 150, height: 150, child: Image(
                    image: AssetImage('assets/logo2.png')),),
                const SizedBox(height: 20,),
                const Text('Введите логин и пароль',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                const SizedBox(height: 20,),
                const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Логин',
                    ),
                  ),
                const SizedBox(height: 20,), const TextField(obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                const SizedBox(height: 28,),
                SizedBox(width: 154, height: 42,child:
                ElevatedButton(onPressed: () {},
                  child: const Text('Вход'),
                style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(0, 0, 0, 0.6),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.0),
                ),),)
                ),
                const SizedBox(height: 62,),
                InkWell(child: const Text('Забыли пароль?', style: LinktestSt,),
                    onTap: () {}),
                const SizedBox(height: 20,),
                InkWell(child: const Text('Обращение к разработчику', style: LinktestSt,),
                    onTap: () {}),
              ],),
            ),
          )
      ),
    );
  }
}


