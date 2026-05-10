import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// تأكد أن المسار واسم الكلاس SignInScreen صحيح في ملفاتك
import 'package:first_flutter/Screen/Sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/Screen.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Welcome',
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ), // تم إصلاح القوس الزائد هنا بحذف الفاصلة والقوس الإضافي
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'lorem ipsum sit amet consectetur.\nlorem ipsum sit ',
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffBDBDBD),
                ),
              ),
            ),
          ), // تم إصلاح القوس الزائد هنا بحذف الفاصلة والقوس الإضافي
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'continue',
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/in.png',
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
