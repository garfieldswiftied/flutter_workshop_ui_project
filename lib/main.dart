import 'package:material_ui/material_ui.dart';

import 'e01_page_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orange ส้ม',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF7941D)),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // กำหนดให้ E01PageUI เป็นหน้าจอแรก
      home: const E01PageUI(),
    );
  }
}
