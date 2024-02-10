import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: toBGColor,
        appBar: _buildAppBar(),
      body: Container(
        child: Text('This is home screen.'),
    ),
    );
  }

  AppBar _buildAppBar(){
    return AppBar(
      backgroundColor: toBGColor,
      elevation: 0,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: toBlack,
              size:30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:Image.asset('assets/images/avatar.jpg'),
              ),
            ),
          ]),
    );
  }
}

