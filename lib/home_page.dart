// import 'package:SnakeGameFlutter/game_page.dart';
import 'package:flutter/material.dart';
import 'package:tetrisgame/game_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.lightGreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/snake_game.jpg'),
          const SizedBox(height: 50.0),
          Text('Welcome to SnakeGameFlutter',
              style: TextStyle(
                color: Colors.yellow.shade100,
                fontSize: 40.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 50.0),
          FlatButton.icon(
              //    TextButton.icon(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              color: Colors.redAccent,
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GamePage()));
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: const Icon(Icons.play_circle_filled,
                  color: Colors.white, size: 30.0),
              label: const Text("Start the Game...",
                  style: TextStyle(color: Colors.white, fontSize: 20.0))),
        ],
      ),
    ));
  }
}
