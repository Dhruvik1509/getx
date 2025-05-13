import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx_Mvvm_architecture/res/colors/app_colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onpress;

  const GeneralExceptionWidget({super.key, required this.onpress});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cloud_off, color: AppColor.redcolor),
            Text('general_exception'.tr, textAlign: TextAlign.center),
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
