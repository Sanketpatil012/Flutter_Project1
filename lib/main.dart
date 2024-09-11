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
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

  class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

        backgroundColor: Colors.orange,
        title: Center(child: Text("Kindacode.com" )),
        ),
      body: Column(
        children:<Widget> [
            Container(
                color: Colors.green,
                height: 100,
                width:double.infinity,
                child:(
                  Center(
                     child:Text("Have A Nice Day" ,style:TextStyle(fontSize: (25) , color: Colors.white, fontWeight:FontWeight.w600),)

                        )
                       )
                      ),
                  Expanded(
                      child:ListView.builder(
                         itemCount: 30,
                         itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            padding: EdgeInsets.all(16),
                            color: Colors.blue[300],
                            child: Center(
                              child: Text(
                                'Item $index',
                                  style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                  )


        ],
      )



    );
  }
}
// */