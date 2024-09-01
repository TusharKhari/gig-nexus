import 'package:image_picker/image_picker.dart';

class AppCommonFunctions {
  static final AppCommonFunctions _appColors = AppCommonFunctions._internal();

  factory AppCommonFunctions() {
    return _appColors;
  }
  AppCommonFunctions._internal();

  Future<XFile?> getImage(ImageSource source) async {
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? image =
          await _picker.pickImage(source: source, imageQuality: 10);
      return image;
    } catch (e) {
      throw 'error ============== >>>>>>> $e';
    }
  }
}
