import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/home/widgets/location.dart';
import '../../../component/inputs/custom_search_field.dart';

class LocationAndSearch extends StatelessWidget {
  LocationAndSearch({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SearchField(
        controller: searchController,
      ),
      Gap(10.w),
      const Location(),
    ]);
  }
}
