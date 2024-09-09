import 'package:flutter/material.dart';

void main() {
  runApp(const pointsCounter());
}

class pointsCounter extends StatefulWidget {
  const pointsCounter({super.key});


  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void addOnePoint() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
appBar: AppBar(
  backgroundColor: Colors.orange,
  title: const Text('Points Counter'),
),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Team A', style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                   Text('$teamAPoints', style: const TextStyle(
                    fontSize: 150,
                  ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                      onPressed: () {
                    setState(()
                    {
                      teamAPoints++;
                    });
                      print(teamAPoints);
                      },
                      child: const Text('Add 1 Point' , style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 2;
                      });
                    },
                    child: const Text('Add 2 Points' , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                    onPressed: ()
                    {
                      setState(() {
                        teamAPoints = teamAPoints + 3;
                      });
                    },
                    child: const Text('Add 3 Points' , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: const VerticalDivider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Container(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   const Text('Team B', style: TextStyle(
                    fontSize: 32,
                  ),
                  ),
                   Text('$teamBPoints', style: const TextStyle(
                    fontSize: 150,
                  ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                    onPressed: (){
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    child: const Text('Add 1 Point' , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                    onPressed: (){
                      setState(() {
                        teamBPoints = teamBPoints + 2;
                      });
                    },
                    child: const Text('Add 2 Points' , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200)//size sebet m bytghyr
                      minimumSize: Size(150, 50),//ma bi 2el bi zid
                    ),
                    onPressed: (){
                      setState(() {
                        teamBPoints = teamBPoints + 3;
                      });
                    },
                    child: const Text('Add 3 Points' , style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            //fixedSize: Size(100, 200)//size sebet m bytghyr
            minimumSize: Size(150, 50),//ma bi 2el bi zid
          ),
          onPressed: (){
            setState(() {
              teamAPoints=0;
              teamBPoints=0;
            });
          },
          child: const Text('Reset' , style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          ),
        ),
      ],
    ),
      ),
    );
  }
}
