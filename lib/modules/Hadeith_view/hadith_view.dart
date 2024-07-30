import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hadithView extends StatefulWidget {
  const hadithView({super.key});

  @override
  State<hadithView> createState() => _hadithViewState();
}

class _hadithViewState extends State<hadithView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if(dataList.isEmpty)
      Hadith_View();
    return Column(
      children: [
        SizedBox(height:10,),
        Center(child: Image.asset("assets/icons/hadith_header.png",scale:1.1,)),
        Divider(),
        Text("الاحاديث",style: theme.textTheme.bodyMedium,),
        Divider(),
      ],
    );
  }
}
List<Hadith_Details> dataList=[];
Future<void> Hadith_View() async
{
  String content = await rootBundle.loadString("assets/files/ahadeth.txt");
  List<String> hadith_data = content.split("#");
  for(int i = 0; i<hadith_data.length;i++)
  {
    String hadith_content = hadith_data[i].trim();
    int single_Hadith_Number = hadith_content.indexOf("\n");
    String title_hadith = hadith_content.substring(0,single_Hadith_Number);
    String body_hadith = hadith_content.substring(single_Hadith_Number+1);
    Hadith_Details hadith_detail = Hadith_Details(hadith_title: title_hadith, hadith_body: body_hadith);
    dataList.add(hadith_detail);
  }
}
class Hadith_Details
{
  String hadith_title;
  String hadith_body;

  Hadith_Details({required this.hadith_title, required this.hadith_body});

}