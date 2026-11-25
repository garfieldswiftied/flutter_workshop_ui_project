# flutter_workshop_ui_project

Assignment 02 — แอป **Orange ส้ม** (UI 6 หน้า ตาม Mockup)

| ไฟล์ | คลาส | หน้าจอ |
|---|---|---|
| `lib/e01_page_ui.dart` | `E01PageUI` | Splash / Berry Juice (หน้าแรก) |
| `lib/e02_page_ui.dart` | `E02PageUI` | Welcome back (Login) |
| `lib/e03_page_ui.dart` | `E03PageUI` | Register |
| `lib/e04_page_ui.dart` | `E04PageUI` | Forgot your password? |
| `lib/e05_page_ui.dart` | `E05PageUI` | OTP Verification |
| `lib/e06_page_ui.dart` | `E06PageUI` | Create New Password |

รูปอยู่ใน `assets/images/` และประกาศไว้ใน `pubspec.yaml` แล้ว

## วิธีรัน

```bash
flutter create . --project-name flutter_workshop_ui_project   # สร้าง android/ ios/ web/ (ไม่ทับ lib/ pubspec.yaml test/)
flutter pub get
dart run flutter_launcher_icons   # สร้างไอคอนแอปจาก assets/icon/icon.png
flutter run
```

เลือก Simulator เป็น **iPhone 15 Pro Max**

## ตั้งชื่อแอปเป็น "Orange ส้ม"

- Android: `android/app/src/main/AndroidManifest.xml` → `android:label="Orange ส้ม"`
- iOS: `ios/Runner/Info.plist` → `CFBundleDisplayName` และ `CFBundleName` เป็น `Orange ส้ม`
- ชื่อที่แสดงในโค้ด: `MaterialApp(title: 'Orange ส้ม')` ใน `lib/main.dart`
