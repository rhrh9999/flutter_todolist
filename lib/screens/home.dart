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
        padding: EdgeInsets.symmetric(horizontal:15),
        child: Column(
          children: [
            searchBox(),
          ],
        ),
    ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon( //돋보기아이콘
            Icons.search,
            color: toBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: toGrey),
        ),
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

