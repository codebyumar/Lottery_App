import 'package:flutter/material.dart';
import 'dart:math';

//New Change is being added
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Lottery App',
            style: TextStyle(fontSize: 25, fontFamily: 'Rubik Medium'),
          )),
          backgroundColor: const Color.fromARGB(255, 37, 136, 189),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              "Lottery Winning Number is : '3' ",
              style: TextStyle(fontSize: 20, fontFamily: 'Rubik Regular'),
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: x == 3
                      ? const Color(0xff1995AD)
                      : const Color(0xffCEE6F2),
                  // : Color.fromARGB(255, 58, 150, 200),
                  borderRadius: BorderRadius.circular(25)),
              child: x == 3
                  ? const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all_sharp,
                            color: Colors.yellow,
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulations 🎉🤍',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Rubik Medium',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'You have Won the Lottery',
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Rubik Regular'),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Your winning number is : 3',
                            style: TextStyle(
                                fontSize: 18, fontFamily: 'Rubik Regular'),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outlined,
                            color: Color.fromARGB(255, 231, 96, 86),
                            size: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Your number is  $x ',
                            style: const TextStyle(
                                fontSize: 20, fontFamily: 'Rubik Regular'),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Better luck next time...!!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Rubik Regular'),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5);

            setState(() {});
          },
          backgroundColor: const Color.fromARGB(255, 112, 212, 115),
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
