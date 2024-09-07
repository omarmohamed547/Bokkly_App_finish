import 'package:flutter/widgets.dart';

class CustomError extends StatelessWidget {
  final String errmessage;
  CustomError({super.key, required this.errmessage});

  @override
  Widget build(BuildContext context) {
    return (Text(
      errmessage,
      style: TextStyle(fontSize: 18),
    ));
  }
}
