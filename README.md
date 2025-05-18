# 🔐 Dart Login System Console App

A simple Dart-based console application that simulates a login and authentication system using terminal input, file handling, JSON encoding/decoding, and Dart's async features.
---
## 📋 Features

- 👤 User login with name, age, and password input  
- 🔑 Password verification (with hardcoded credential)  
- 📝 Save and read user details from a local file  
- 📦 JSON encode and decode user data  
- 🔁 Simulated data sending using Dart
- ❓ "Forgot password" check using stored credentials
---
## 📂 File Structure

1. User is prompted to enter their name and age.
2. The app then asks for a password.
3. If the password matches (`faizan1122`), the login is successful.
4. User details are saved in a file (`path.rd`) and encoded in JSON format.
5. Data is "sent to server" (simulated using a Timer).
6. User can choose to read saved data or simulate a forgotten password.

## 💻 How to Run

Make sure you have Dart installed:  
👉 [Install Dart](https://dart.dev/get-dart)

Then run the app using:

```bash
dart main.dart
