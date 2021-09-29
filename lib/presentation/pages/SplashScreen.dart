// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:grsia/core/di/injector_container.dart';
// import 'package:grsia/data/datasource/local-datasource/shared_prefrances_data_source.dart';
// import 'package:local_auth/local_auth.dart';
//
// class SplashUI extends StatefulWidget {
//   @override
//   _SplashUIState createState() => _SplashUIState();
// }
//
// bool userStatus;
//
// Future<bool> getUserStatus() async {
//   //Check is logged in or no
//
//   return true;
// }
//
// class _SplashUIState extends State<SplashUI> {
//   final LocalAuthentication _localAuthentication = LocalAuthentication();
//
//   // Biometric Authantication
//   Future<bool> _isBiometricAvailable() async {
//     bool isAvailable = false;
//     try {
//       isAvailable = await _localAuthentication.canCheckBiometrics;
//     } on PlatformException catch (e) {
//       print(e);
//     }
//
//     if (!mounted) return isAvailable;
//
//     isAvailable
//         ? print('Biometric is available!')
//         : print('Biometric is unavailable.');
//
//     return isAvailable;
//   }
//
//   Future<void> _getListOfBiometricTypes() async {
//     try {
//       Globals.listOfBiometrics.value =
//           await _localAuthentication.getAvailableBiometrics();
//     } on PlatformException catch (e) {
//       print(e);
//     }
//
//     if (!mounted) return;
//     print(Globals.listOfBiometrics.value);
//   }
//
//   Future<void> _authenticateUser() async {
//     var sheetAuth;
//     bool isAuthenticated = false;
//     try {
//       isAuthenticated = await _localAuthentication.authenticateWithBiometrics(
//         localizedReason: "authenticate",
//         useErrorDialogs: true,
//         stickyAuth: true,
//       );
//     } on PlatformException catch (e) {
//       print(e);
//     }
//
//     if (!mounted) return;
//
//     isAuthenticated
//         ? print('User is authenticated!')
//         : print('User is not authenticated.');
//   }
//
//   Future<bool> getBiometricStatus() async {
//     await getUserStatus();
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     var biometricStatus = prefs.getBool("biometricSecurity") ?? true;
//     setState(() {
//       if (biometricStatus == true) {
//         Globals.biometricSwitchValue.value = true;
//       } else {
//         Globals.biometricSwitchValue.value = false;
//       }
//     });
//     if (Globals.biometricSwitchValue.value == true && userStatus == true) {
//       if (await _isBiometricAvailable()) {
//         await _getListOfBiometricTypes();
//         await _authenticateUser();
//         Get.close(1);
//         Globals.navigateTo(HomeUI());
//       }
//     }
//     return Globals.biometricSwitchValue.value;
//   }
//
//   getAppLanguageState() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     var storedLang = prefs.getString('appLang');
//     setState(() {
//       if (storedLang == "ar") {
//         AppLocalizations.of(context).changeLanguage(
//           Locale("ar"),
//         );
//       } else {
//         AppLocalizations.of(context).changeLanguage(
//           Locale("en"),
//         );
//       }
//     });
//   }
//
//   void initState() {
//     super.initState();
//     getBiometricStatus();
//     getAppLanguageState();
//     Timer(
//       Duration(seconds: 1),
//       () => Navigator.push(
//         context,
//         PageRouteBuilder(
//           pageBuilder: (context, a1, a2) =>
//               userStatus == false ? LoginUI() : HomeUI(),
//           transitionsBuilder: (context, animation, a2, child) =>
//               FadeTransition(opacity: animation, child: child),
//           transitionDuration: Duration(milliseconds: 700),
//         ),
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: EdgeInsets.only(top: 150),
//               child: Image.asset(
//                 'assets/images/qrcs.png',
//                 width: 300,
//                 height: 300,
//                 // fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Image.asset(
//               'assets/images/splash.png',
//               // fit: BoxFit.fill,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
