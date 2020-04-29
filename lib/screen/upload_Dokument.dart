import 'package:flutter/material.dart';
import 'package:mpci_pajero/widget/bezierContainer.dart';
import 'package:mpci_pajero/widget/customClipper.dart';
import './home/Button_Navigation.dart';

class Upload_Dokument extends StatefulWidget{
  @override
  UploadState createState()=> UploadState();
}
class UploadState extends State<Upload_Dokument>{
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black,size: 30,),
            ),
            Text('Back',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Color(0xfff7892b),
//        title: Text('Upload Document',style: TextStyle(
//          fontWeight: FontWeight.w700,
//          fontSize: 17
//        ),),
//      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                _backButton(),
                SizedBox(height: 50,),
                new Image.asset(
                  "assets/images/logo_pejero.jpeg",
                  width:  150,
                  height:  110,
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child:  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(top: 25,bottom: 25,left: 10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Foto KTP *',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            child: RaisedButton(
                                color: Colors.orangeAccent,
                                child: Icon(Icons.camera_alt,color: Colors.white,),
                                onPressed: (){

                                }),
                          ),
                          SizedBox(width:5,),
                          Icon(Icons.keyboard_arrow_down)

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child:  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(top: 25,bottom: 25,left: 10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Foto STNK *',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            child: RaisedButton(
                                color: Colors.orangeAccent,
                                child: Icon(Icons.camera_alt,color: Colors.white,),
                                onPressed: (){

                                }),
                          ),
                          SizedBox(width:5,),
                          Icon(Icons.keyboard_arrow_down)

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child:  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(top: 25,bottom: 25,left: 10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Foto Bersama Pajero *',style: TextStyle(fontWeight: FontWeight.w700),),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 30,
                            width: 60,
                            child: RaisedButton(
                                color: Colors.orangeAccent,
                                child: Icon(Icons.camera_alt,color: Colors.white,),
                                onPressed: (){

                                }),
                          ),
                          //SizedBox(width:5,),
                          Icon(Icons.keyboard_arrow_down)

                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: Center(
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Buttom_Navigation()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 14),
                        width: MediaQuery.of(context).size.width - 40,
                        height: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xff1959a9),
                        ),
                        child: Center(
                          child: Text(
                              'Berikutnya',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //Positioned(top: 40, left: 0, child: _backButton()),
          Positioned(
              top: -MediaQuery.of(context).size.height * .16,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer())
        ],
      ),
    );
  }
}