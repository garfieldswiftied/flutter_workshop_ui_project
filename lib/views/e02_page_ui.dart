import 'package:material_ui/material_ui.dart';

import 'orange_header.dart';

import 'e03_page_ui.dart';
import 'e04_page_ui.dart';

const Color _orange = Color(0xFFF79515);

class E02PageUI extends StatelessWidget {
  const E02PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OrangeHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 36,
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Login to your account',
                    style: TextStyle(fontSize: 22, height: 1.15),
                  ),
                  const SizedBox(height: 26),
                  const _Field(hint: 'Enter email or phone'),
                  const SizedBox(height: 12),
                  const _Field(
                    hint: 'Password',
                    obscure: true,
                    suffix: Icon(
                      Icons.visibility_off,
                      size: 24,
                      color: Colors.black45,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E04PageUI(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: _orange, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const _OrDivider(),
                  const SizedBox(height: 28),
                  const _SocialRow(),
                  const SizedBox(height: 28),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      const Text(
                        "Don't have an Account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E03PageUI(),
                            ),
                          );
                        },
                        child: const Text(
                          'Create Account',
                          style: TextStyle(color: _orange, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  const _Field({required this.hint, this.obscure = false, this.suffix});

  final String hint;
  final bool obscure;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(hintText: hint, suffixIcon: suffix),
      ),
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: _orange)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(child: Divider(color: _orange)),
      ],
    );
  }
}

class _SocialRow extends StatelessWidget {
  const _SocialRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/img_g.png', width: 35, height: 35),
        const SizedBox(width: 38),
        Image.asset('assets/images/img_f.png', width: 35, height: 35),
        const SizedBox(width: 38),
        Image.asset('assets/images/img_a.png', width: 35, height: 35),
      ],
    );
  }
}
