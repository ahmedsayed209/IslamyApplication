import 'package:flutter/material.dart';

class tasbehView extends StatefulWidget {
  const tasbehView({super.key});

  @override
  State<tasbehView> createState() => _tasbehViewState();
}

class _tasbehViewState extends State<tasbehView> {
  @override
  Widget build(BuildContext context) {
    double Turns =5;
    return Column(
      children: [
        SizedBox(height:30,),
        Stack(
          children: [
            Center(child: Image.asset("assets/icons/head_of_seb7a_1x.png",height:53,scale:2,)),
            Center(child: AnimatedRotation(
              turns: Turns,
              duration: Duration(seconds:10),
              child: InkWell(
                onTap: (){
                  setState(() {
                    Turns+=10;
                  });
                },
                child: Image.asset("assets/icons/body_of_sebha_1x.png",scale:1.5,height:230),
              ),
            )),
          ],
        ),
      ],
    );
  }
}
