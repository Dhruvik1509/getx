import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_Mvvm_architecture/res/colors/app_colors.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;

  const InternetExceptionWidget({super.key, required this.onpress});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off, color: AppColor.redcolor),
            Text('internet_exception'.tr, textAlign: TextAlign.center),
            SizedBox(height: 20),
            GestureDetector(
              onTap: widget.onpress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColor.primaryButtonColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Retry')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
