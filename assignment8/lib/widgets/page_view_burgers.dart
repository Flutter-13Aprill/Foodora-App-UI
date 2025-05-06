import 'package:flutter/material.dart';

class PageViewBurgers extends StatefulWidget {
  const PageViewBurgers({
    super.key,
    required this.currentPage,
    required this.onSwap,
  });

  final int currentPage;
  final void Function(int value) onSwap;
  //here the onSwap function passing the data from PageViewBurgers  to PageIndicatior after setState the new value
  @override
  State<PageViewBurgers> createState() => _PageViewBurgersState();
}

class _PageViewBurgersState extends State<PageViewBurgers> {
  //the pagecontrller viewportfraction 0.5 to make the appearnce of the 2 cards side by side
  PageController pageHandler = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      width: 350,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          UnconstrainedBox(
            child: Container(
              width: 350,
              height: 250,
              child: PageView(
                padEnds: false,
                //here where the function is calls widget.onSwap because we are calling it from constructor
                onPageChanged: widget.onSwap,

                //assign controller
                controller: pageHandler,
                children: [
                  //where the box for the pageg start used UnconstrainedBox so the container wont be effected by other widgets sizes
                  UnconstrainedBox(
                    child: Container(
                      width: 173,
                      height: 211,
                      decoration: BoxDecoration(
                        boxShadow: [
                          if (widget.currentPage == 0)
                            BoxShadow(
                              color: const Color.fromARGB(
                                255,
                                158,
                                76,
                                76,
                              ).withValues(alpha: 0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                            ),
                        ],
                        borderRadius: BorderRadius.circular(34),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors:
                              widget.currentPage == 0
                                  ? [
                                    Color.fromARGB(255, 255, 0, 54),
                                    Color.fromARGB(255, 255, 103, 135),
                                  ]
                                  : [Colors.white, Colors.white],
                        ),
                      ),
                      //here I gave the containers IconButton to show AlertDialog
                      child: UnconstrainedBox(
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Buy'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Nevermind'),
                                      ),
                                    ],
                                    title: Text('Add to cart'),
                                    content: Text(
                                      'Do you want to add this item to cart?',
                                    ),
                                  ),
                            );
                          }, // the container for zinger burger
                          icon: Container(
                            width: 150,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/project_images/burger_fries_image.png',
                                ),
                                Text(
                                  'Zinger Burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                Image.asset(
                                  'assets/project_icons/rating_icon.png',
                                ),
                                SizedBox(height: 2),
                                Text(
                                  '\$12',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  UnconstrainedBox(
                    child: Container(
                      width: 173,
                      height: 211,
                      decoration: BoxDecoration(
                        boxShadow: [
                          if (widget.currentPage == 1)
                            BoxShadow(
                              color: const Color.fromARGB(
                                255,
                                158,
                                76,
                                76,
                              ).withValues(alpha: 0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 3),
                            ),
                        ],
                        borderRadius: BorderRadius.circular(34),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors:
                              widget.currentPage == 1
                                  ? [
                                    Color.fromARGB(255, 255, 0, 54),
                                    Color.fromARGB(255, 255, 103, 135),
                                  ]
                                  : [Colors.white, Colors.white],
                        ),
                      ),

                      //here I gave the containers IconButton to show AlertDialog
                      child: UnconstrainedBox(
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Buy'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Nevermind'),
                                      ),
                                    ],
                                    title: Text('Add to cart'),
                                    content: Text(
                                      'Do you want to add this item to cart?',
                                    ),
                                  ),
                            );
                          },
                          //container for chicken burger
                          icon: Container(
                            width: 150,
                            height: 175,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/project_images/chicken_burger.png',
                                  ),
                                ),
                                Text(
                                  'Chicken Burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        widget.currentPage == 1
                                            ? Colors.white
                                            : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Image.asset(
                                  'assets/project_icons/second_rating_icon.png',
                                ),
                                SizedBox(height: 2),
                                Text(
                                  '\$15',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        widget.currentPage == 1
                                            ? Colors.white
                                            : Colors.black,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //dummy container because of the viewportfraction 0.5 and it shows the containers by each side
                  //but the down side is when setting the pageview to left using padEnds it will not select the last index
                  //that's why is the dummy is setted here
                  UnconstrainedBox(
                    child: Container(
                      width: 173,
                      height: 211,
                      decoration: BoxDecoration(
                        boxShadow: [
                          if (widget.currentPage == 2)
                            BoxShadow(
                              color: const Color.fromARGB(
                                255,
                                158,
                                76,
                                76,
                              ).withValues(alpha: 0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(
                                0,
                                3,
                              ), 
                            ),
                        ],
                        borderRadius: BorderRadius.circular(34),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors:
                              widget.currentPage == 2
                                  ? [
                                    Color.fromARGB(255, 255, 0, 54),
                                    Color.fromARGB(255, 255, 103, 135),
                                  ]
                                  : [Colors.white, Colors.white],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
