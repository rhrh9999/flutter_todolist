import 'package:flutter/material.dart';
import 'package:flutter_todolist_app/model/todo.dart';
import 'package:flutter_todolist_app/constants/colors.dart';
import 'package:flutter_todolist_app/widgets/todo_item.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: toBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal:20,
            vertical: 15
        ),
        child: Column(
          children: [
            searchBox(),
              Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text('All ToDos', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),

                      for ( ToDo todoo in todosList)
                        ToDoItem(todo: todoo),
                    ],
                  ),
              )
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
          prefixIcon: Icon(
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

