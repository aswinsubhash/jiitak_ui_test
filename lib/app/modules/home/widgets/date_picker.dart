import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../../utils/app_color.dart';

class DatePickerCustom extends StatefulWidget {
  const DatePickerCustom({Key? key}) : super(key: key);

  @override
  State<DatePickerCustom> createState() => _DatePickerCustomState();
}

class _DatePickerCustomState extends State<DatePickerCustom> {
  int selectedIndex = 0;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ja', null);
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Row(
        children: List.generate(
          lastDayOfMonth.day,
          (index) {
            final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
            final dayName = DateFormat('EEEE', 'ja_JP')
                .format(currentDate); // Format day in Japanese
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 16.0 : 0.0,
                right: 16.0,
              ),
              child: GestureDetector(
                onTap: () => setState(() {
                  selectedIndex = index;
                }),
                child: Container(
                  height: 80.0,
                  width: 50.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? AppColor.kAppOrange
                        : AppColor.kTrasparent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          dayName.substring(0, 1),
                          style: TextStyle(
                            fontSize: 24.0,
                            color: selectedIndex == index
                                ? AppColor.kWhite
                                : AppColor.kBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          "${index + 1}",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: selectedIndex == index
                                ? AppColor.kWhite
                                : AppColor.kBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}