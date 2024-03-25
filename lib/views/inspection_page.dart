import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:ufs_mechine_test/constant/colors.dart';
import 'package:ufs_mechine_test/widget/accreditaion_widget.dart';
import 'package:ufs_mechine_test/widget/button_widget.dart';
import 'package:ufs_mechine_test/widget/comment_widget.dart';
import 'package:ufs_mechine_test/widget/location_dropdown.dart';
import 'package:ufs_mechine_test/widget/mobile_drop_down.dart';
import 'package:ufs_mechine_test/widget/small_home_container.dart';
import 'package:ufs_mechine_test/widget/textfield_widget.dart';

class InspectionScreen extends StatelessWidget {
  const InspectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    SmallEquepmentHomeContainer(
                        seconColor: Colors.amber.shade200,
                        color: AppColors.totalEqupmentContainerColor,
                        title: 'Total\nEquipments',
                        value: 10),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    SmallEquepmentHomeContainer(
                      color: AppColors.expiringEqupmentContainerColor,
                      title: 'Expiring\nEquipments',
                      value: 6,
                      seconColor: Colors.red.shade200,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                child: Row(
                  children: [
                    SmallEquepmentHomeContainer(
                        seconColor: Colors.pink.shade200,
                        color: AppColors.upcomingInspectionsColor,
                        title: 'Upcoming\nInspections',
                        value: 10),
                    SizedBox(
                      width: size.width / 40,
                    ),
                    SmallEquepmentHomeContainer(
                      color: AppColors.totalLocations,
                      title: 'Total\nLocations',
                      value: 6,
                      seconColor: Colors.green.shade200,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  'We’re ready to',
                  style: TextStyle(
                      fontSize: size.height / 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: StrokeText(
                  strokeColor: AppColors.secondaryColor,
                  text: "Inspect",
                  textColor: Colors.transparent,
                  textStyle: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height / 1.1,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image.asset(
                          'lib/images/Rectangle 46.png',
                          height: size.height / 3,
                          width: size.width / 1,
                        ),
                        Positioned(
                          top: size.height / 5.5,
                          right: size.width / 11,
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.amber,
                            child: Icon(Icons.arrow_downward_sharp),
                          ),
                        ),
                        Positioned(
                          top: size.height / 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Text(
                                  'Please fill out the form',
                                  style: TextStyle(
                                      color: AppColors.secondaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                ),
                                const TextfieldWidget(
                                    title: 'Full Name',
                                    icon: Icons.person_2_outlined),
                                const SizedBox(height: 20),
                                const LocationDropDown(),
                                const SizedBox(height: 20),
                                const MobileDropDown(),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextfieldWidget(
                                    title: 'Additional Message',
                                    icon: Icons.message),
                                const SizedBox(height: 20),
                                const ButtonWidget(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Accreditaion',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: AppColors.secondaryColor),
                ),
              ),
              const AccreditationWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'See What out customer says',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: AppColors.secondaryColor),
                ),
              ),
              const CommentWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Our Client',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: AppColors.secondaryColor),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: const Size(120, 40),
                          child: Image.network(
                            'https://image.cnbcfm.com/api/v1/image/44092896-top_ad_icons_cover.jpg?v=1349480123&w=1920&h=1080',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ],
      ),
    );
  }
}
