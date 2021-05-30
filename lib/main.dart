import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Calculator(),
      ),
    ),
  );
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

String solution = '';

class _CalculatorState extends State<Calculator> {
  //
  String input = '';

  @override
  Widget build(BuildContext context) {
    //
    // Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              input,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              solution,
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic((index + 1).toString());
                    input += ' ${(index + 1).toString()} ';
                    setState(() {});
                  },
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic((index + 4).toString());
                    input += ' ${(index + 4).toString()} ';
                    setState(() {});
                  },
                  child: Text(
                    '${index + 4}',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic((index + 7).toString());
                    input += ' ${(index + 7).toString()} ';
                    setState(() {});
                  },
                  child: Text(
                    '${index + 7}',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic('+');
                    input += "+";
                    setState(() {});
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic('-');
                    input += "-";
                    setState(() {});
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic('x');
                    input += "×";
                    setState(() {});
                  },
                  child: Text(
                    '×',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(32),
                    ),
                  ),
                  onPressed: () {
                    logic('/');
                    input += "÷";
                    setState(() {});
                  },
                  child: Text(
                    '÷',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ],
            ),
            // TextButton(
            //   style: ButtonStyle(
            //     padding: MaterialStateProperty.all(
            //       EdgeInsets.all(32),
            //     ),
            //   ),
            //   onPressed: () {
            //     logic('=');
            //     input += "=";
            //     setState(() {});
            //   },
            //   child: Text(
            //     '=',
            //     style: TextStyle(fontSize: 23),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

List operators = <String>['+', '-', 'x', '/', '='];
bool isOperator = false;
bool isDoneTyping = false;

String input = '';
String prevOperator = '';

int declare = 0;
int i = 0;

List data = [];

void logic(String button) {
  //
  for (var _operator in operators) {
    if (button == _operator) {
      isOperator = true;
      prevOperator = _operator;
      break;
    } else {
      isOperator = false;
    }
  }
  if (declare <= 0 && !isOperator) {
    input += button;
    ++declare;
  } else {
    if (declare >= 1) if (!isOperator) {
      input += button;
      isDoneTyping = false;
    } else {
      input = '';
      isDoneTyping = true;
    }
  }
  if (i <= 0) {
    data.add(input);
    ++i;
  } else {
    if (!isDoneTyping) {
      data[data.length - 1] = input;
    } else {
      data.insert(data.length, prevOperator);
      data.insert(data.length, '');
    }
  }

  PEMDAS(data: data);
}

class PEMDAS {
  List data;

  PEMDAS({this.data}) {
    List tmp = List.from(data);

    for (int i = 0; i < data.length; i++) {
      if (data.contains('x') || data.contains('/')) {
        if (data[data.length - 1] != '') {
          solution = noX(hasX(tmp))[0].toString();

          break;
        } else {
          if (data.length >= 2) {
            // print('HAS X == nulll');
          }

          break;
        }

        break;
      } else {
        if (data[data.length - 1] != '') {
          // tmp = noX(tmp);

          // print('NO X: ${tmp[0]}');
          solution = noX(tmp)[0].toString();
        }

        break;
      }
    }
  }

  List hasX(List data) {
    for (int i = 0; i < data.length; i++) {
      if (data[i] == 'x') {
        if (data[data.length - 1] != '') {
          double quotient =
              double.parse(data[i - 1]) * double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
          i = 0;
        }
      }

      if (data[i] == '/') {
        if (data[data.length - 1] != '') {
          double quotient =
              double.parse(data[i - 1]) / double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
          i = 0;
        }
      }
    }

    return data;
  }

  List noX(List data) {
    for (int i = 0; i < data.length; i++) {
      if (data[i] == '+') {
        if (data[data.length - 1] != '') {
          double quotient =
              double.parse(data[i - 1]) + double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
          i = 0;
        }
      }

      if (data[i] == '-') {
        if (data[data.length - 1] != '') {
          double quotient =
              double.parse(data[i - 1]) - double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
          i = 0;
        }
      }
    }

    return data;
  }
}
