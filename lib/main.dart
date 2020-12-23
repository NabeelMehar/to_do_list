import 'package:flutter/material.dart';
import 'file:///C:/flutterapps/to_do_list/lib/CardItemModel.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{


  var cardsList =
  [
    CardItemModel("Personal", "This is discription of this card"),
    CardItemModel("Work", "This is discription of this card"),
    CardItemModel("Home", "This is discription of this card"),
    CardItemModel("Work", "This is discription of this card"),
    CardItemModel("Home", "This is discription of this card")

  ];

  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: new AppBar(
        title: new Text("TODO List", style: TextStyle(fontSize: 16.0),),
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        actions: <Widget>[

        ],
        elevation: 0.0,
      ),
      body: cardsList.isEmpty?Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "No TODO List items are added yet for this meeting,",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
        ),
      ):Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 450.0,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: cardsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            width: 250.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                        child: Text("${cardsList[position].cardTitle}", style: TextStyle(fontSize: 28.0),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
        onPressed: (){
          showCustomBottomSheet();
        },
      ),
    );
  }

  void showCustomBottomSheet() {

  }
}
