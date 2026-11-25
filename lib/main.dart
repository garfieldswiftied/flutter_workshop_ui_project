import 'package:material_ui/material_ui.dart';

import 'views/e01_page_ui.dart';

const Color _orange = Color(0xFFF79515);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: _orange),
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Orange ส้ม',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _orange,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            textStyle: theme.textTheme.labelLarge?.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationThemeData(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          hintStyle: const TextStyle(fontSize: 14, color: Colors.black54),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black38),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: _orange),
          ),
        ),
      ),
      // ให้หน้าแอปมีพื้นที่กว้างเท่ากับกรอบอ้างอิงเมื่อเปิดบนจอใหญ่
      builder: (context, child) => ColoredBox(
        color: Colors.white,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 430),
            child: child,
          ),
        ),
      ),
      // กำหนดให้ E01PageUI เป็นหน้าจอแรก
      home: const E01PageUI(),
    );
  }
}
