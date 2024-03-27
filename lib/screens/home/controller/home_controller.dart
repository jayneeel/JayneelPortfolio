import 'package:get/get.dart';

class HomeController extends GetxController {
  var hackathonLikes = 9.obs;
  var like = false.obs;

  likeUnlike() {
      print(hackathonLikes.value);
    (like.value) ? hackathonLikes.value -= 1 : hackathonLikes.value +=1;
      like.value = !like.value;
  }

}