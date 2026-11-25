import 'package:material_ui/material_ui.dart';

import 'orange_header.dart';

const Color _orange = Color(0xFFF79515);

class E06PageUI extends StatelessWidget {
  const E06PageUI({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 18),
                  const Text(
                    'Create New Password',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Enter new password',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 31),
                  const _Field(hint: 'Enter New password', highlight: true),
                  const SizedBox(height: 12),
                  const _Field(hint: 'Confirm password'),
                  const SizedBox(height: 28),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {
                        // กลับไป Login เดิมและปิดหน้ากู้รหัสผ่าน
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName('/login'),
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
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
  const _Field({required this.hint, this.highlight = false});

  final String hint;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextField(
        obscureText: true,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: highlight
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: _orange),
                )
              : null,
        ),
      ),
    );
  }
}
