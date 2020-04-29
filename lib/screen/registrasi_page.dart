import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpci_pajero/widget/bezierContainer.dart';
import './Login_page.dart';
import './upload_Dokument.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }


  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Nama Lengkap *"),
        _entryField("Nama Panggilan *"),
        _entryField("Chapter *"),
        _entryField("No Anggota *"),
        _entryField("Tempat Tanggal Lahir *"),
        _entryField("Pekarjaan *"),
        _entryField("Bidang Usaha *"),
        _entryField("No HP/WA *"),
        _entryField("E-mail *"),
        _entryField("Kota *"),
        _entryField("Alamat Lengkap Sesuai Domisili *"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.amber,
          title: Text('Registrasi',style: TextStyle(fontWeight: FontWeight.w700),),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20,),
                        _emailPasswordWidget(),
                        SizedBox(height: 80,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(

                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Upload_Dokument()));
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

          ],
        )
    );
  }
}
