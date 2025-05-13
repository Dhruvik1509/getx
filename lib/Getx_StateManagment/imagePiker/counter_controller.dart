import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {

  RxString imagepath = ''.obs;

  Future getImage() async {
    ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      imagepath.value = image.path.toString();
    }
  }
}
