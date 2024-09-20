import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1731),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 12, 
            bottom: 12
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/others/pliromi_intro_less.svg',
                width: 290.0, // Set the desired width
                height: 228.0, // Set the desired height
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 64),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/form_border_top.svg',
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child:  SvgPicture.asset(
                      'assets/icons/dot.svg',
                      ),
                    ),


                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Color(0xff59cf60),
                        side: BorderSide(
                          color: Color(0xff59cf60), 
                          width: 2.0
                        ),
                        fixedSize: Size(136, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child:  SvgPicture.asset(
                      'assets/icons/circle_small.svg',
                    ),
                    ),



                    ElevatedButton(
                      onPressed: () {}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Color(0xff59cf60),
                        side: BorderSide(
                          color: Color(0xff59cf60), 
                          width: 2.0
                        ),
                        fixedSize: Size(136, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: SvgPicture.asset(
                      'assets/icons/dot.svg',
                      ),
                    ),

                    SvgPicture.asset(
                      'assets/icons/form_border_bottom.svg',
                    ),
                  ],
                ),
              ),

              Text(
                'Pliromi © 2024 copyright',
                style: TextStyle(
                  color: Color(0xfffafafa),
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      )
      
    );
  }
}