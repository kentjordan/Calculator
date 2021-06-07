import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  ScrollController controller = ScrollController();
  EdgeInsets btnStfcPadding = EdgeInsets.all(16);

  double textSizeScientific = 16;
  double textInputSize = 46;
  double textSolutionSize = 32;
  EdgeInsets buttonNumberPadding = EdgeInsets.all(16);
  EdgeInsets buttonOperatorPadding = EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double textSize = size.width <= 375 ? 24 : 32;

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
                  horizontal: 0, vertical: size.height < 678 ? 20 : 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 575),
                    child: SingleChildScrollView(
                      controller: controller,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        realTimeInput(),
                                 overflow: TextOverflow.fade,
                        style: GoogleFonts.roboto(
                          fontSize: textInputSize,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 575),
                    child: Text(
                      // Solution text
                      '$_solution',
                      style: TextStyle(
                        fontSize: textSolutionSize,
                        color: Colors.grey[800],
                      ),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 575),
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
              constraints:
                  BoxConstraints(maxWidth: 575, minHeight: size.height / 3),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Expanded(
                                  child: TextButton(
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
                                        // input = '';
                                        _solution = '';
                                        _input = '';
                                      }
                                      logic((index + 7).toString());
                                      // input += '${(index + 7).toString()}';

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonNumberPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (btnEqualCount >= 1) {
                                        btnEqualCount = 0;

                                        inputData = [''];
                                        // input = '';
                                        _solution = '';
                                        _input = '';
                                      }

                                      logic((index + 4).toString());
                                      // input += '${(index + 4).toString()}';

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonNumberPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (btnEqualCount >= 1) {
                                        btnEqualCount = 0;

                                        inputData = [''];
                                        // input = '';
                                        _solution = '';
                                        _input = '';
                                      }

                                      logic((index + 1).toString());
                                      // input += '${(index + 1).toString()}';
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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonNumberPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      if (btnEqualCount >= 1) {
                                        btnEqualCount = 0;

                                        inputData = [''];
                                        // input = '';
                                        _solution = '';
                                        _input = '';
                                      }

                                      logic('0');
                                      // input += '0';

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
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
                                          // input = '';
                                          _solution = '';
                                          _input = '';
                                        }

                                        // input += '.';
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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          width: 1,
                          height: 200,
                          color: Colors.grey[300],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      //
                                      print(operatorCount);
                                      // if (operatorCount <= 0 &&
                                      //     !isFirstOperator &&
                                      //     !isDecimal) input += " + ";

                                      if (btnEqualCount >= 1) btnEqualCount = 0;

                                      if (!isFirstOperator && !isDecimal)
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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      // input = '';
                                      _solution = '';
                                      _input = '';

                                      inputData = [''];
                                      decimalCount = 0;
                                      isFirstOperator = true;
                                      operatorCount = 0;

                                      setState(() {});
                                    },
                                    child: Text(
                                      'AC',
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize - 4,
                                        color: Colors.red[900],
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    // Icon(Icons.cancel_presentation,
                                    //     size: textSize - 5),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      // if (operatorCount <= 0 && !isDecimal)
                                      //   input += " - ";

                                      if (btnEqualCount >= 1) btnEqualCount = 0;

                                      if (!isDecimal) logic('-');

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      // if (operatorCount <= 0 &&
                                      //     !isFirstOperator &&
                                      //     !isDecimal) input += " × ";
                                      if (btnEqualCount >= 1) btnEqualCount = 0;

                                      if (!isFirstOperator && !isDecimal)
                                        logic('×');

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      // if (operatorCount <= 0 &&
                                      //     !isFirstOperator &&
                                      //     !isDecimal) input += " ÷ ";

                                      if (btnEqualCount >= 1) btnEqualCount = 0;

                                      if (!isFirstOperator && !isDecimal)
                                        logic('÷');

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
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                        buttonOperatorPadding,
                                      ),
                                    ),
                                    onPressed: () {
                                      // input = _solution;
                                      inputData = [_solution];

                                      decimalCount = 0;
                                      ++btnEqualCount;
                                      print('equalCount $btnEqualCount');

                                      setState(() {});
                                    },
                                    child: Text(
                                      '=',
                                      style: GoogleFonts.roboto(
                                        fontSize: textSize,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
  switch (btn) {
    case '+':
    case '-':
    case '×':
    case '÷':
    case '=':
    case 'clear':
      return true;
      break;
    default:
      return false;
  }
}

String _input = '';
List inputData = <String>[''];
int operatorCount = 0;
int decimalCount = 0;
bool isFirstOperator = true;

bool isDecimal = true;

String currentOperator = '';

// Input Logic
void logic(String btn) {
  // Return true if the given input is operator

  if (isOperator(btn)) {
    // Return true if operator count in the input string is <= 0 and add to Input Data List, else input must not add to Input Data List

    if (isFirstOperator) {
      ++operatorCount;

      if (operatorCount <= 1) _input += btn;
      print('isFirstOperator $isFirstOperator\noperatorCount $operatorCount');
    } else {
      if (operatorCount <= 0) {
        _input += btn;
        inputData.add(btn);
        _input = '';
        inputData.add(_input);
        ++operatorCount;
      } else {
        inputData[inputData.length - 2] = btn;
        print(btn);
      }
    }
  } else {
    // Inputs are numbers.
    // Store to temp input string
    _input += btn;

    // Then, add the input string to Input Data List in current index
    inputData[inputData.length - 1] = _input;

    // Reset operator count to 0
    operatorCount = 0;
    isFirstOperator = false;
    isDecimal = false;
  }

  // Return true if the input is not decimal point
  if (btn != '.') {
    // Return true if the return solution string is not null
    if (MDAS().solve(inputData) != null) {
      _solution = MDAS().solve(inputData) ?? '';
    }
  } else {
    isDecimal = true;
  }

  print(inputData);

}

String realTimeInput() {
  String input = '';

  for (String __input in inputData) {
    input += __input;
  }

  return input;
}

class MDAS {
  //
  String solve(List data) {
    //
    String solution;
    List tmp = List.from(data);

    for (int i = 0; i < data.length; i++) {
      if (data.contains('×') || data.contains('÷')) {
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
          solution = double.parse(addSubtruction(tmp)[0]).toString();
        }
        break;
      }
    }

    return solution;
  }

  List multiDivision(List data) {
    //
    for (int i = 0; i < data.length; i++) {
      if (data[i] == '×') {
        if (data[data.length - 1] != '') {
          double product =
              double.parse(data[i - 1]) * double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[product.toString()]);

          i = 0;
        }
      }

      if (data[i] == '÷') {
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
          double sum = double.parse(data[i - 1]) + double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[sum.toString()]);

          i = 0;
        }
      }

      if (data[i] == '-') {
        if (data[data.length - 1] != '') {
          double difference =
              double.parse(data[i - 1]) - double.parse(data[i + 1]);
          data.replaceRange(i - 1, i + 2, <String>[difference.toString()]);

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
