import 'package:material_ui/material_ui.dart';

import 'e06_page_ui.dart';
import 'orange_header.dart';

const Color _orange = Color(0xFFF79515);

class E05PageUI extends StatelessWidget {
  const E05PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // แถบหัวข้อ: ปุ่มย้อนกลับ + OTP Verification
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: const [
                    OrangeBackButton(),
                    Expanded(
                      child: Text(
                        'OTP Verification',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 48),
                  ],
                ),
              ),
              const SizedBox(height: 62),
              Center(
                child: Image.asset(
                  'assets/images/img_orange3.png',
                  width: 310,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 42),
                    const Text(
                      'Enter OTP',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const SizedBox(
                      width: 305,
                      child: Text(
                        'An 4 digit code has been sent to your email',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 264,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => Flexible(
                            child: SizedBox(
                              width: 60,
                              height: 58,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  filled: true,
                                  fillColor: const Color(0xFFE1E1E1),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: [
                            TextSpan(text: 'You should receive the OTP in '),
                            TextSpan(
                              text: '30 Second',
                              style: TextStyle(color: _orange),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E06PageUI(),
                            ),
                          );
                        },
                        child: const Text(
                          'Verify',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
