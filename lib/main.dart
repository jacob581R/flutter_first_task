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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Settings'),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        backgroundColor: Colors.white
      ),
      body:
      Container(
        padding: EdgeInsets.fromLTRB(16,32, 16,32),
        child:
      Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // the first section
         Container(
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(padding: EdgeInsets.fromLTRB(0,0,0,8),
                child:  Text("Secutity Settings"),
               ),

                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("face id"),
                          Icon(Icons.toggle_on)
                        ],
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("pin"),
                          Icon(Icons.toggle_off)
                        ],
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("change pin"),
                          Icon(Icons.keyboard_arrow_right_outlined)
                        ],
                      ),
                    ],
                  ),
                )
             ],
           ),
         ),

          Container(
           child: Column( crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 padding:EdgeInsets.fromLTRB(0,0,0,8),
                 child: Text("Password") ,
               ),

               Container( padding: EdgeInsets.all(8),
                 height: 48,
                 decoration: BoxDecoration(
                     border: Border.all(width: 2),
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("change password"),
                     Icon(Icons.keyboard_arrow_right_rounded)
                   ],
                 ),
               ),
             ],
           ),
          ),
          Container(

            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:EdgeInsets.fromLTRB(0,0,0,8),
                  child: Text("Approved addresses") ,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("change key"),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                ),
              ],
            ),
          ),
          // the second section
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:EdgeInsets.fromLTRB(0,0,0,8),
                  child: Text("Security key") ,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            Text("add security key"),
                          ],
                        )
                      ),

                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      )
    );
  }
}

/*
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
