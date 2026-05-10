import 'package:first_flutter/Screen/Sign_in.dart';
import 'package:first_flutter/widgets/CustomTextFilder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_flutter/widgets/costoncontener.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // إضافة SingleChildScrollView لجعل الصفحة قابلة للتمدد والتمرير
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/singu.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Sign up',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(
                'assets/___png.png',
                width: 74,
              ),
            ),
            const Gap(10),
            const CustomTextField(
                name: 'Email',
                hintText: 'Enter your email',
                suffixIcon: Icons.email),
            const Gap(10),
            const CustomTextField(
                name: 'Phone Number', // تصحيح إملائي بسيط لـ Number
                hintText: 'Enter your number',
                suffixIcon: Icons.phone), // تغيير الأيقونة لتناسب الهاتف
            const Gap(10),
            const CustomTextField(
                name: 'password',
                hintText: 'Enter your password',
                suffixIcon: Icons.visibility),
            const Gap(10),
            const CustomTextField(
                name: 'Confirm password',
                hintText: 'Re-enter your password',
                suffixIcon: Icons.visibility),
            const Gap(30),
            const CustomContainer(
                text: 'Create Account'), // تغيير النص ليكون Sign Up
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Color(0xff616161),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    // العودة لشاشة تسجيل الدخول
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => const SignInScreen()),
                    );
                  },
                  child: const Text(
                    ' Sign In',
                    style: TextStyle(
                        color: Color(0xffFF8383),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Gap(30), // مسافة إضافية في القاع لراحة العين أثناء التمرير
          ],
        ),
      ),
    );
  }
}
