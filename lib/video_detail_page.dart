import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ondemand_video_outlined),
        centerTitle: false,
        title: Text(
          'KBOYのFlutter大学'
        ),
      ),
      
      body: Image.network('https://p4.wallpaperbetter.com/wallpaper/95/748/900/katou-megumi-anime-saenai-heroine-no-sodatekata-anime-girls-hd-wallpaper-preview.jpg'),
    );
  }
  
  
  
}