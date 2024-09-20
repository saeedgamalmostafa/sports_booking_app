import 'dart:async';
import 'package:get/get.dart';
import 'package:spod_app/helper/shared_prefrences.dart';
import 'package:spod_app/regest/login_screen.dart';
import 'package:spod_app/screen/main/home/home_screen.dart';

class LoadingController extends GetxController {
  // final homeController =Get.put(HomeController());
  // final placeController =Get.put(PlaceController());


  late Timer timer;
  checkAccount() {
    Future.doWhile(() async {
     var token= await CacheHelper.getData(key: 'token');
      print("the user existance ");
      if
      (token !=null)
    {
      Get.offAll(HomeScreen());
    }
      else{
        Get.offAll(LoginPage());
      }
      timer = await Future.delayed(Duration(seconds: 3));
      return true;
    });
  }

  @override
  void dispose() {
    timer.cancel();
     super.dispose();
  }

  @override
  onInit()async{
    checkAccount();
   //  getCurrentPosition(Get.overlayContext!);
   // placeController.currentPosition= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
   // print('@@@@@@@@${placeController.currentPosition}');
    super.onInit();
  }

  // startTimer() {
  //   Timer(const Duration(seconds: 3), () async {
  //     handleLocationPermission(Get.overlayContext!);
  //     Get.offAndToNamed(AppRoute.home);
  //   });
  // }




}
