import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2_v2/components/Button.dart';
import 'package:latihan1_11pplg2_v2/components/TextField.dart';
import 'package:latihan1_11pplg2_v2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2_v2/routes/routes.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ReuseableTextField(
                label: "Input angka 1",
                controller: calculatorController.txtAngka1,
                isNumber: true,
              ),
              ReuseableTextField(
                label: "Input angka 2",
                controller: calculatorController.txtAngka2,
                isNumber: true,
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReuseableButton(
                    text: "+",
                    onPressed: calculatorController.tambah,
                    bordercolor: Colors.blueAccent,
                    textColor: Colors.black,
                  ),
                  ReuseableButton(
                    text: "-",
                    onPressed: calculatorController.kurang,
                    bordercolor: Colors.blueAccent,
                    textColor: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReuseableButton(
                    text: "x",
                    onPressed: calculatorController.kali,
                    bordercolor: Colors.blueAccent,
                    textColor: Colors.black,
                  ),
                  ReuseableButton(
                    text: "/",
                    onPressed: calculatorController.bagi,
                    bordercolor: Colors.blueAccent,
                    textColor: Colors.black,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Obx(() {
                return Text(
                  "Hasil: ${calculatorController.textHasil.value}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }),
              const SizedBox(height: 20),

              Center(
                child: ReuseableButton(
                  text: "Main Menu",
                  onPressed: () {
                    Get.toNamed(AppRoutes.footballPage);
                  },
                  bordercolor: Colors.red,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
