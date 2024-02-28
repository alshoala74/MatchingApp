import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.indigo,appBar: 
      AppBar(title: const Text('Matching App'),backgroundColor: Colors.indigo[800],),
    body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
int leftImageNum=1;
int rightImageNum=9;

void changeImage(){
   setState(() {leftImageNum=Random().nextInt(8)+1;});
  setState(() {rightImageNum=Random().nextInt(8)+1;});
}
    
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Text(leftImageNum==rightImageNum ?'Well Done':'Try Again',style:TextStyle(fontSize:42,color: Colors.white ),),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(children: [
            Expanded(child: TextButton( 
                onPressed: (){
                 changeImage();
                  },
                child: Image.asset('images/image-$leftImageNum.png')),),
  
            Expanded(child: TextButton( 
                onPressed: (){
                  changeImage();
                  },
                child: Image.asset('images/image-$rightImageNum.png')),),
          ],),
        ),
      ],
    );
  }
}

