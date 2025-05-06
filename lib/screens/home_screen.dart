import 'package:flutter/material.dart';

// -- Widgets
import 'package:foodora/widgets/home_screen_widgets/burger_page_view.dart';
import 'package:foodora/widgets/home_screen_widgets/cart_widget.dart';
import 'package:foodora/widgets/home_screen_widgets/categories_tab_bar_widget.dart';
import 'package:foodora/widgets/home_screen_widgets/custom_drawer_widget.dart';
import 'package:foodora/widgets/home_screen_widgets/page_indicator_widget.dart';
import 'package:foodora/widgets/home_screen_widgets/search_bar_widget.dart';

// -- Extensions 
import 'package:foodora/extensions/screen_size/screen_size.dart';

// -- External Packages
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{

  late TabController _tabBarController; 
  late PageController _pageController;
  int currentIndexTabBar = 0;
  int currentIndexPageView = 0;
  late final String nameOfCategory;

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length:3, vsync: this);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.5,
      );
  }

  @override
  void dispose() {
    super.dispose();
    _tabBarController.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 24),
            child: Image.asset('assets/home_screen/home_screen_images/Mask group.png')
          )
        ],
      ),
      floatingActionButton: CartWidget(),
      drawer: Drawer(
        child: CustomDrawerWidget()
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.getWidth(),
          
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
    
              SizedBox(height: 32),
          
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Choose the',
                    style: GoogleFonts.poppins( fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff272727)),
                    children: [
                      TextSpan(text: '\nFood you love', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700))
                    ]
                  )
                ),
              ),
    
              SizedBox(height: 32),

              SearchBarWidget(),       
    
              SizedBox(height: 32),
    
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Categories', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600))
              ),

              CategoriesTabBarWidget(currentIndexTabBar: currentIndexTabBar, tabBarController: _tabBarController),

              SizedBox(height: 32),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Burger',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ) ,
                  )
                ),

                SizedBox(height: 24),

                BurgerPageView(
                  pageController: _pageController, 
                  currentIndexPageView: currentIndexPageView, 
                  gettingCurrentPageIndex: (currentPageViewIndex) {
                  setState(() {
                    currentIndexPageView = currentPageViewIndex;
                  });
                },),

                SizedBox(height: 48,),

                PageIndicatorWidget(currentPage: currentIndexPageView)
          
            ],
          ),
        ),
      ),
    );
  }
}
