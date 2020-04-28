import 'package:flutter/material.dart';
import 'package:flutterworkshop2/SmootDetail.dart';
import 'package:flutterworkshop2/model/smoothie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF05262),
          centerTitle: true,
          title: Text("Smoothie Bar",style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 25,
          ),),
        ),
        body:
        ListView(
          children: <Widget>[
            SizedBox(height: 60,),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:
                  (_) => SmoothDetail(

              ),)),
              child: Container(


                child: Stack(

                  children: <Widget>[



                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,top: 30),
                          child: Container(
                            height: 140,
                            width: 390,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text(smoothies[0].name,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                  ),

                                  ),
                                )),
                            decoration: BoxDecoration(
                                color: Color(smoothies[0].color),
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 20),
                        child: Image.asset(
                          smoothies[0].imagePath,
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(


              child: Stack(

                children: <Widget>[



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,top: 30),
                        child: Container(
                          height: 140,
                          width: 390,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(smoothies[1].name,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                ),

                                ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(smoothies[1].color),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 20),
                      child: Image.asset(
                        smoothies[1].imagePath,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(


              child: Stack(

                children: <Widget>[



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,top: 30),
                        child: Container(
                          height: 140,
                          width: 390,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(smoothies[2].name,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                ),

                                ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(smoothies[2].color),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 20),
                      child: Image.asset(
                        smoothies[2].imagePath,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),



      ),
    );
  }
}

