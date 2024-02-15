import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/features/home/presentation/views/widgets/location.dart';
import 'search_field.dart';

class LocationAndSearch extends StatelessWidget {
  const LocationAndSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
        children:[
        SearchField(),
        const Gap(10),
        const Location(),
      ]
    );
  }
}