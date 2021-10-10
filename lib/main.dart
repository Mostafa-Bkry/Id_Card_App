import 'package:flutter/material.dart';
import 'package:ninja_id/providers/leve_state_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme:
      ThemeData(brightness: Brightness.dark, primarySwatch: Colors.grey),
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      home: ChangeNotifierProvider<LevelState>(create: (_) => LevelState(),child: MyHomePage(),),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LevelState>(
      builder: (context, LevelState levelState, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ninja Card', style: TextStyle(fontSize: 25)),
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/zoro.gif'),
                radius: 50,
              ),
            ),
          ),
          Divider(
            height: 4,
            color: Colors.grey[400],
            indent: 50,
            endIndent: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 3),
            child: Text(
              'NAME',
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[300],
                  letterSpacing: 3),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 5, 0, 0),
            child: Text('Mostafa Ala',
                style: TextStyle(fontSize: 25, color: Colors.amber)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 5),
            child: Text(
              'LEVEL',
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[300],
                  letterSpacing: 3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 5, 0, 0),
            child: Text(context.watch<LevelState>().counter.toString(),
                style: const TextStyle(fontSize: 23, color: Colors.amber)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
            child: Row(
              children: [
                Icon(Icons.mail_outline_rounded,
                    size: 30, color: Colors.grey[300]),
                const SizedBox(width: 10),
                Text('mbkry661@gmail.com',
                    style: TextStyle(fontSize: 23, color: Colors.grey[300])),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  levelState.reset();
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              levelState.increase();
            },
            splashColor: Colors.black,
            backgroundColor: Colors.grey[500],
            child: const Icon(Icons.add)),
      ),
    );
  }
}
