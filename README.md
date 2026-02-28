💰 Finance App
<p align="center"> A modern and responsive Finance UI application built with Flutter </p> <p align="center"> <img src="https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter"/> <img src="https://img.shields.io/badge/Dart-3.x-blue?logo=dart"/> <img src="https://img.shields.io/badge/Responsive-Yes-success"/> <img src="https://img.shields.io/badge/Architecture-Feature--First-orange"/> </p>
✨ Overview

Finance App is a UI-focused mobile application that simulates a personal finance management system.

The project demonstrates:

Scalable feature-first architecture

Clean and reusable UI components

Structured navigation using go_router

Responsive layout using flutter_screenutil

Custom form validation

Authentication flow implementation

This project was built to strengthen Flutter UI engineering and clean project structuring.

📱 Screens
🔹 Onboarding

Interactive onboarding slider using carousel_slider and dots_indicator.

🔹 Authentication Flow

Login

Register

OTP Verification

Forget Password

Create New Password

Password Changed

🔹 Main Application

Home

Statistics (Custom Bar Chart UI)

Card

Profile


🔹 Onboarding
<p align="center"> <img src="screenshotes\onboarding.png" width="280"/> </p>
🔹 Authentication
<p align="center"> <img src="screenshotes\login.png" width="260"/> <img src="screenshotes\register.png" width="260"/> <img src="screenshotes\otp.png" width="260"/> <img src="screenshotes\forget_password.png" width="260"/> <img src="screenshotes\create_new_password.png" width="260"/> <img src="screenshotes\passwore_created.png" width="260"/> </p> 
🔹 Main Screens
<p align="center"> <img src="screenshotes\home.png" width="260"/> <img src="screenshotes\statestics.png" width="260"/> <img src="screenshotes\cards.png" width="260"/> <img src="screenshotes\profile.png" width="260"/> </p>


🧰 Packages Used

cupertino_icons: ^1.0.8
flutter_screenutil: ^5.9.3
go_router: ^17.1.0
flutter_svg: ^2.2.3
pin_code: ^1.2.0
carousel_slider: ^5.1.2
dots_indicator: ^4.0.1

flutter_screenutil → Device responsiveness

go_router → Clean routing architecture

flutter_svg → SVG rendering

pin_code → OTP input UI

carousel_slider → Onboarding slider

dots_indicator → Pagination UI

🏗 Project Structure

lib/
 ├── core/
 │   ├── styling/
 │   ├── widgets/
 │
 ├── features/
 │   ├── onboarding/
 │   ├── auth/
 │   ├── home/
 │   ├── statistics/
 │   ├── card/
 │   ├── profile/
 │
 └── main.dart

 Architecture Approach

Feature-first organization

Clear separation of concerns

Reusable UI components

Scalable navigation structure

🚀 Getting Started
1️⃣ Clone the repository
git clone https://github.com/rimooon/finance-app.git
2️⃣ Install dependencies
flutter pub get
3️⃣ Run the app
flutter run

🔮 Future Improvements

State management integration (Bloc / Riverpod)

Backend integration

API-driven charts

Animations & micro-interactions

Dark mode support

Unit & widget testing

👨‍💻 Author

Developed as a Flutter UI engineering practice project.



 
