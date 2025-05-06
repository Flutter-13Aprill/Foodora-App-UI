import 'package:flutter/material.dart';
import 'package:foodora_app_ui/screens/home_screen.dart';
import 'package:foodora_app_ui/screens/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SizedBox(
  width: 900,
  child: Column(children: [
   Stack(
    clipBehavior: Clip.none,
    children: [
     Container(
      width: 590,
      

      child: Image.asset("lib/assets/images/Mask group.png", fit: BoxFit.fill,)),
     Positioned(
      
      child: Container(
        width: 590,

        child: Image.asset("lib/assets/images/Ellipse 22.png", fit: BoxFit.fill,)),),
    Positioned(
      top: 110,
      left: 80,

      child: Image.asset("lib/assets/images/logo.png", width: 200 ,)),
      Positioned(
        top: 250,
        left: 50,
        child:
      
       Container(
        width: 310,
        height: 443,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow:[ BoxShadow(
          color: Color(0x1A000000),
          blurRadius: 10,
          spreadRadius: 5,
        ),
        ],
        ),
      ),
      ),
      Positioned(
       top: 280,
       left: 80,
        child: Container(
        width: 258,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0XFFEAEAEA),
          )
        ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 161,),
            child: InkWell(
              onTap: () {
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SignInScreen()),
);

              },
              child: Text("Sign Up", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFFFF0036)))),
          ),
        ),),
        Positioned(
          top: 280,
          left: 80,
          child:Container(
            width: 129,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0XFFFF0036),
              borderRadius: BorderRadius.circular(50),

            ),
            child: Center(child: Text("Log In", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white,))),
          ),),
          Positioned(
            top: 370,
            left: 70,
            child: 
          Container(
            width: 257,
           height: 1,
            color: Color(0XFFEAEAF5),
            

          )),

     Positioned(
      top: 346,
       left: 70,
      child: Text("Enter email or username", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0XFFA8A7A7))),),
         Positioned(
            top: 424,
            left: 70,
            child: 
          Container(
            width: 257,
           height: 1,
            color: Color(0XFFEAEAF5),
            

          )),
               Positioned(
      top: 400,
       left: 70,
      child: Text("Password", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0XFFA8A7A7))),),
      Positioned(
        top: 470,
        left:70,
        child: ElevatedButton(
          onPressed: (){
           Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
    
          },
          style:  ElevatedButton.styleFrom(
            minimumSize: Size(258, 44),
            backgroundColor: Color(0XFFFF0036),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            )
          ),

         child: Center(child: Text("Log in", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white)))) ),
         Positioned(
          top: 540,
          left: 238,
          child: Text("Forgot Password?", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: Color(0XFFA8A7A7))) ),

            Positioned(
          top: 580,
          left: 200,
          child: Text("OR", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFFA8A7A7))) ),

          Positioned(
            top: 620,
            left: 100,
            child: Row(children: [
            Image.asset("lib/assets/icons/facebook.png"),
            SizedBox(width: 31,),
            Image.asset("lib/assets/icons/twitter.png"),
             SizedBox(width: 31,),
            Image.asset("lib/assets/icons/google.png"),


          ],),),
          
          Positioned(
            top: 762,
            left: 170,
            child: Image.asset("lib/assets/images/Vegitables.png"),),
     
   ],)
    
  ],),
)

    );
  }
}