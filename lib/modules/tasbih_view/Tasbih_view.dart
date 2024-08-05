
import 'package:flutter/material.dart';
import 'package:islamyapplication/core/Settings_Provider.dart';
import 'package:provider/provider.dart';

class tasbehView extends StatefulWidget {
  const tasbehView({super.key});

  @override
  State<tasbehView> createState() => _tasbehViewState();
}

class _tasbehViewState extends State<tasbehView> {
  double angleRotation = 0;
  String RandomText = "";
  List<String> AzkarList = [
    "سبحان الله ",
    "الحمد لله ",
    "لا اله الا الله ",
    "الله اكبر ",
    "يارب",
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme =Theme.of(context);
    return Center(
      child: Column(
        children: [
          SizedBox(height:30,),
          Stack(
            children: [
              Center(child: Image.asset(provider.isDark()?"assets/icons/head_of_seb7a_Dark.png":"assets/icons/head_of_seb7a_1x.png" ,height:53,scale:2,)),
              Center(
                  child: InkWell(onTap:() {rotateAngle();
                  },child: Transform.rotate(angle:angleRotation,child: Image.asset(provider.isDark()?"assets/icons/body_of_seb7a_Dark.png":"assets/icons/body_of_sebha_1x.png",scale:1.5,height:230)))),

            ],
          ),
          Text("عدد التسبيحات ",style:theme.textTheme.displayMedium?.copyWith(
            color: provider.isDark() ? Color(0xFFFACC1D)
                :Colors.black,
          ),),
          SizedBox(height:15,),
          Container(
            height: 100,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(33),
            width:130 ,
            decoration: BoxDecoration(
              color: provider.isDark()? Color(0xFF141A2E):Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text(angleRotation.toString(),style: theme.textTheme.bodyMedium,),
          ),
          Container(
            height: 120,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(40),
            width:210 ,
            decoration: BoxDecoration(
                color: provider.isDark()? Color(0xFFFACC1D):Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Text(RandomText,style: theme.textTheme.bodyMedium?.copyWith(
              color: provider.isDark()? Color(0xFF0F1424):Colors.white
            ),),
          ),

        ],
      ),
    );
  }
  void rotateAngle()
  {
    setState(() {
      angleRotation++;
      if (30 == angleRotation )
        {
          RandomText = (AzkarList..shuffle()).first;
          angleRotation=0;
        }
    });
  }
}
