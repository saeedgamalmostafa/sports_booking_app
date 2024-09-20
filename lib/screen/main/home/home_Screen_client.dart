import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spod_app/model/sport_field.dart';
import 'package:spod_app/theme.dart';
import 'package:spod_app/utils/dummy_data.dart';

class HomeScreenCli extends StatelessWidget {
  static String id = 'client';
  static String accountType ="client";


  List<SportField> fieldList = recommendedSportField;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          header(context),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                  child: Text(
                    "Reveal my Booking!",
                    style: greetingTextStyle,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Image.asset(
                              "assets/images/no_transaction_illustration.png",
                              width: 150,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Text(
                              "There is no reserved playground ",
                              style: subTitleTextStyle,
                            ),
                            const SizedBox(
                              height: 32.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // RECOMMENDED FIELDS
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header(context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        // SEARCH Icon
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "my playing fields,",
                      style: descTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      sampleUser.name,
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor500,
                  borderRadius: BorderRadius.circular(borderRadiusSize)),
            )
          ],
        ),
      ),
    );
  }
}
