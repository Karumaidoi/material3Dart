import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(
              widget.title,
              style: const TextStyle(fontSize: 18),
            ),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home_filled),
              ),
              Tab(
                text: "Activity",
                icon: Icon(Icons.local_activity),
              )
            ]),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                TextButton(onPressed: () {}, child: const Text("Money")),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.adaptive.share_sharp)),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Take Action 1")),
                OutlinedButton(
                    onPressed: () {}, child: const Text("Take Action")),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                        "Material 3, also known as Material You, is the next generation of Material Design. With new features and widget updates, UI design is more uniform across platforms."),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              // indicatorColor: Colors.blue.shade200,
              labelTextStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )),
            ),
            child: NavigationBar(
                selectedIndex: 0,
                height: 80,
                onDestinationSelected: (index) =>
                    // ignore: avoid_print
                    print('Presses $index'),
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home_rounded),
                      label: 'Home',
                      selectedIcon: Icon(Icons.home_filled)),
                  NavigationDestination(
                      icon: Icon(Icons.code),
                      label: 'Dev',
                      selectedIcon: Icon(Icons.code)),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
