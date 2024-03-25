import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constant/colors.dart';
import 'package:ufs_mechine_test/views/calibration_page.dart';
import 'package:ufs_mechine_test/views/inspection_page.dart';
import 'package:ufs_mechine_test/views/training_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    const Color.fromARGB(255, 7, 107, 188),
                    AppColors.primaryColor
                  ]),
            ),
          ),
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('lib/images/hamburger.png')),
          bottom: TabBar(
            indicatorColor: AppColors.appbarIndicatorColor,
            labelColor: AppColors.secondaryColor,
            tabs: [
              Center(
                child: Column(
                  children: [
                    Image.asset('lib/images/transfer_within_a_station.png'),
                    SizedBox(height: 10),
                    Text('Training')
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset('lib/images/query_stats.png'),
                    SizedBox(height: 10),
                    Text('Inspection')
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset('lib/images/settings_night_sight.png'),
                    SizedBox(height: 10),
                    Text('Calibration')
                  ],
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [TrainingScreen(), InspectionScreen(), CalibrationScreen()],
        ),
      ),
    );
  }
}
