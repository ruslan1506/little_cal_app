import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  List<String> calcListi = [];
  bool isEqualed = false;
  double javob = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: isEqualed
                    ? Text(
                        javob.toString(),
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      )
                    : Text(
                        calcListi.join(),
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (calcListi.isNotEmpty) {
                          calcListi.clear();
                          setState(() {});
                        
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "C",
                        style: TextStyle(fontSize: 33),
                      ),
                      ),
                  ElevatedButton( onPressed: () {
                    if(calcListi.isNotEmpty){
                      calcListi.removeLast();
                      setState(() { });
                      
                    }
                      
                    },
                    child: Text(  "X",
                      style: TextStyle(fontSize: 33),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("%");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        fixedSize: Size(74, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "%",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("/");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "/",
                        style: TextStyle(fontSize: 33),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      belgiQoshishFunc("7");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: const Text(
                      "7",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("8");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "8",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("9");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "9",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("*");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "*",
                        style: TextStyle(fontSize: 33),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      belgiQoshishFunc("4");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: const Text(
                      "4",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("5");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "5",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                    onPressed: () {
                      belgiQoshishFunc("6");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: const Text(
                      "6",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("-");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "-",
                        style: TextStyle(fontSize: 33),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      belgiQoshishFunc("1");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: const Text(
                      "1",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("2");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "2",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                    onPressed: () {
                      belgiQoshishFunc("3");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(75, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: const Text(
                      "3",
                      style: TextStyle(fontSize: 33),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("+");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "+",
                        style: TextStyle(fontSize: 33),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        belgiQoshishFunc("0");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(180, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "0",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        // if(){

                        // }
                        belgiQoshishFunc(".");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[850],
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        ".",
                        style: TextStyle(fontSize: 33),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        isEqualed = true;
                        hisobla(calcListi);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: Size(75, 75),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text(
                        "=",
                        style: TextStyle(fontSize: 33),
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }

  belgiQoshishFunc(String belgi) {
    var last = calcListi.isNotEmpty ? calcListi.last : "";
    isEqualed ? isEqualed = false : null;
    if (belgi == "+" || belgi == "-" || belgi == "*" || belgi == "/" || last == "%" || last == ".") {
      if (last != "+" && last != "-" && last != "*" && last != "/" ) {
        if (calcListi.isNotEmpty || belgi == "-") {
          calcListi.add(belgi);
        }
      } else {
        calcListi.removeLast();
        calcListi.add(belgi);
      }
    } else {
      calcListi.add(belgi);
      isEqualed ? isEqualed = false : null;
    }
    setState(() {});
  }

  hisobla(List<String> sonlar) {
    var last = sonlar.last;
    if (last == "-" || last == "+" || last == "*" || last == "/") {
      sonlar.removeLast();
    }

    String son = sonlar.join();

    Parser p = Parser();

    Expression exp = p.parse(son);

    javob = exp.evaluate(EvaluationType.REAL, ContextModel());

    debugPrint(javob.toString());

    calcListi.clear();
    setState(() {});
  }
}
