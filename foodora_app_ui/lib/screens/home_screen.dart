

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  int selectedCardIndex = -1;

  @override

void initState(){
super.initState();
_tabController = TabController(length: 3, vsync: this);
}

 @override
 void dispose(){
  _tabController.dispose();
  super.dispose();
 }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [ Image.asset("lib/assets/images/profile.png")],
      ),
      drawer: Drawer( child:
ListView(children: [ 
ListTile(
  title: const Text("item 1"),
  onTap: (){},
),
ListTile(
  title: const Text("item 2"),
  onTap: (){},
),
  

],),
      ),
      body: Column(
        children: [

Padding(
  padding: const EdgeInsets.only(right:270),
  child: Text("Choose the", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400, ) ),
),
Padding(
  padding: const EdgeInsets.only(right: 250),
  child: Text("Food you love", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w800, ) ),
),
SizedBox(height: 40,),
         Padding(
           padding: const EdgeInsets.only(left: 16.0, right: 16),
           child: TextField(
            
            decoration: InputDecoration(
              hintText: 'Search for a food item',
              hintStyle: TextStyle(color: Color(0XFFBEBEBE), fontSize: 12, fontWeight: FontWeight.w400),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Color(0XFFEAEAF5))
              )
            ),
           ),
         ),
             SizedBox(height: 40,),
         Padding(
           padding: const EdgeInsets.only(right: 300.0),
           child: Text("Categories", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),),
         ),
         SizedBox(height: 40,),
         TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          onTap: (_){
            setState(() {
              
            });
          },
          tabs: [
            
            Container(
             
        width: 110,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
             BoxShadow(
              color: Color(0x40272727),
              blurRadius: 35 ,
              offset: Offset(0, 4)
             ),
            ],
          border: Border.all(
            color: _tabController.index == 0
              ? Color(0xFFFF0036) 
             : Color(0XFFEAEAF5),
            width: 1,
            
          ),
          
        ),

              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Tab(child: Column(children: [
                      SvgPicture.asset(
                        "lib/assets/svgs/burger.svg", 
                        width: 21,
                         height: 25,
                        color: _tabController.index == 0 ? Color(0xFFFF0036)  :  Color(0x40272727),
                         ),
                     Text("Burger", style: GoogleFonts.poppins(color: _tabController.index == 0 ? Color(0xFFFF0036) :Color(0XFFBEBEBE), fontSize: 10, fontWeight: FontWeight.w600)),
                    
                    ],),),
                  ),
                ],
              )),
                 Container(
             
        width: 110,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
             BoxShadow(
              color:  Color(0x40272727),
              blurRadius: 35 ,
offset: Offset(0, 4)
             )
            ],
          border: Border.all(
            color: _tabController.index == 1
              ? Color(0xFFFF0036) 
             : Color(0XFFEAEAF5),
            width: 1,
            
          ),
          
        ),

              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Tab(child: Column(children: [
                      SvgPicture.asset("lib/assets/svgs/pizza.svg", width: 21, height: 25, color: _tabController.index == 1 ? Color(0xFFFF0036)  :  Color(0x40272727),),
                     Text("Pizza", style: GoogleFonts.poppins(color:  _tabController.index == 1 ? Color(0xFFFF0036)  :  Color(0XFFBEBEBE), fontSize: 10, fontWeight: FontWeight.w600)),
                    
                    ],),),
                  ),
                ],
              )),
                 Container(
             
        width: 110,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
             BoxShadow(
              color: _tabController == 2
              ?  Color(0x3DFF0036)
             : Color(0x40272727),
              blurRadius: 35 ,
offset: Offset(0, 4)
             )
            ],
          border: Border.all(
           color: _tabController.index == 2
              ? Color(0xFFFF0036) 
             : Color(0XFFEAEAF5),
            width: 1,
            
          ),
          
        ),

              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Tab(child: Column(children: [
                      SvgPicture.asset("lib/assets/svgs/chicken.svg", width: 21, height: 25,color:  _tabController.index == 2 ? Color(0xFFFF0036)  :  Color(0x40272727),),
                     Text("Chicken", style: GoogleFonts.poppins(color:  _tabController.index == 2 ? Color(0xFFFF0036)  :  Color(0x40272727), fontSize: 10, fontWeight: FontWeight.w600)),
                    
                    ],),),
                  ),
                ],
              )),
              
            
          ],
          ),
          Expanded(
            child:  TabBarView(
              controller: _tabController,
              children: [
ListView(
  padding: EdgeInsets.all(16),
  children: [
      SizedBox(height: 32),
    Text("Burgers", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    SizedBox(height: 32),
  SizedBox(
    height: 200,
    child: PageView(
    
    
      children: [SizedBox(
              width: 400,
          child: Row(
           
            children: [
              // Card 1
              SizedBox(width: 53,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCardIndex = 0;
                  });
                },
                child: Container(
                  width: 173,
                  height: 211,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: selectedCardIndex == 0
                          ? [Color(0xFFFF0036), Color(0xFFFF6787)]
                          : [Colors.white, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: selectedCardIndex == 0
                          ? Colors.transparent
                          : Color(0XFFEAEAF5),
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [BoxShadow(
                      blurRadius: 8,
                      color: Color(0x4D272727),
          
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/assets/icons/beef_burger.png"),
                      Padding(
                        padding: const EdgeInsets.only(right:40.0, top:3) ,
                        child: Text("Zinger Burger", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:80.0, top:3),
                        child: Image.asset("lib/assets/icons/star1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:80.0, top:3),
                        child: Text("\$12", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24,color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(width: 16,),
              // Card 2
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedCardIndex = 1;
                  });
                },
                child: Container(
                  width: 153,
                  height: 211,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: selectedCardIndex == 1
                          ? [Color(0xFFFF0036), Color(0xFFFF6787)]
                          : [Colors.white, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                      boxShadow: [BoxShadow(
                         blurRadius: 20, // blur strength
          offset: Offset(0, 8), // vertical offset
          spreadRadius: 0,
                  
                      color: Color(0XFFBEBEBE))],
                    border: Border.all(
                      color: selectedCardIndex == 1
                          ? Colors.transparent
                          : Color(0XFFEAEAF5),
                    ),
                    
                    borderRadius: BorderRadius.circular(50),
                    
                  ),
                  child: Column(children: [
                   SizedBox(height: 15,),
                     Image.asset("lib/assets/images/Checken Burger.png"),
                      Padding(
                        padding: const EdgeInsets.only(right:40.0, top:3) ,
                        child: Text("Chicken Burger", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12,color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:80.0, top:3),
                        child: Image.asset("lib/assets/icons/star1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:80.0, top:3),
                        child: Text("\$12", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24,color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
        ],
        ),
        
  ),
  SizedBox(height: 64),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
 children: [
   
Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:  Color(0xFFFF0036),
    ),
  ),
  Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:  Color(0xFFE4E4F1),
    ),
  ),
  Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:   Color(0xFFE4E4F1),
    ),
  ),
  Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:   Color(0xFFE4E4F1),
    ),
  ),Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:  Color(0xFFE4E4F1),
    ),
  ),Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color:   Color(0xFFE4E4F1),
    ),
  ),
 ],
),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.only(left:300.0),
  child: Stack(children: 
  [
  Container(
    
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:  Colors.white,
         boxShadow: [
        BoxShadow(
          color: Color(0x4D272727), // 30% opacity
          blurRadius: 20, // blur strength
          offset: Offset(0, 8), // vertical offset
          spreadRadius: 0, // optional: spread of the shadow
        ),
      ],
      ),
      ),
  
  
  
    Positioned(
      top: 6,
      left: 5,
      child: 
     
      
      Container(
    
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:  Color(0xFFFF0036),
      ),
      child: IconButton(onPressed:(){}, icon: Image.asset("lib/assets/icons/bag.png")),
    ),
      ),
    
    
    ]
    ,),
),
  ],
),

Text("content 2"),
Text("content 2"),

              ],
              
              
              ),
              
              ),

           
         
        ],
      ),
    );
  }
}