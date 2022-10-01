import 'package:flutter/material.dart';
import 'package:flutter_get/my_cart.dart';
import 'package:flutter_get/my_controller.dart';
import 'package:get/get.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Items",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => MyCart());
                },
                child: Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Go Back",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
