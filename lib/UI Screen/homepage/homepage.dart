import 'dart:core';
import 'package:askun/utilites/constant.dart';
import 'package:askun/utilites/strings.dart';
import 'package:askun/widget/smalltext.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



final List<String> imgList = [
  'assets/home/img1.png',
  'assets/home/img2.png',
  'assets/home/img3.png',
  'assets/home/img4.png',
  'assets/home/img5.png',
  'assets/home/img6.png',
];


final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000.0)),
          ),
        ))
    .toList();

class Category {
  final String tittle;
  final String img;

  Category({

    required this.tittle,
    required this.img
  });
}class Cat {
  final String tittle;
  final String img;

  Cat({

    required this.tittle,
    required this.img
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Category> CategoryList = <Category>[
    Category(

      tittle: 'Fruits & Vegetable',
      img: MyStrings.img1,
    ),
    Category(

      tittle: 'Atta, Rice, Oil & Dals',
      img: MyStrings.img2,
    ),

  ];
  List<Cat> CatList = <Cat>[
    Cat(

      tittle: 'Masala & Dry Fruits',
      img: MyStrings.img3,
    ),
    Cat(

      tittle: 'Sweeet Craving',
      img: MyStrings.img3,
    ),
    Cat(
      tittle: 'Frozen Food & Ice Cream',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Packaged Food',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Dairy, Bread & Eggs',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Atta, Rice, Oil & Dals',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Cold Drinks & Juices',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Munchies',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Meat, Fish & Eggs',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Breakfast & Sauces',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Tea, Coffee & More',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Atta, Rice, Oil & Dals',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Buscuits',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Makeup & Beauty',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Bath & Body',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Cleaning & Essentials',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Home Needs',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Electricals & accessories',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Hygiens & grooming',
      img: MyStrings.img3,
    ), Cat(

      tittle: 'Health & Babycare',
      img: MyStrings.img3,
    ),

  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 5,
            ),
            SmallText(
              text: 'chennai',
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 30,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search_rounded,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Column(
            children: [
              // CarouselSlider(
              //   items: imageSliders,
              //   carouselController: _controller,
              //   options: CarouselOptions(
              //       autoPlay: true,
              //       disableCenter: false,
              //       initialPage: 0,
              //       enlargeCenterPage: false,
              //       aspectRatio: 2.0,
              //       onPageChanged: (index, reason) {
              //         setState(() {
              //           _current = index;
              //         });
              //       }),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : primaryColor)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              heightSpace,
              heightSpace,
              Padding(
                padding: const EdgeInsets.fromLTRB(12,0,12,0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: MyStrings.category,fontWeight: FontWeight.w500,),
                        Row(
                          children: [
                            SmallText(text: MyStrings.seeAll,size: 14 ,color: primaryColor,),
                            SizedBox(width: 5,),
                            Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:circleColor,
                                ),

                                child: Icon(Icons.keyboard_arrow_right,color: primaryColor,)),
                          ],
                        )
                      ],
                    ),
                    heightSpace,
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 1.3,
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: CategoryList.length,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        // controller: ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: containerColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallText( text: CategoryList[index].tittle,color: primaryColor,fontWeight: FontWeight.bold,size: 14,textAlign: TextAlign.center,),
                                      Image.asset(
                                        CategoryList[index].img,
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          );
                        }),
                    heightSpace,
                    heightSpace,
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 2.5,
                          crossAxisCount: 4,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: CatList.length,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        // controller: ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: containerColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmallText( text: CatList[index].tittle,color: primaryColor,size: 13,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                                      heightSpace,
                                      Image.asset(
                                        CatList[index].img,
                                       ),
                                    ],
                                  ),
                                )
                            ),
                          );
                        }),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
