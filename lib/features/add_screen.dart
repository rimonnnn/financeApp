import 'package:finance_ui/features/main_screen/widgets/back_buttom_black_widget.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(children: [BackButtomBlackWidget()]),
        ),
      ),
    );
  }
}
