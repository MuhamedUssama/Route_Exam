import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String selectedScreen;
  final String title;
  const CustomButton(
      {super.key, required this.selectedScreen, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.055,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, selectedScreen);
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xff7F56D9),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
