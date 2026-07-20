import 'package:flutter/material.dart';

class AnimationsScreen extends StatefulWidget {
  const AnimationsScreen({super.key});

  @override
  State<AnimationsScreen> createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          animate = !animate;
        });
      },child: Icon(Icons.play_arrow_sharp),),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                height: animate ? 120 : 70,
                width: animate ? 220 : 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(animate ? 40 : 10),
                color: animate ? Colors.red : Colors.green
              ),
            ),
            AnimatedOpacity(
                opacity: animate ? 1 : 0.2,
                duration: Duration(seconds: 1),
                child: FlutterLogo(size: 40,),
            ),
            AnimatedAlign(
              child: Icon(Icons.person,size: 50,),
                alignment: animate ? 
                Alignment.centerRight 
                : Alignment.centerLeft, 
                duration: Duration(seconds: 1)),
            AnimatedScale(
              child: Icon(Icons.favorite_border, color: Colors.pink,),
                scale: animate ? 4 : 1,
                duration: Duration(seconds: 1)),
            AnimatedRotation(
              child: Icon(Icons.refresh, size: 50,),
                turns: animate ? 2 : 1,
                duration: Duration(seconds: 1)),
            AnimatedSlide(
                offset: animate ?
                 Offset(1, 3)
                : Offset.zero,
                duration: Duration(seconds: 1),
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.orange,
                ),
            ),
            AnimatedCrossFade(
                firstChild: Icon(Icons.favorite,color: Colors.red,size: 60,),
                secondChild: Icon(Icons.star,color: Colors.yellow,size: 60,),
                crossFadeState: animate
                ? CrossFadeState.showSecond
                :CrossFadeState.showFirst,
                duration: Duration(seconds: 1)),
            
          ],
        ),
      ),
    );
  }
}
