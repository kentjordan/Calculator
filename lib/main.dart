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

String _solution = '';
int btnEqualCount = 0;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //
  String input = '';
  ScrollController controller = ScrollController();
  EdgeInsets btnStfcPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 22);

  double textSize = 18;
  double textSizeScientific = 16;
  double textInputSize = 32;
  double textSolutionSize = 18;
  EdgeInsets buttonNumberPadding = EdgeInsets.all(24);
  EdgeInsets buttonOperatorPadding = EdgeInsets.all(24);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white10,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: size.width <= 575
              ? MainAxisAlignment.end
              : MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0, vertical: size.height < 678 ? 12 : 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 450),
                    child: SingleChildScrollView(
                      controller: controller,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        input,
                        style: TextStyle(
                          fontSize: textInputSize,
                          color: Colors.black,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 450),
                    child: Text(
                      // Solution text
                      '$_solution',
                      style: TextStyle(
                        fontSize: textSolutionSize,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'INV',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'RAD',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'sin',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'cos',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'tan',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '%',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'ln',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'log',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '√',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '^',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'π',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  'e',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '(',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  ')',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    btnStfcPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '!',
                                  style:
                                      TextStyle(fontSize: textSizeScientific),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Card(
                margin:
                    EdgeInsets.fromLTRB(4, 4, 4, size.width >= 375 ? 32 : 8),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: () {
                                  //
                                  if (btnEqualCount >= 1) {
                                    btnEqualCount = 0;

                                    inputData = [''];
                                    input = '';
                                    _solution = '';
                                    _input = '';
                                  }
                                  logic((index + 7).toString());
                                  input += '${(index + 7).toString()}';

                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );

                                  setState(() {});
                                },
                                child: Text(
                                  '${index + 7}',
                                  style: TextStyle(fontSize: textSize),
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
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: () {
                                  if (btnEqualCount >= 1) {
                                    btnEqualCount = 0;

                                    inputData = [''];
                                    input = '';
                                    _solution = '';
                                    _input = '';
                                  }

                                  logic((index + 4).toString());
                                  input += '${(index + 4).toString()}';

                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );

                                  setState(() {});
                                },
                                child: Text(
                                  '${index + 4}',
                                  style: TextStyle(fontSize: textSize),
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
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: () {
                                  if (btnEqualCount >= 1) {
                                    btnEqualCount = 0;

                                    inputData = [''];
                                    input = '';
                                    _solution = '';
                                    _input = '';
                                  }

                                  logic((index + 1).toString());
                                  input += '${(index + 1).toString()}';
                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );

                                  setState(() {});
                                },
                                child: Text(
                                  '${index + 1}',
                                  style: TextStyle(fontSize: textSize),
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
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: () {
                                  if (btnEqualCount >= 1) {
                                    btnEqualCount = 0;

                                    inputData = [''];
                                    input = '';
                                    _solution = '';
                                    _input = '';
                                  }

                                  logic('0');
                                  input += '0';

                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );
                                  setState(() {});
                                },
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: textSize,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: () {
                                  if (decimalCount < 1) {
                                    ++decimalCount;

                                    if (btnEqualCount >= 1) {
                                      btnEqualCount = 0;

                                      inputData = [''];
                                      input = '';
                                      _solution = '';
                                      _input = '';
                                    }

                                    input += '.';
                                    logic('.');
                                    controller.animateTo(
                                      controller.position.maxScrollExtent +
                                          textInputSize,
                                      duration: Duration(milliseconds: 150),
                                      curve: Curves.ease,
                                    );
                                  }

                                  setState(() {});
                                },
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                    fontSize: textSize,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonNumberPadding,
                                  ),
                                ),
                                onPressed: null,
                                child: Text(
                                  '   ',
                                  style: TextStyle(fontSize: textSize),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 1,
                          height: 200,
                          color: Colors.grey[300],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonOperatorPadding,
                                  ),
                                ),
                                onPressed: () {
                                  //
                                  if (operatorCount <= 0) input += " + ";

                                  if (btnEqualCount >= 1) btnEqualCount = 0;

                                  logic('+');
                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );
                                  decimalCount = 0;

                                  setState(() {});
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(fontSize: textSize),
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonOperatorPadding,
                                  ),
                                ),
                                onPressed: () {
                                  input = '';
                                  _solution = '';
                                  _input = '';

                                  inputData = [''];
                                  decimalCount = 0;
                                  print(inputData);
                                  setState(() {});
                                },
                                child: Text(
                                  'Clear',
                                  style: TextStyle(
                                    fontSize: textSize - 4,
                                  ),
                                ),
                                // Icon(Icons.cancel_presentation,
                                //     size: textSize - 5),
                              ),
                            ],
                          ),
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                buttonOperatorPadding,
                              ),
                            ),
                            onPressed: () {
                              if (operatorCount <= 0) input += " - ";

                              if (btnEqualCount >= 1) btnEqualCount = 0;

                              logic('-');
                              controller.animateTo(
                                controller.position.maxScrollExtent +
                                    textInputSize,
                                duration: Duration(milliseconds: 150),
                                curve: Curves.ease,
                              );
                              decimalCount = 0;
                              setState(() {});
                            },
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: textSize),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                buttonOperatorPadding,
                              ),
                            ),
                            onPressed: () {
                              if (operatorCount <= 0) input += " × ";
                              if (btnEqualCount >= 1) btnEqualCount = 0;

                              logic('x');
                              controller.animateTo(
                                controller.position.maxScrollExtent +
                                    textInputSize,
                                duration: Duration(milliseconds: 150),
                                curve: Curves.ease,
                              );
                              decimalCount = 0;
                              setState(() {});
                            },
                            child: Text(
                              '×',
                              style: TextStyle(fontSize: textSize),
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonOperatorPadding,
                                  ),
                                ),
                                onPressed: () {
                                  if (operatorCount <= 0) input += " ÷ ";

                                  if (btnEqualCount >= 1) btnEqualCount = 0;

                                  logic('/');

                                  controller.animateTo(
                                    controller.position.maxScrollExtent +
                                        textInputSize,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.ease,
                                  );
                                  decimalCount = 0;
                                  setState(() {});
                                },
                                child: Text(
                                  '÷',
                                  style: TextStyle(fontSize: textSize),
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    buttonOperatorPadding,
                                  ),
                                ),
                                onPressed: () {
                                  input = _solution;
                                  inputData = [_solution];

                                  decimalCount = 0;
                                  ++btnEqualCount;
                                  print('equalCount $btnEqualCount');
                                  setState(() {});
                                },
                                child: Text(
                                  '=',
                                  style: TextStyle(fontSize: textSize),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isOperator(String btn) {
  List operators = <String>['+', '-', 'x', '/', '=', 'clear'];
  bool tmp = false;

  for (var _operator in operators) {
    tmp = (btn == _operator);

    if (tmp) break;
  }
  return tmp;
}

String _input = '';
List inputData = <String>[''];
int operatorCount = 0;

int decimalCount = 0;

// Input Logic
void logic(String btn) {
  //
  if (isOperator(btn)) {
    if (operatorCount <= 0) {
      _input += btn;
      inputData.add(btn);
      _input = '';
      inputData.add(_input);
      ++operatorCount;
    } else {}
    //
  } else {
    _input += btn;
    inputData[inputData.length - 1] = (_input);
    operatorCount = 0;
  }

  // Type check decimala point
  if (btn != '.') {
    if (MDAS().solve(inputData) != null)
      _solution = MDAS().solve(inputData) ?? '';
  }

  print(inputData);
}

class MDAS {
  //
  String solve(List data) {
    //
    String solution;
    List tmp = List.from(data);

    for (int i = 0; i < data.length; i++) {
      if (data.contains('x') || data.contains('/')) {
        if (data[data.length - 1] != '') {
          solution = addSubtruction(multiDivision(tmp))[0];

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
          solution = addSubtruction(tmp)[0];
        }
        break;
      }
    }

    return solution;
  }

  List multiDivision(List data) {
    //
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

  List addSubtruction(List data) {
    //
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

// List operators = <String>['+', '-', 'x', '/', '=', 'clear'];
// bool isOperator = false;
// bool isDoneTyping = false;

// String input = '';
// String prevOperator = '';

// int declare = 0;
// int i = 0;

// List data = [];

// void logic(String button) {
//   if (button == 'clear') {
//     data.clear();

//     print(data.length);
//   } else {
//     for (var _operator in operators) {
//       if (button == _operator) {
//         isOperator = true;
//         prevOperator = _operator;
//         break;
//       } else {
//         isOperator = false;
//       }
//     }

//     if (declare <= 0 && !isOperator) {
//       input += button;
//       ++declare;
//     } else {
//       if (declare >= 1) if (!isOperator) {
//         input += button;
//         isDoneTyping = false;
//       } else {
//         input = '';
//         isDoneTyping = true;
//       }
//     }
//     if (i <= 0) {
//       data.add(input);
//       ++i;
//     } else {
//       if (!isDoneTyping) {
//         data[data.length - 1] = input;
//       } else {
//         data.insert(data.length, prevOperator);
//         data.insert(data.length, '');
//       }
//     }
//   }

//   PEMDAS(data: data);

//   print(data);
// }

// class PEMDAS {
//   List data;

// PEMDAS({this.data}) {
//   List tmp = List.from(data);

//   for (int i = 0; i < data.length; i++) {
//     if (data.contains('x') || data.contains('/')) {
//       if (data[data.length - 1] != '') {
//         solution = noX(hasX(tmp))[0].toString();

//         break;
//       } else {
//         if (data.length >= 2) {
//           // print('HAS X == nulll');
//         }

//         break;
//       }

//       break;
//     } else {
//       if (data[data.length - 1] != '') {
//         // tmp = noX(tmp);

//         // print('NO X: ${tmp[0]}');
//         solution = noX(tmp)[0].toString();
//       }

//       break;
//     }
//   }
// }

// List hasX(List data) {
//   for (int i = 0; i < data.length; i++) {
//     if (data[i] == 'x') {
//       if (data[data.length - 1] != '') {
//         double quotient =
//             double.parse(data[i - 1]) * double.parse(data[i + 1]);
//         data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
//         i = 0;
//       }
//     }

//     if (data[i] == '/') {
//       if (data[data.length - 1] != '') {
//         double quotient =
//             double.parse(data[i - 1]) / double.parse(data[i + 1]);
//         data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
//         i = 0;
//       }
//     }
//   }

//   return data;
// }

// List noX(List data) {
//   for (int i = 0; i < data.length; i++) {
//     if (data[i] == '+') {
//       if (data[data.length - 1] != '') {
//         double quotient =
//             double.parse(data[i - 1]) + double.parse(data[i + 1]);
//         data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
//         i = 0;
//       }
//     }

//     if (data[i] == '-') {
//       if (data[data.length - 1] != '') {
//         double quotient =
//             double.parse(data[i - 1]) - double.parse(data[i + 1]);
//         data.replaceRange(i - 1, i + 2, <String>[quotient.toString()]);
//         i = 0;
//       }
//     }
//   }

//   return data;
// }
// }
