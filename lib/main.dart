import 'package:flutter/material.dart';

void main() {
  runApp(CounterPoints());
}

class CounterPoints extends StatefulWidget {
  @override
  State<CounterPoints> createState() => _CounterPointsState();
}

class _CounterPointsState extends State<CounterPoints> {
  int pointsATeam = 0;

  int pointsBTeam = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Counter Points'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$pointsATeam',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsATeam++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsATeam += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsATeam += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$pointsBTeam',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsBTeam++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsBTeam += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsBTeam += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  pointsATeam = 0;
                  pointsBTeam = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 24,
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
