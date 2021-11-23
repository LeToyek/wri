// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wri/ListCard/listcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SavePass(),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Secure your data',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.indigo,
                            )),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'tekan tanda + untuk menambahkan',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
              ),
              _CardMenu()
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.window), label: 'widgets'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class SavePass extends StatelessWidget {
  const SavePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'SavePass',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.indigo,
            size: 32,
          )
        ],
      ),
    );
  }
}

class _CardMenu extends StatelessWidget {
  var cardMenuList = [
    CardView(web: 'Google', name: 'mark@gmail.com'),
    CardView(web: 'Facebook', name: 'markzucker'),
    CardView(web: 'Instagram', name: 'markzuckerb'),
    CardView(web: 'Twitter', name: 'Yanto'),
    CardView(web: 'PIN', name: 'pinsaya')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: cardMenuList
            .map((i) => AccountCard(name: i.name, web: i.web))
            .toList());
  }
}

class AccountCard extends StatelessWidget {
  const AccountCard({required this.web, required this.name, Key? key})
      : super(key: key);

  final String web;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    web,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 32,
                  color: Colors.black45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
