import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var hackathonLikeState = true.obs;
  var hackathonLikes = 9.obs;
  var like = false.obs;
  var icon = const Icon(Icons.thumb_up_alt_outlined).obs;

  likeUnlike() {
    if (like.value) {
      hackathonLikes.value -= 1;
    } else {
      hackathonLikes.value += 1;
    }
    like.value = !like.value;
  }
}
