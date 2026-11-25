import 'package:material_ui/material_ui.dart';

import 'e02_page_ui.dart';

class E01PageUI extends StatelessWidget {
  const E01PageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 24, bottom: 64),
          child: Column(
            children: [
              FractionallySizedBox(
                widthFactor: 0.9,
                child: Image.asset(
                  'assets/images/img_orange1.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'BERRY JUICE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  height: 1.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'A Moments of healthy sip\nThe best vitamin for your health',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 112),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: const RouteSettings(name: '/login'),
                          builder: (context) => const E02PageUI(),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Expanded(child: Text('Explore Now')),
                        Icon(Icons.chevron_right, size: 32),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
