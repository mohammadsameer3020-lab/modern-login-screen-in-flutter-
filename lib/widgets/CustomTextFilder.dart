import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // تعريف المتغيرات المطلوبة كما ظهر في الصورة
  final String name;
  final String hintText;
  final IconData? suffixIcon; // علامة الاستفهام تعني أنه يمكن أن يكون null

  const CustomTextField({
    super.key,
    required this.name,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // القسم الأول: نص العنوان (Name)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        // القسم الثاني: حقل الإدخال (TextField)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              // هذا السطر يطابق ما كنت تحاول كتابته في الصورة الثانية
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,

              border: const UnderlineInputBorder(),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffFF8383),
                ),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color(0xffBDBDBD),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
