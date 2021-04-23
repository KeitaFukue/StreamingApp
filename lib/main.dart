import 'package:flutter/material.dart';
import 'package:streaming_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.white,
      ),

      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.ondemand_video_outlined),
          centerTitle: false,
          title: Text(
              'FukueのvideoStreaming'
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                },
            ),
            IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){
                },
            ),

          ],
        ),

        body: Center(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network('https://images-na.ssl-images-amazon.com/images/I/71bPKF2eRPL._CR300,153,960,854_.jpg'),
                    ),
                    Column(
                      children: [
                        Text(
                            '加藤恵チャンネル',
                            style: TextStyle(fontSize: 17),
                        ),
                        TextButton(
                            onPressed: (){
                              //TODO
                            },
                            child:Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.video_call),
                                    onPressed: null
                                ),
                                Text('チャンネル登録'),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                        //TODO
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network('https://images-na.ssl-images-amazon.com/images/I/71bPKF2eRPL._CR300,153,960,854_.jpg'),
                      title: Column(
                        children: [
                          Text(
                              '[Flutter大学]加藤恵がかわいい理由',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                          Row(
                            children: [
                              Text(
                                  '${index}回再生',
                                  style: TextStyle(fontSize: 13),
                              ),
                              Text('${index}日前',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
