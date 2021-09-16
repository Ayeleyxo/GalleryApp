import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        centerTitle: false,
        title: Text(
          'Gallery',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.camera,
              color: Colors.blue,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Today',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1589156191108-c762ff4b96ab?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFmcmljYW4lMjBnaXJsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'),
                    ),
                    title: Text(
                      'Naa Akweley',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.blue,
                        ),
                        Text('Royal Palm,Orange Street')
                      ],
                    ),
                  ),
                  Image.network(
                      'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                      height: 218,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey.withOpacity(0.1),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '100',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FlutterImageStack(
                            imageList: _images,
                            showTotalCount: false,
                            totalCount: 4,
                            itemRadius: 35, // Radius of each images
                            itemCount:
                                4, // Maximum number of images to be shown in stack
                            itemBorderWidth:
                                2, // Border width around the images
                          )
                        ],
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.grey.withOpacity(0.1),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.chat_bubble_fill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '50',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
