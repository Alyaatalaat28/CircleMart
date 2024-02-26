import 'package:flutter/widgets.dart';
import 'categoris_list_item.dart';

class CategorisList extends StatelessWidget {
  const CategorisList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(5,(ndex)=> const Padding(
         padding: EdgeInsets.all(8.0),
         child: CategorisListItem(),
       )
    ));
  }
}