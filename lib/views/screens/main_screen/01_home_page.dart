import 'package:flutter/material.dart';
import 'package:orange_dc/views/widgets/services.dart';
import '../../widgets/heading_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [

              HeadingText(),

              const Services(),

            ],
          );
  }
}
