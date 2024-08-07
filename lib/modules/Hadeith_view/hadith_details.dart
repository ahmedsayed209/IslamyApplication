import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/modules/Hadeith_view/hadith_view.dart';

class hadith_details extends StatefulWidget {
   static const  String routename = "hadith_details";
  const hadith_details({super.key});

  @override
  State<hadith_details> createState() => _hadith_detailsState();
}

class _hadith_detailsState extends State<hadith_details> {

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var Content = ModalRoute.of(context)?.settings.arguments as Hadith_Details;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/home_bacck.png"),fit:BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("اسلامي",style:theme.appBarTheme.titleTextStyle,)),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20,
              bottom:80,
              right: 30,
              left: 30),
          padding: EdgeInsets.only(top: 20,
              bottom:30,
              right: 30,
              left: 20),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Content.hadith_title,style: theme.textTheme.titleLarge,),
                  SizedBox(width: 10,),
                  Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context,index) =>
                    Text(Content.hadith_body,textAlign:TextAlign.center,)
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
