import 'package:first_flutter/widgets/CustomTextFilder.dart';
import 'package:first_flutter/widgets/costoncontener.dart'; // تأكد من صحة اسم الملف
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_flutter/Screen/Sign_up.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/singu.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Sign In',
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
            const SizedBox(height: 10),
            const CustomTextField(
                name: 'Email',
                hintText: 'Enter your email',
                suffixIcon: Icons.email),
            const Gap(10),
            const CustomTextField(
                name: 'password',
                hintText: 'Enter your password',
                suffixIcon: Icons.lock),
            const Gap(40),
            const CustomContainer(text: 'Sign In'),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  ' Don\'t have an account ?',
                  style: TextStyle(
                      color: Color(0xff616161),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  // تم استبدال RawGestureDetector بـ GestureDetector
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => const SignUpScreen()),
                    );
                  },
                  child: const Text(
                    ' sign up',
                    style: TextStyle(
                        color: Color(0xffFF8383),
                        fontSize: 14,
                        fontWeight: FontWeight.bold), // جعلته Bold لتمييزه
                  ),
                ),
              ],
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
