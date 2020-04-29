import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mpci_pajero/widget/Widget.dart';


class Home_Page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Home_Page>{
  bool isNavigationBarGradient = false;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(_scrollListener);
    super.initState();

  }

  @override
  Future dispose() async {
    ScrollController().removeListener(_scrollListener);
    super.dispose();
  }

  bool isVisible = true;
  void _scrollListener() {
    try {
      if (scrollController.position.isScrollingNotifier.value == true) {
        setState(() {
          isVisible = false;
        });
      }
      Future.delayed(const Duration(microseconds: 300000), () {
        if (scrollController.position.isScrollingNotifier.value == false) {
          setState(() {
            isVisible = true;
          });
        }
      });
      if (scrollController.position.pixels >= 150) {
        setState(() {
          isNavigationBarGradient = true;
        });
      } else {
        setState(() {
          isNavigationBarGradient = false;
        });
      }
    } catch (e) {
      // print('errorrr on scrolling notifiiieeer');
    }
  }

  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body:
          SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                        SingleChildScrollView(
                          controller: scrollController,
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                height: MediaQuery.of(context).size.width / 14* 11,
                               width: double.infinity,
                                alignment: Alignment.center,
                                child: Carousel(
                                  boxFit: BoxFit.fill,
                                  dotSize: 5.0,
                                  dotSpacing: 15.0,
                                  dotColor: Colors.white,
                                  indicatorBgPadding: 60.0,
                                  dotBgColor: Colors.transparent,
                                  autoplay: true,
                                  moveIndicatorFromBottom: 30,
                                  dotPosition: DotPosition.bottomLeft,

                                  images: [
                                    Image.asset('assets/images/gambar_1.jpeg'),
                                    Image.asset('assets/images/gambar_2.jpeg'),
                                    Image.asset('assets/images/gambar_3.jpeg'),
                                  ],
                                ),
                              ),
                              Positioned(
                                child: InkWell(
                                  child: Container(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                                      child:
                                      Text("Lihat Semua",style: TextStyle(color: Colors.white),),
                                    ),
                                    decoration: BoxDecoration(
                                        color:Color(0xb3cccccc),
                                        borderRadius: BorderRadius.all(Radius.circular(9))),
                                    alignment: Alignment.center,
                                  ),
                                  onTap: () {

                                  },
                                ),
                                bottom: 60, //DesignUtil.queryHeight(context) * 0.055,
                                right: 20,
                                height: 25,
                              ),
                              Positioned(
                                top: 240,
                                 // top: DesignUtil.queryWidth(context) / 16 * 9 + 10,
                                  left: 0,
                                  right: 0,
                                  // child: SafeArea(
                                  child:  Container(
                                    height: MediaQuery.of(context).size.width * 10.06,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(17), topLeft: Radius.circular(17))),
                                  )
                              ),
                            ],
                          ),
                        ),

                    Container(
                      margin: EdgeInsets.only(left: 30,),
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: 5,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(3.5)),
                                  color: Color(0xfffaa61a))),
                          Padding(
                            padding: EdgeInsets.only(top: 2, left: 12),
                            child: Text("News",
                                style:TextStyle( fontWeight: FontWeight.w700,fontSize: 20)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    itemCard('Deklarasi Mitsubishi Pajero ', 'assets/images/gambar_1.jpeg', false),
                    itemCard('Deklarasi Mitsubishi Pajero ', 'assets/images/gambar_2.jpeg', true),
                    itemCard('Deklarasi Mitsubishi Pajero ', 'assets/images/gambar_3.jpeg', true),
                    itemCard('Deklarasi Mitsubishi Pajero ', 'assets/images/gambar_4.jpeg', true),
            ]
                ),
                Positioned(
                    top: 0, left: 0, right: 0, child: _buildTopNavigation(context)),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: isVisible
                      ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(bottom: 10),
                      width: DesignUtil.queryWidth(context) - 20,
                      height: DesignUtil.isTablet(context)
                          ? DesignUtil.queryHeight(context) / 11
                          : DesignUtil.queryHeight(context) / 7,
                      )
                      : SizedBox(),
                )

    ]
            )
          )
    );

  }
  Widget _buildTopNavigation(BuildContext context) => Container(
      decoration: isNavigationBarGradient
          ? BoxDecoration(color: DesignUtil.primary_blue)
          : BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [DesignUtil.transparent_black, Colors.transparent])),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 8.0, right: 4.0),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: DesignUtil.isTablet(context) ? 21 : 13,
                child: InkWell(
                    onTap: () {
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 5),
                      child: Container(
                        height: 35,
                        child: TextField(
                          autofocus: false,
                          enabled: false,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 10,
                                right: 10), //EdgeInsets.all(0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.5),
                            ),
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    )),
              ),
              Flexible(
                flex: 2,
                child: IconButton(
                  icon: Icon(Icons.more_vert,color: Colors.white,),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
      ));

}


Widget itemCard(String title, String imgPath, bool isFavorite) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 110.0,
          width: double.infinity,
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Container(
                    width: 140.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 4.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                         // SizedBox(width: 45.0),
//                          Material(
//                            elevation: isFavorite ? 0.0 : 2.0,
//                            borderRadius: BorderRadius.circular(20.0),
//                            child: Container(
//                              height: 40.0,
//                              width: 40.0,
//                              decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.circular(20.0),
//                                  color: isFavorite ? Colors.grey.withOpacity(0.2) : Colors.yellow),
//                              child: Center(
//                                child: isFavorite ? Icon(Icons.favorite_border) : Icon(Icons.favorite, color: Colors.red),
//                              ),
//                            ),
//                          )

                      SizedBox(height: 5.0),
                      Container(
                        width: 175.0,
                        child: Text(
                          'Mitsubishi Pajero Club Indonesia (MPCI) deklarasikan secara resmi kehadirannya sebagai klub baru di dunia otomotif pada hari',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Colors.grey,
                              fontSize: 12.0),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 80,top: 1),
                            child: Text('1 Jam yang Lalu',style: TextStyle(
                            fontSize: 12
                            ),),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),


            ],
          ),
        ),

      ],
    ),
  );
}
