import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/constants/text.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.violetColor,
              border: Border.all(
                color: AppColors.violetColor,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.rectangle_outlined,
                    size: 15,
                    color: AppColors.blackColor,
                  ),
                  Icon(
                    Icons.rectangle_outlined,
                    size: 15,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.blackColor)),
            child: const Icon(
              CupertinoIcons.arrow_turn_up_right,
              size: 25,
              color: AppColors.blackColor,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.blackColor)),
            child: const Icon(
              Icons.more_vert,
              size: 20,
              color: AppColors.blackColor,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        title: Text(
          GlobalText.taskList,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Card(
                color: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: AppColors.blackColor)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GlobalText.taskOne,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            size: 20,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              color: AppColors.pinkColor,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppColors.pinkColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                GlobalText.high,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: size.width * 0.25,
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                              color: AppColors.violetColor,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppColors.violetColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                GlobalText.onTrack,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 17),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_outlined,
                            size: 20,
                            color: AppColors.greyColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            GlobalText.dateTaskOne,
                            style: GoogleFonts.poppins(
                              color: AppColors.blackColor.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                          ),
                          Icon(
                            Icons.link,
                            size: 20,
                            color: AppColors.blackColor.withOpacity(0.8),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            GlobalText.numberLinks,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            CupertinoIcons.text_bubble,
                            size: 15,
                            color: AppColors.blackColor.withOpacity(0.8),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            GlobalText.numberLinks,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      )
                    ],
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
