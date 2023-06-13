import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'firstapp ',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onnotification,
          ),
          IconButton(
            onPressed: () {
              print('search');
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body:Column(
        children: 
        [
         Padding(
          padding:const EdgeInsets.all(50),
           child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(20),
              
              ),
            ),
             clipBehavior: Clip.antiAliasWithSaveLayer,
             child: Stack(
              alignment: Alignment.bottomCenter,
               children: [
                 Image(
                  image: 
                  NetworkImage(
             'https://cdn.britannica.com/34/212134-050-A7289400/Lionel-Messi-2018.jpg',        
             ),
                 height: 200,
                 width: 200,
                 fit: BoxFit.cover,
                 ),
               Container(
                color: Colors.black.withOpacity(.6),
                width: 200,
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                 child: Text(
                  'messi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                 ),
               ),
               ],
             ),
           ),
         ),
          
      ]
      )
      ,
    );
  }
}

void onnotification() {
  print('yalla');
}
