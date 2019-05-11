import 'package:flutter/material.dart';

void main() => runApp(firstclass());

class firstclass extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
          primarySwatch: Colors.pink,
          brightness: Brightness.light,
          accentColor: Colors.pink
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
//pricate Clas or Method
class _HomePageState extends State<HomePage> {




  String changetxt = "First Click";
  void _onpresschange()
  {
    setState(() {

      if(changetxt.startsWith("F") )
      {
        changetxt = "second Click";
      }
      else{
        changetxt = "First Click";
      }
    });
  }


  Widget _bodypage(){
    return Container(
        padding: const EdgeInsets.all(10.1),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(changetxt),

             /* new RaisedButton(
                child: new Text("Click",style: new TextStyle(
                    color: Colors.white,
                    fontSize: 25.0
                ),),
                onPressed: _onpresschange, color: Colors.deepPurple,
              )

              */

            ],
          ),
        )

    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Page Appbar"),
      ),
      body: _bodypage(),
      floatingActionButton: new FloatingActionButton(onPressed: _onpresschange,
          child: new Icon(Icons.refresh),
//        child: new Icon(Icons.add)
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
