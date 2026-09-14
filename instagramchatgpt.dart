import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramLoginApp());
}

class InstagramLoginApp extends StatelessWidget {
  const InstagramLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Login',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xfffafafa),
      ),
      home: const InstagramLoginPage(),
    );
  }
}

class InstagramLoginPage extends StatefulWidget {
  const InstagramLoginPage({super.key});

  @override
  State<InstagramLoginPage> createState() => _InstagramLoginPageState();
}

class _InstagramLoginPageState extends State<InstagramLoginPage> {
  String selectedLanguage = 'English';

  final TextEditingController usernameController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 360,
            constraints: const BoxConstraints(
              minHeight: 500,
              maxHeight: 650,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xffdddddd),
              ),
            ),
            child: Column(
              children: [
                // Top dark border
                Container(
                  height: 7,
                  color: const Color(0xff444444),
                ),

                const SizedBox(height: 12),

                // Language dropdown
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedLanguage,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 14,
                      color: Colors.grey,
                    ),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'English',
                        child: Text('English'),
                      ),
                      DropdownMenuItem(
                        value: 'Hindi',
                        child: Text('Hindi'),
                      ),
                      DropdownMenuItem(
                        value: 'Spanish',
                        child: Text('Spanish'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          selectedLanguage = value;
                        });
                      }
                    },
                  ),
                ),

                const SizedBox(height: 35),

                // Instagram logo
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff222222),
                    letterSpacing: -2,
                  ),
                ),

                const SizedBox(height: 35),

                // Username / Email field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: TextField(
                    controller: usernameController,
                    style: const TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                      hintText: 'Phone number, email or username',
                      hintStyle: const TextStyle(
                        color: Color(0xff999999),
                        fontSize: 12,
                      ),
                      filled: true,
                      fillColor: const Color(0xfffafafa),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color(0xffdddddd),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color(0xffdddddd),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Password field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: const TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color(0xff999999),
                        fontSize: 12,
                      ),
                      filled: true,
                      fillColor: const Color(0xfffafafa),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color(0xffdddddd),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: const BorderSide(
                          color: Color(0xffdddddd),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: SizedBox(
                    width: double.infinity,
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {
                        if (usernameController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please enter username and password',
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Logging in...'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff70c9ed),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Forgot password
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: 'Forgot your login details? ',
                      ),
                      TextSpan(
                        text: 'Get help',
                        style: TextStyle(
                          color: Color(0xff3578c7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // OR divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Color(0xffdddddd),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Color(0xffdddddd),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // Facebook login
                TextButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Facebook login selected'),
                      ),
                    );
                  },
                  icon: Container(
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: Color(0xff1877f2),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'f',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  label: const Text(
                    'Log in with Facebook',
                    style: TextStyle(
                      color: Color(0xff1877f2),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Spacer(),

                // Bottom divider
                const Divider(
                  color: Color(0xffdddddd),
                  height: 1,
                ),

                const SizedBox(height: 16),

                // Sign up
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    children: [
                      const TextSpan(
                        text: "Don't have an account? ",
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          color: Color(0xff3578c7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}