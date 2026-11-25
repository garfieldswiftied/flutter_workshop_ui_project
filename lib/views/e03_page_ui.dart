import 'package:material_ui/material_ui.dart';

const Color _orange = Color(0xFFF79515);

class E03PageUI extends StatelessWidget {
  const E03PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 430 / 230,
              child: Image.asset(
                'assets/images/img_orange2.png',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 36,
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Create your new account',
                    style: TextStyle(fontSize: 22, height: 1.15),
                  ),
                  const SizedBox(height: 24),
                  const _Field(hint: 'Name'),
                  const SizedBox(height: 12),
                  const _Field(hint: 'E-mail'),
                  const SizedBox(height: 12),
                  const _Field(hint: 'Phone'),
                  const SizedBox(height: 12),
                  const _Field(hint: 'Password', obscure: true),
                  const SizedBox(height: 16),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 14, height: 1.25),
                      children: [
                        TextSpan(text: 'By signing up you agree to our '),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(color: _orange),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: _orange),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Expanded(child: Divider(color: _orange)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: _orange)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/img_g.png',
                        width: 35,
                        height: 35,
                      ),
                      const SizedBox(width: 38),
                      Image.asset(
                        'assets/images/img_f.png',
                        width: 35,
                        height: 35,
                      ),
                      const SizedBox(width: 38),
                      Image.asset(
                        'assets/images/img_a.png',
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      const Text(
                        'Already have an Account? ',
                        style: TextStyle(fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Text(
                          'Log in',
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
  const _Field({required this.hint, this.obscure = false});

  final String hint;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(hintText: hint),
      ),
    );
  }
}
