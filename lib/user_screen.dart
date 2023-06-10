import 'package:flutter/material.dart';

class Usermodel {
  final int id;
  final String name;
  final String phone;
  final String age;
  Usermodel({required this.id,required this.name,required this.phone,required this.age});
}

// ignore: must_be_immutable
class Userscreen extends StatelessWidget {
  List<Usermodel>users=[
    Usermodel(id: 1, name: 'mahmoud gamal', phone: '01064162607',age: '22'),
     Usermodel(id: 2, name: 'ahmed gamal', phone: '0115478/5202',age: '30'),
      Usermodel(id: 3, name: ' ahmed ali', phone: '01254789654',age: '23'),
       Usermodel(id: 4, name: 'ali mahmoud', phone: '01154587251',age: '29'),
        Usermodel(id: 5, name: 'hamdy hassan', phone: '01124587658',age: '24'),
         Usermodel(id: 6, name: 'hassan ali', phone: '012542158944',age: '25'),
          Usermodel(id: 7, name: 'ali gamal', phone: '01054268759',age: '26'),
           Usermodel(id: 8, name: 'ahmed hassan', phone: '01524863012',age: '28'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'USERS',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => builditm(users[index]),
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey[300],
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget builditm(Usermodel user) => Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${user.phone}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.all(10),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 114, 113, 113),
                radius: 25,
                child: Text(
                  '${user.age}',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
