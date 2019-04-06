import 'package:flutter/material.dart';
import 'package:mytodolist/ui/raisedgradientbutton.dart';

class GetStartedPage extends StatefulWidget {
  GetStartedPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(62.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/ToDoFull.png'),
              Padding(
                padding: const EdgeInsets.only(top: 116),
                child: Text(
                  'Reminders made simple',
                  style: TextStyle(
                      color: Color.fromRGBO(85, 78, 143, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque erat in blandit luctus.',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 160, 183, 1),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 43),
                child: RaisedGradientButton(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(93, 230, 26, 1),
                        Color.fromRGBO(57, 168, 1, 1)
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
