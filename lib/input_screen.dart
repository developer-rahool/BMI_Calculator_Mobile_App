import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'call_result.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  int weight = 55;
  int age = 16;

  Color inactiveColor = Color(0xFF24232f);
  Color tapColor = Color(0xFFE9791D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: inactiveColor,
        foregroundColor: tapColor,
        title: Center(
            child: const Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: inactiveColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "CACLULATE YOUR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            "Body Mass Index",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: inactiveColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Height',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        overlayColor: Color(0x291DE986),
                        activeTrackColor: Colors.brown,
                        thumbColor: tapColor,
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 25,
                        ),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12,
                        ),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 225,
                          onChanged: (v) {
                            setState(() {
                              increamentHeight(v);
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: inactiveColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: tapColor,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        decreamentWeight();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CircleAvatar(
                                backgroundColor: tapColor,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        increamentWeight();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: inactiveColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: tapColor,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      decreamentAge();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CircleAvatar(
                                backgroundColor: tapColor,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      increamentAge();
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                navigateToResultScreen(12);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: tapColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 90,
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToResultScreen(double result) {
    CalculateResult obj = CalculateResult(weight, height, result);

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ResultScreen(
                obj.calculatedResult(),
                obj.getmsg(),
                obj.getDescription(),
              )),
    );
  }

  //Weight function
  increamentWeight() {
    weight++;
  }

  decreamentWeight() {
    if (weight > 10) {
      weight--;
    }
  }

  //Age function
  increamentAge() {
    if (age < 65) {
      age++;
    }
  }

  decreamentAge() {
    if (age > 16) {
      age--;
    }
  }

  //Height function
  increamentHeight(double v) {
    height = v.round();
  }
}
