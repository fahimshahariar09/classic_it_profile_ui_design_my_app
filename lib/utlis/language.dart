import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //english language
        "en_us": {
          "home_screen": "Home Screen",
          "Sign In": "Sign In",
          "Sign Up": "Sign Up",
          "Forget Password":"Forget Password",
          "Your new password must be different from previous used passwords.":"Your new password must be different from previous used passwords.",
          "Forget Password?":"Forget Password?"
        },

        //bangla language
        "bn_BD": {
          "home screen": "হোম স্ক্রীন",
          "profile": "প্রোফাইল",
        },

        //hindi language
        "hi_IN": {"home_screen": "होम स्क्रीन", "profile": "प्रोफ़ाइल"}
      };
}
