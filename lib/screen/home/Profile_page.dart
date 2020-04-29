import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Profile_Detail.dart';
import './Upload_foto.dart';
import 'package:mpci_pajero/screen/Login_page.dart';



class Profile_Page extends StatefulWidget{
  @override
  AkunState createState()=> AkunState();

}
class AkunState extends State<Profile_Page>{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Profile Saya',
            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 25,),
                  Container(
                    child:  Card(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 240, 242, 246),
                              child: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 192, 204, 218),
                              ),
                              radius: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Nama',style: TextStyle(fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Text('No HP'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 110,
                              child: RaisedButton(
                                  color: Colors.orangeAccent,
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w900),),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> P_Detail_Page()));
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  //Toko Londri

                  Container(
                    child:  Card(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.camera_alt,color: Colors.black,size: 28,),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('Upload Foto',style: TextStyle(fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 90,
                              child: RaisedButton(
                                  color: Colors.orangeAccent,
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w900),),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Page_Upload()));
                                  }),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          // Bantuan

                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 30),
                                child: Icon(Icons.help_outline, color: Colors.black),

                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('',
                                        style: TextStyle(color: Colors.grey)),
                                    Row(
                                      children: <Widget>[
                                        Text('Bantuan'),
                                      ],
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                              ),
                              Icon(Icons.chevron_right, color: Colors.grey),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Divider(thickness: 1)),

                          // Tentang kami

                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 30),
                                child: Icon(Icons.group, color: Colors.black),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('',
                                        style: TextStyle(color: Colors.grey)),
                                    Row(
                                      children: <Widget>[
                                        Text('Tantang Kami'),
                                      ],
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                              ),
                              Icon(Icons.chevron_right, color: Colors.grey),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Divider(thickness: 1)),

                          // Hubungi Kami

                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 30),
                                child: Icon(Icons.perm_phone_msg, color: Colors.black),

                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('',
                                        style: TextStyle(color: Colors.grey)),
                                    Row(
                                      children: <Widget>[
                                        Text('Hubungi Kami'),
                                      ],
                                    ),
                                    SizedBox(height: 13,)
                                  ],
                                ),
                              ),
                              Icon(Icons.chevron_right, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  // Keluar

                  Container(
                    child:  GestureDetector(
                      onTap: (){
                        Logout();
                      },
                      child: Card(
                        child: Container(
                            child: ListTile(
                              title: Center(child: Text('Keluar',style: TextStyle(color: Colors.red),)),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void Logout() {
    AlertDialog alertDialog = new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: new Text("Anda yakin ingin Keluar ?"),
      actions: <Widget>[
        new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: new Text(
              "Batal",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () => Navigator.pop(context)),
        SizedBox(
          height: 30,
        ),
        new RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: new Text("Iya", style: new TextStyle(color: Colors.white)),
          color: Colors.green,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

          },
        ),
      ],
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }

}