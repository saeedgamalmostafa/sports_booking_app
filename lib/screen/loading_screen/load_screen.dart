import 'dart:async';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'controller/load_controller.dart';



class LoadingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(LoadingController());
    return
      Scaffold(
        body:Center(
          child:  Container(
              height: MediaQuery.of(context).size.height/2,
              color: Colors.white,
              child:
              const SpinKitSpinningLines( color: Colors.blue )
          ),
        ),
      );
  }
}
