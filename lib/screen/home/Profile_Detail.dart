import 'package:flutter/material.dart';
import './Profile_page.dart';
import './Button_Navigation.dart';
import 'package:mpci_pajero/widget/Widget.dart';

class P_Detail_Page  extends StatefulWidget{
  @override
 DetailState createState()=> DetailState();
}
class DetailState extends State<P_Detail_Page>{
  @override
  Screen size;
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor:  Color(0xffff8f00),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.5, 0.9],
                            colors: [
                              Color(0xffffcc80), Color(0xffffcc80)
                            ]
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Stack(
                          children: <Widget>[
                            CircleAvatar(
                              minRadius: 60,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                minRadius: 50,
                                child: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 192, 204, 218),
                                ),

                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 200,top: 70),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.camera_alt, color: Colors.blue),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10,),
                        Text("Nama", style: TextStyle(fontSize: 22.0, color: Colors.white),),
                        // Text("Kathmandu, Nepal", style: TextStyle(fontSize: 14.0, color: Colors.red.shade700),)
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                // height: 50,
              ),
              ListTile(
                title: Text("Nama", style: TextStyle(color: Colors.black, fontSize: 19.0,fontWeight: FontWeight.w600),),
                subtitle:  Text("Nama", style: TextStyle(fontSize: 15.0),),
                trailing: Icon(Icons.create),
              ),
              Divider(),
              ListTile(
                title: Text("Phone", style: TextStyle(color: Colors.black, fontSize: 19.0,fontWeight: FontWeight.w600),),
                subtitle: Text("+628123456789", style: TextStyle(fontSize: 15.0),),
                trailing: Icon(Icons.create),
              ),
              Divider(),
              ListTile(
                title: Text("Email", style: TextStyle(color: Colors.black, fontSize: 19.0,fontWeight: FontWeight.w600),),
                subtitle: Text("email@gmail.com", style: TextStyle(fontSize: 15.0),),
              ),
              Divider(),
              ListTile(
                title: Text("Alamat", style: TextStyle(color: Colors.black, fontSize: 19.0,fontWeight: FontWeight.w600),),
                subtitle: Text("alamat", style: TextStyle(fontSize: 15.0),),
                trailing: Icon(Icons.create),
              ),
              Divider(),

            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child:SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  child: Text("Simpan",style: TextStyle(fontSize: 19),),
                  onPressed:(){
                   Navigator.pop(context);
                  },
                  color: Color(0xff1959a9),
                  textColor: Colors.white,
                  //padding: EdgeInsets.fromLTRB(110, 0, 110, 0),
                  splashColor: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}