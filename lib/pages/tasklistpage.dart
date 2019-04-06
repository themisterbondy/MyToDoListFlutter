import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int _selectedIndex = 1;
  final List<Text> _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(224, 19, 156, 1),
          child: const Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: IconButton(
                    color: Color.fromRGBO(95, 135, 231, 1),
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: IconButton(
                    color: Color.fromRGBO(190, 190, 190, 1),
                    icon: Icon(Icons.view_stream),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 106,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(
                      0.8, 0.0), // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color.fromRGBO(56, 103, 213, 1),
                    const Color.fromRGBO(129, 199, 245, 1),
                  ], // whitish to gray
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 57, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello Alexndre!',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          'Today you have no tasks',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18, bottom: 11),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fcgh7-1.fna.fbcdn.net/v/t1.0-9/53241790_10216548341199157_8811786952966668288_n.jpg?_nc_cat=106&_nc_ht=scontent.fcgh7-1.fna&oh=b1109fb2d1cea166f17f5187ef6e209a&oe=5D07FBD6'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/ToDoNull.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 73),
                      child: Text(
                        'No tasks',
                        style: TextStyle(
                          color: Color.fromRGBO(85, 78, 143, 1),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Text(
                        'You have no task to do.',
                        style: TextStyle(
                          color: Color.fromRGBO(130, 160, 183, 1),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
