

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';


class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes>{
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height:100,
            child: Image.asset("assets/download.png",fit: BoxFit.cover,)
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,))
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromRGBO(23, 23, 23, 1),
      body:DefaultTabController(
        length: 8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 1200
                  ),
                  child: TabBar(
                    isScrollable: MediaQuery.of(context).size.width < 600 ? true : false,
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    unselectedLabelColor: Colors.white54,
                    indicatorColor: Colors.white54,
                    labelColor: Colors.white,
                      tabs: <Widget>[
                        Tab(text: "Home",),
                        Tab(text: "Shop",),
                        Tab(text: "Customize",),
                        Tab(text: "New Releases",),
                        Tab(text: "Sale",),
                        Tab(text: "Blog",),
                        Tab(text: "About",),
                        Tab(icon: Icon(Icons.search),),
                      ]
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Center(child: Text("Our Top Picks",style: TextStyle(color: Colors.white,fontSize: 50),)),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              MediaQuery.of(context).size.width>1000?
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        height: MediaQuery.of(context).size.width*0.25,
                        // color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("CAMPUS-II",style: TextStyle(fontSize:screenwidth > 1600 ? 80 : 50,color: Colors.white),),
                            Text("LIVE THE COMFY",style: TextStyle(fontSize:screenwidth > 1600  ? 40 : 25,color: Colors.white54),),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.35,
                        height: MediaQuery.of(context).size.width*0.25,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white24,
                              blurStyle: BlurStyle.normal,
                              blurRadius: 100,
                              spreadRadius: 5
                            )
                          ],
                          // border:GradientBoxBorder(
                          //   width: 3,
                          //     gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.red,
                          //         Colors.orange,
                          //         Colors.cyan,
                          //         Colors.blue,
                          //         Colors.blueAccent,
                          //         Colors.yellow,
                          //       ]
                          //     )
                          // )
                        ),
                        // color: Colors.blue,
                        child: Image.asset("assets/download1.png"),
                      ),
                    ),
                  ],
                ),
              )
                  :
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height*0.25,
                      // height: MediaQuery.of(context).size.height*0.25,
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("CAMPUS-II",style: TextStyle(fontSize:screenwidth > 1600 ? 80 : 50,color: Colors.white),),
                          Text("LIVE THE COMFY",style: TextStyle(fontSize:screenwidth > 1600  ? 40 : 25,color: Colors.white54),),
                        ],
                      ),
                    ),
                    SizedBox(height: screenheight*0.02,),
                    Container(
                      width: MediaQuery.of(context).size.height*0.35,
                      height: MediaQuery.of(context).size.height*0.25,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white24,
                                blurStyle: BlurStyle.normal,
                                blurRadius: 100,
                                spreadRadius: 5
                            )
                          ],
                          // border:GradientBoxBorder(
                          //     width: 3,
                          //     gradient: LinearGradient(
                          //         begin: Alignment.topLeft,
                          //         end: Alignment.bottomRight,
                          //         colors: [
                          //           Colors.red,
                          //           Colors.orange,
                          //           Colors.cyan,
                          //           Colors.blue,
                          //           Colors.blueAccent,
                          //           Colors.yellow,
                          //         ]
                          //     ),
                          // )
                      ),
                      child: Image.asset("assets/download1.png"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
