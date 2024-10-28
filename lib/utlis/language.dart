import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //english language
        "en_us": {"home_screen": "Home Screen", "profile": "Profile"},

        //bangla language
        "bn_BD": {
          "home screen": "হোম স্ক্রীন",
          "profile": "প্রোফাইল",
        },

        //hindi language
        "hi_IN": {"home_screen": "होम स्क्रीन", "profile": "प्रोफ़ाइल"}
      };
}
