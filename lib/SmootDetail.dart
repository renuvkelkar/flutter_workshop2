import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterworkshop2/model/smoothie.dart';
class SmoothDetail extends StatefulWidget {
  final Smoothie smoothie;

  const SmoothDetail({Key key, this.smoothie}) : super(key: key);

  @override
  _SmoothDetailState createState() => _SmoothDetailState();
}

class _SmoothDetailState extends State<SmoothDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.smoothie.name),
        backgroundColor: Color(widget.smoothie.color),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 320),
                  child: Container(
                    height:screenHeight * 0.8 ,
                    width: 500,
                    color: Color(widget.smoothie.color),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 120,left: 150),
                          child: Text("Calories",style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),),
                        ),Padding(
                          padding: const EdgeInsets.only(left: 180,top: 10),
                          child: Text(widget.smoothie.calories,style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60,left: 16),
                          child: Text("Ingredients",style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                          ),),
                        ),

                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            height: 50,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Text(widget.smoothie.ingredient1,style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(widget.smoothie.color),
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Text(widget.smoothie.ingredient2,style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(widget.smoothie.color),
                                    ),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(

                                    child: Text(widget.smoothie.ingredient3,style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(widget.smoothie.color),
                                    ),),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 16),
                          child: Text("Description",style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(widget.smoothie.description,style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90,left: 90),
                  child: Image.asset(widget.smoothie.imagePath,height: 350,width: 300,),
                )
              ],
            )
          ],

        ),
      )

    );
  }
}
