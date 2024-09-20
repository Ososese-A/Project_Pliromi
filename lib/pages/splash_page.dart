import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pliromi/pages/convert_page.dart';
import 'package:pliromi/pages/home_page.dart';
import 'package:pliromi/pages/overview_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //this keeps track of the current page to display 
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List_pages = [
    //home/splash page 
    ConvertPage(),

    //covert page
    HomePage(),

    //overview page
    OverviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1731),
      appBar: appBar(),
      body: List_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1b1731),
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //convert
          BottomNavigationBarItem(
            // icon: Icon(Icons.access_alarm),
            icon:  Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _selectedIndex == 0 ? Color(0xff59cf60) : Colors.transparent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      _selectedIndex == 0 ? 'assets/icons/convert_icon_g.svg' : 'assets/icons/convert_icon_w.svg',
                      width: 24.0,
                      height: 24.0,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      ' Convert ',
                      style: TextStyle(
                        color: _selectedIndex == 0 ? Color(0xff59cf60) : Color(0xfffafafa),
                      ),
                    ),
                  ],
                ),
                ),
            ),
            label: ''
          ),

          //home
          BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedIndex == 1 ? Color(0xff59cf60) : Colors.transparent,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
              // mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    _selectedIndex == 1 ? 'assets/icons/home_icon_g.svg' : 'assets/icons/home_icon_w.svg',
                    width: 24.0,
                    height: 24.0,
                  ),
                  SizedBox(height: 4.0), // Add space here
                  Text(
                    '   Home   ',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? Color(0xff59cf60) : Color(0xfffafafa),
                    ),
                  ),
                ],
              ),
            ),
          ),
          label: '', // Leave the label empty to avoid duplication
        ),

          //overview 
          BottomNavigationBarItem(
            icon:  Container(
              decoration: BoxDecoration(
                border: Border.all(
                color:  _selectedIndex == 2 ?  Color(0xff59cf60) : Colors.transparent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column (
                children: [
                    SvgPicture.asset(
                    _selectedIndex == 2 ? 'assets/icons/overview_icon_g.svg' : 'assets/icons/overview_icon_w.svg',
                    width: 24.0,
                    height: 24.0,
                    ),
                  SizedBox(height: 4.0,),
                  Text(
                    'Overview',
                    style: TextStyle(
                      color: _selectedIndex == 2 ? Color(0xff59cf60) : Color(0xfffafafa),
                    ),
                  )
                ],
              ),
            
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar( 
      backgroundColor: Color(0xff1b1731),
     leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: SvgPicture.asset(
          'assets/others/pliromi.svg',
          width: 100.0, // Set the desired width
          height: 100.0, // Set the desired height
        ),
      ),
      actions: [ 
        SizedBox(
            child:  IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.menu,
                color: Color(0xFF645bf9),
              ),
              iconSize: 28.0,
            ),
          ),
      ],
    );
  }
}