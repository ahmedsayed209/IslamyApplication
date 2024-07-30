import 'package:flutter/material.dart';

class radioView extends StatelessWidget {
  const radioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return
      Center(
        child: Column(
          children: [
            SizedBox(height:80,),
            Image.asset("assets/icons/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
            SizedBox(height:40,),
            Text("إذاعة القرآن الكريم",style:theme.textTheme.bodyMedium,),
            SizedBox(height:40,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.skip_previous,color:theme.primaryColor,size:40,),
                  SizedBox(width:40,),
                  Icon(Icons.play_arrow_outlined,color:theme.primaryColor,size:40,),
                  SizedBox(width:40,),
                  Icon(Icons.skip_next,color:theme.primaryColor,size:40,),
                ],
              ),
            )

          ],
        ),
      );
  }
}