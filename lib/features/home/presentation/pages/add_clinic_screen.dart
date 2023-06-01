import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_mit/core/theme/colors/colors.dart';
import 'package:pro_mit/features/home/bloc/clinic_bloc/clinic_bloc.dart';
import 'package:pro_mit/features/home/bloc/cubit/change_text_cubit.dart';
import 'package:pro_mit/features/home/model/clinic_input_model.dart';
import 'package:pro_mit/features/home/presentation/pages/home_screen.dart';

class AddClinicScreen extends StatefulWidget {
  const AddClinicScreen({super.key});

  @override
  State<AddClinicScreen> createState() => _AddClinicScreenState();
}

class _AddClinicScreenState extends State<AddClinicScreen> {
  String? specialist;
  String? city;
  String? country;
  TextEditingController regionController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController nameClinicController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  late ChangeTextCubit changeTextCubit;
  @override
  void initState() {
    changeTextCubit = ChangeTextCubit();
    super.initState();
  }

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
        child: Column(
          children: [
            Padding(
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
                    controller: nameClinicController,
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
                      value: specialist,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          specialist = newValue!;
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
                      value: country,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          country = newValue!;
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
                      value: city,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          city = newValue!;
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
                    controller: regionController,
                    hint: 'Region',
                  ),
                  SizedBox(height: 12.h),
                  TextFieldWidget(
                    controller: districtController,
                    hint: 'District',
                  ),
                  SizedBox(height: 12.h),
                  TextFieldWidget(
                    controller: streetController,
                    hint: 'Street',
                  ),
                  SizedBox(height: 12.h),
                  TextFieldWidget(
                    controller: phoneController,
                    type: TextInputType.phone,
                    hint: 'Phone Number',
                  ),
                  SizedBox(height: 12.h),
                  const Text('Basic Info'),
                  SizedBox(height: 12.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.w, color: ColorManager.borderColor),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('sunday'),
                            ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      builder: (BuildContext context) {
                                        String fromTime = '---';
                                        String toTime = '---';
                                        return BlocBuilder(
                                          bloc: changeTextCubit,
                                          builder: (context, state) {
                                            return SizedBox(
                                              height: 250.h,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                        'Available Hours'),
                                                    SizedBox(
                                                      height: 12.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 50.h,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(10
                                                                              .r),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.w,
                                                                      color: ColorManager
                                                                          .borderColor)),
                                                              child: const Text(
                                                                  'From')),
                                                        ),
                                                        SizedBox(width: 12.w),
                                                        Expanded(
                                                            flex: 3,
                                                            child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  var res = await showTimePicker(
                                                                      context:
                                                                          context,
                                                                      initialTime: TimeOfDay(
                                                                          hour: DateTime.now()
                                                                              .hour,
                                                                          minute:
                                                                              DateTime.now().minute));

                                                                  if (res !=
                                                                      null) {
                                                                    changeTextCubit.changeFromTime(MaterialLocalizations.of(
                                                                            context)
                                                                        .formatTimeOfDay(
                                                                            res));
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 50.h,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(10
                                                                              .r),
                                                                      border: Border.all(
                                                                          width: 1
                                                                              .w,
                                                                          color:
                                                                              ColorManager.borderColor)),
                                                                  child: Text(
                                                                      changeTextCubit
                                                                          .date),
                                                                ))),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12.h),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 50.h,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(10
                                                                              .r),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.w,
                                                                      color: ColorManager
                                                                          .borderColor)),
                                                              child: const Text(
                                                                  'To')),
                                                        ),
                                                        SizedBox(width: 12.w),
                                                        Expanded(
                                                            flex: 3,
                                                            child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  var res = await showTimePicker(
                                                                      context:
                                                                          context,
                                                                      initialTime: TimeOfDay(
                                                                          hour: DateTime.now()
                                                                              .hour,
                                                                          minute:
                                                                              DateTime.now().minute));
                                                                  if (res !=
                                                                      null) {
                                                                    changeTextCubit.changeToTime(MaterialLocalizations.of(
                                                                            context)
                                                                        .formatTimeOfDay(
                                                                            res));
                                                                  }
                                                                },
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  height: 50.h,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(10
                                                                              .r),
                                                                      border: Border.all(
                                                                          width: 1
                                                                              .w,
                                                                          color:
                                                                              ColorManager.borderColor)),
                                                                  child: Text(
                                                                      changeTextCubit
                                                                          .toTime),
                                                                ))),
                                                      ],
                                                    ),
                                                    SizedBox(height: 12.h),
                                                    SizedBox(
                                                      width: double.infinity,
                                                      height: 50.h,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          context
                                                              .read<
                                                                  ClinicBloc>()
                                                              .available
                                                              .add({
                                                            'sunday':
                                                                '${changeTextCubit.date}-${changeTextCubit.toTime}'
                                                          });
                                                        },
                                                        style: ButtonStyle(
                                                            shape: MaterialStateProperty.all(
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(10
                                                                            .r))),
                                                            backgroundColor:
                                                                MaterialStateProperty.all(
                                                                    ColorManager
                                                                        .primary)),
                                                        child:
                                                            const Text('Save'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      });
                                },
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r))),
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorManager.primary)),
                                child: const Text('Available hours'))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<ClinicBloc>().add(AddClinicEvent(
                            ClinicInputModel(
                                nameClinicController.text,
                                specialist ?? 'unknown',
                                country ?? 'unknown',
                                city ?? 'unknown',
                                regionController.text,
                                districtController.text,
                                streetController.text,
                                phoneController.text)));
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r))),
                          backgroundColor:
                              MaterialStateProperty.all(ColorManager.primary)),
                      child: const Text('Save'),
                    ),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
            const FooterWidget()
          ],
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
