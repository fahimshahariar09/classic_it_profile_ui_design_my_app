import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.blue,
        child: SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          child: Text("data"),
        ),
      ),
    );
  }
}
