import 'package:flutter/material.dart';
class GradientContainer extends StatelessWidget{
  GradientContainer(this.colors,{super.key});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration:BoxDecoration(
        gradient: LinearGradient(colors: colors,
        begin:Alignment.topLeft,
        end:Alignment.bottomRight
        ),
      ) ,
      child:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width:200,
            ),
            SizedBox(height: 25),
            Text("Learn Flutter the Fun way",
                    style: TextStyle(color:Colors.white,fontSize: 24),),
            SizedBox(height: 20),
            TextButton(
              onPressed: (){},
              style:TextButton.styleFrom(foregroundColor: Colors.white,padding:EdgeInsets.only(top:20),textStyle: TextStyle(fontSize:28)),
              child:Text("Start Quiz")
            )
          ],
        )
      )
    );
  }

}