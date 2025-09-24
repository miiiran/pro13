import 'package:flutter/material.dart';
import 'package:pro11/views/verify_otp/view.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: 'Enter your name',
              ),
            ),

            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: 'Enter your email',
              ),
            ),

            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(24),
                //   borderSide: const BorderSide(
                //     color: Color(0xffE5E7EB),
                //   ),
                // ),
                prefixIcon: const Icon(Icons.lock_outline),
                hintText: 'Enter your password',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off),
                ),
              ),
            ),

            // SizedBox(height: 10),
            // Align(
            //   alignment: AlignmentDirectional.centerEnd,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: const Text("Forgot Password?"),
            //   ),
            // ),
            const SizedBox(height: 16),

            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'I agree to the medidoc'),
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(color: Theme.of(context).primaryColor),

                      ),
                      const TextSpan(text: '\nand '),

                      TextSpan(

                        text: 'Privacy Policy',

                        style: TextStyle(color: Theme.of(context).primaryColor),

                      ),

                    ],

                  ),

                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            FilledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>VerifyOTPView(),));
              },
              child: const Text("Sign Up"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("have an account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}