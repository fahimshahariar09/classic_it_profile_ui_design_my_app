import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //english language
        "en_us": {
          "home_screen": "Home Screen",
          "Sign In": "Sign In",
          "Sign Up": "Sign Up",
          "Forget Password": "Forget Password",
          "Your new password must be different from previous used passwords.":
              "Your new password must be different from previous used passwords.",
          "Forget Password?": "Forget Password?",
          "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.":
              "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.",
          "OTP VERIFICATION": "OTP VERIFICATION",
          "Please enter the verification code sent to":
              "Please enter the verification code sent to",
          "Don't receive code?": "Don't receive code?",
          "Re-send": "Re-send",
        },

        //bangla language
        "bn_BD": {
          "Sign In": "সাইন ইন",
          "Sign Up": "সাইন আপ",
          "Forget Password": "পাসওয়ার্ড ভুলে গেছেন",
          "Your new password must be different from previous used passwords.":
              "আপনার নতুন পাসওয়ার্ড পূর্বে ব্যবহৃত পাসওয়ার্ডগুলির থেকে আলাদা হতে হবে",
          "Forget Password?": "পাসওয়ার্ড ভুলে গেছেন?",
          "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.":
              "কিছু ভাববেন না! এটা হয়ে যায়। দয়া করে ফোন নম্বর লিখুন, আমরা এই নম্বরে OTP পাঠাবো",
          "OTP VERIFICATION": "OTP যাচাইকরণ",
          "Please enter the verification code sent to":
              "দয়া করে যাচাইকরণ কোডটি প্রবেশ করুন যা পাঠানো হয়েছে",
          "Don't receive code?": "কোড পাননি",
          "Re-send": "পুনরায় পাঠান"
        },

        //hindi language
        "hi_IN": {
          "Sign In": "साइन इन",
          "Sign Up": "साइन अप",
          "Forget Password": "क्या आप पासवर्ड भूल गए हैं",
          "Your new password must be different from previous used passwords.":
              "आपका नया पासवर्ड पूर्व में उपयोग किए गए पासवर्ड से अलग होना चाहिए।",
          "Forget Password?": "क्या आप पासवर्ड भूल गए हैं?",
          "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.":
              "चिंता मत करें! ऐसा होता है। कृपया फोन नंबर दर्ज करें, हम इस नंबर पर OTP भेजेंगे।",
          "OTP VERIFICATION": "OTP सत्यापन",
          "Please enter the verification code sent to":
              "कृपया वह सत्यापन कोड दर्ज करें जो भेजा गया है",
          "Don't receive code?": "कोड प्राप्त नहीं हुआ?",
          "Re-send": "पुनः भेजें"
        }
      };
}
