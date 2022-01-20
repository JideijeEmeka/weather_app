import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/src/ui/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController(
      city: 'city')); // Rather Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,  
        body: GetBuilder<HomeController>(
            builder: (controller) => Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cloud-in-blue-sky.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        child: Stack(
                          children: [
                            Container(
                              child: AppBar(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                leading: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, left: 20, top: 100),
                              child: TextField(
                                  onChanged: (val) {},
                                  // style: const TextStyle(color: Colors.white),
                                  textInputAction: TextInputAction.search,
                                  onSubmitted: (val) {},
                                  decoration: InputDecoration(
                                      hintStyle: const TextStyle(color: Colors.white),
                                      hintText: 'Search'.toUpperCase(),
                                      suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.search)))),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                )));
  }
}
