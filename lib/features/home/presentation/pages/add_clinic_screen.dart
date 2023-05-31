import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_mit/core/theme/colors/colors.dart';

class AddClinicScreen extends StatefulWidget {
  const AddClinicScreen({super.key});

  @override
  State<AddClinicScreen> createState() => _AddClinicScreenState();
}

class _AddClinicScreenState extends State<AddClinicScreen> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(
                    image: const AssetImage('assets/images/path.png'),
                    height: 16.h,
                    width: 14.w,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  const Text('Clinics >'),
                  const Text(' clici1'),
                ],
              ),
              SizedBox(height: 16.h),
              const Text('Basic Info'),
              SizedBox(height: 16.h),
              TextFieldWidget(
                controller: TextEditingController(),
                hint: 'Clinic Name',
              ),
              SizedBox(height: 12.h),
              Container(
                height: 50.h,
                padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w, color: ColorManager.borderColor)),
                child: DropdownButton(
                  iconDisabledColor: ColorManager.primary,
                  iconEnabledColor: ColorManager.primary,
                  borderRadius: BorderRadius.circular(10.r),
                  elevation: 0,
                  underline: const SizedBox(),
                  hint: const Text('Specialty'),
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 50.h,
                padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w, color: ColorManager.borderColor)),
                child: DropdownButton(
                  iconDisabledColor: ColorManager.primary,
                  iconEnabledColor: ColorManager.primary,
                  borderRadius: BorderRadius.circular(10.r),
                  elevation: 0,
                  underline: const SizedBox(),
                  hint: const Text('Country'),
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 50.h,
                padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                        width: 1.w, color: ColorManager.borderColor)),
                child: DropdownButton(
                  iconDisabledColor: ColorManager.primary,
                  iconEnabledColor: ColorManager.primary,
                  borderRadius: BorderRadius.circular(10.r),
                  elevation: 0,
                  underline: const SizedBox(),
                  hint: const Text('City'),
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/map.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(height: 12.h),
              TextFieldWidget(
                controller: TextEditingController(),
                hint: 'Region',
              ),
              SizedBox(height: 12.h),
              TextFieldWidget(
                controller: TextEditingController(),
                hint: 'District',
              ),
              SizedBox(height: 12.h),
              TextFieldWidget(
                controller: TextEditingController(),
                hint: 'Street',
              ),
              SizedBox(height: 12.h),
              TextFieldWidget(
                controller: TextEditingController(),
                type: TextInputType.phone,
                hint: 'Phone Number',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  TextInputType? type;
  TextFieldWidget({
    super.key,
    required this.controller,
    required this.hint,
    this.type = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: ColorManager.hintTextColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: ColorManager.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: ColorManager.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: ColorManager.borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: Colors.red),
        ),
      ),
    );
  }
}
