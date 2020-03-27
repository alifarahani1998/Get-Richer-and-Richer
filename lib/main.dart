import 'package:toast/toast.dart';
import 'package:flutter/material.dart';


void main() => runApp(GetRiche());

class GetRiche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "make it rain",
      home: GetRich()
    ) ;
  }

}

class GetRich extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return GetR();
  }
  }

class GetR extends State<GetRich>{

  int a = 0;
  String aa = "\$0";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
            Toast.show("this is a toast message", context, duration: 3, backgroundColor: Colors.red),
        ),
        endDrawer: Drawer(

        ),
        appBar: AppBar(
          title: Text(
            "Make It Rain",
          ),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  "Get Rich!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey
                  ),
                ),
              ),
              Expanded(child: Center(
                child: Text(
                    "the amount of money is: " + aa,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 50,
                    fontWeight: FontWeight.w800
                  ),
                ),),
              ),
              Expanded(
                child: Builder(
                  builder: (ctx) =>
                      Center(
                        child: FlatButton(
                          child: Text("Let it Rain"),
                          onPressed: increaseMoney,
                          color: Colors.greenAccent,
                          onLongPress: () {
                            final snackbar = SnackBar(content: Text("hello"), duration: Duration(milliseconds: 500),);
                            Scaffold.of(ctx).showSnackBar(snackbar);
                          },
                        ),
                      ),
                )
              )
            ],
          )
        )
      ),
    );
  }


  void increaseMoney() {
    setState(() {
      a = a + 100;
      aa = "\$" + a.toString();
    });
  }

}



