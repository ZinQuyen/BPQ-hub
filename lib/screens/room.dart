import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phan04_baitap1/screens/Home.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tạo phòng'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MyWidget(title: 'BPQ Hub'))));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,
              ),
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 150,
                height: 60,
                child: Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'Phòng chờ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ), //Text
                  ), //Center
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  
                  width: 5,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ),//Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.white,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Phong 6',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ),
                              ), //Center
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(50, 10, 10, 10)),
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            _onCreateRoom(context);
                          }),
                          child: Text('Tạo phòng')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            _onCreateRoom(context);
                          }),
                          child: Text('Vào nhanh')),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<bool> _onCreateRoom(BuildContext context) async {
    bool? exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Tạo phòng'),
            actions: <Widget>[
              TextButton(
                  onPressed: (() {
                    Navigator.of(context).pop(true);
                  }),
                  child: const Text('Tạo')),
            ],
          );
        });
    return exitApp ?? false;
  }
}
