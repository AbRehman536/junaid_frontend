import 'package:flutter/material.dart';
import 'package:junaid_frontend/models/onBoardingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/car1.jpg", title: 'Request Ride'),
    OnBoardingModel(image: "assets/images/car2.png", title: 'Confirm Ride'),
    OnBoardingModel(image: "assets/images/car3.jpg", title: 'Track Ride'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[index].image.toString(),width: 500,height: 400,),
                    Text(onBoardingList[index].title.toString(),style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w900
                    ),),
                    ],
                );
              },),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  JumpingDotEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get Started"))

        ],
      ),
    );
  }
}
