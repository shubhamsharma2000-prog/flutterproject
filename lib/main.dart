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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
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
        title: Text('basic calculator'),
      ),
      body:
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.deepOrangeAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 15),
                            child: TextField(
                              decoration: InputDecoration(focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Colors.black,width: 2),),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                                hintText: "only number",
                                floatingLabelAlignment: FloatingLabelAlignment.center ,


                              ),
                              keyboardType: TextInputType.number,
                              controller: no1Controller ,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 15),
                            child: TextField(decoration: InputDecoration(focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                            ),
                              keyboardType: TextInputType.number,
                              controller: no2Controller,
                            ),
                          ),
                        ),
                      ],
                  ),
                    ),
              ),
              Expanded(

                child: Container(
                  color: Colors.lime,

                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var res = no1+no2;
                          result= "The sum of $no1 and $no2 is : $res";
                          setState(() {

                          });
                        }, child: Text("Add")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var diff = no1*no2;
                          result= "The sum of $no1 and $no2 is : $diff";
                          setState(() {

                          });
                        }, child: Text("Multiply")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sub = no1-no2;
                          result= "The sum of $no1 and $no2 is : $sub";
                          setState(() {

                          });
                        }, child: Text("Substract")),
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var div = no1/no2;
                          result= "The sum of $no1 and $no2 is : $div";
                          setState(() {

                          });
                        }, child: Text("Divide")),



                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.orangeAccent,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Text("result is:    ",style:TextStyle(fontSize: 40,color: Colors.black,fontStyle: FontStyle.italic),),
                        Text(result,style: TextStyle(fontSize: 21)),
                      ],
                    ),
                  ))
            ],
          ),

    );
    }
}
