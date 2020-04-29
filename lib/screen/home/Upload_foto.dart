import 'dart:io';

import 'package:flutter/material.dart';



class Page_Upload extends StatefulWidget {
  @override
  _PageTambahMenuState createState() => _PageTambahMenuState();
}

class _PageTambahMenuState extends State<Page_Upload> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            centerTitle: true,
            title: Text('Upload Foto'),
          ),
          body: formTambahMenu()
      ),
    );
  }

  Widget formTambahMenu(){
    return ListView(
      children: <Widget>[
        Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Form(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,0,10,10),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        new TextFormField(

                          decoration: new InputDecoration(
                              hintText: "Judul",
                              labelText: "Judul"),

                        ),

                        new TextFormField(
                          decoration: new InputDecoration(
                              hintText: "Deskripsi Foto", labelText: "Keterangan Foto"),
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Text('Gambar'),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.image),
                              onPressed: () {

                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.camera_alt),
                              onPressed: () {
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                color: Colors.blueAccent,
                                onPressed: () {
                                },
                                textColor: Colors.white,
                                child: Center(
                                  child: Text('Simpan'),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child: RaisedButton(
                                color: Colors.deepPurple,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                textColor: Colors.white,
                                child: Center(
                                  child: Text('Batal'),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}