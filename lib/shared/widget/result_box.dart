import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,
  }) : super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: primaryPurple,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Result',
              style: TextStyle(color: neutral100, fontSize: 22.0),
            ),
            const SizedBox(height: 20.0),
            CircleAvatar(
              radius: 70.0,
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow // when the result is half of the questions
                  : result < questionLength / 2
                      ? incorrect // when the result is less than half
                      : correct,
              child: Text(
                '$result/$questionLength',
                style: const TextStyle(fontSize: 30.0),
              ), // when the result is more than half
            ),
            const SizedBox(height: 20.0),
            Text(
              result == questionLength / 2
                  ? 'Almost There' // when the result is half of the questions
                  : result < questionLength / 2
                      ? 'Try Again ?' // when the result is less than half
                      : 'Great!', // when the result is more than half
              style: const TextStyle(color: neutral100),
            ),
            const SizedBox(height: 25.0),
            GestureDetector(
              onTap: onPressed,
              child: const Text(
                'Start Over',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
