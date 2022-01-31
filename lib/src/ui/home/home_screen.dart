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
                                        hintStyle: const TextStyle(
                                            color: Colors.white),
                                        hintText: 'Search'.toUpperCase(),
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            icon: const Icon(Icons.search)),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Colors.white)),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Colors.white),
                                        )))),
                            Align(
                                alignment: const Alignment(0.0, 1.0),
                                child: SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: OverflowBox(
                                      minHeight: 0.0,
                                      maxHeight:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      minWidth: 0.0,
                                      maxWidth:
                                          MediaQuery.of(context).size.width,
                                      child: Stack(children: [
                                        Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Card(
                                              color: Colors.white,
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15,
                                                            left: 20,
                                                            right: 20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Center(
                                                            child: Text(
                                                                (controller.currentWeatherData !=
                                                                        null)
                                                                    ? controller
                                                                        .currentWeatherData
                                                                        .name: '',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .caption!
                                                                    .copyWith(
                                                                      color: Colors
                                                                          .black45,
                                                                      fontFamily:
                                                                          'flutterfonts',
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    )))
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ))
                                      ])),
                                ))
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
