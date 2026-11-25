import 'package:material_ui/material_ui.dart';

import 'orange_header.dart';

import 'e03_page_ui.dart';
import 'e05_page_ui.dart';

const Color _orange = Color(0xFFF79515);

class E04PageUI extends StatelessWidget {
  const E04PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // เลื่อนฟอร์มได้เมื่อคีย์บอร์ดลดพื้นที่ของหน้าจอ
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const OrangeHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 44),
                        const Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Enter email address',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 12),
                        const SizedBox(
                          height: 54,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(),
                          ),
                        ),
                        const SizedBox(height: 28),
                        SizedBox(
                          width: double.infinity,
                          height: 58,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const E05PageUI(),
                                ),
                              );
                            },
                            child: const Text(
                              'Send code',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            top: false,
            minimum: const EdgeInsets.fromLTRB(36, 8, 36, 34),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
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
          ),
        ],
      ),
    );
  }
}
