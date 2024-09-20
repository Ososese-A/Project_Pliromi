import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1731),
      body:  Column(
        children: [
          SizedBox(height: 40),
          Container(
            child: Center(
              child: SvgPicture.asset('assets/others/pliromi_intro.svg'),
            ),
          ),

          SizedBox(height: 48,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/others/quest_a.png'),
              SvgPicture.asset('assets/icons/circle.svg'),
            ],
          ),

          SizedBox(height: 64,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/circle.svg'),
              Image.asset('assets/others/quest_b.png'),
            ],
          )
        ],
      ),
    );
  }
}