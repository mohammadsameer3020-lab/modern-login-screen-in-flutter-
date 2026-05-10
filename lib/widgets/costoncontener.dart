import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFF8383)),
        child: Center(
          // تمت إزالة const من هنا لأن النص متغير
          child: Text(
            text, // استخدام المتغير text بدلاً من النص الثابت 'text'
            style: const TextStyle(
              // الـ TextStyle يمكن أن يكون const
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
