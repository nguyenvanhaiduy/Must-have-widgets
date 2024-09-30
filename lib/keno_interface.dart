import 'package:flutter/material.dart';
import 'package:must_have_widgets/mobipay_login.dart';
import 'package:must_have_widgets/models/colors.dart';
import 'package:must_have_widgets/models/keno.dart';
import 'package:must_have_widgets/regex.dart';
import 'package:must_have_widgets/widgets/widget_text_button.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class KenoInterface extends StatelessWidget {
  const KenoInterface({super.key});

  @override
  Widget build(BuildContext context) {
    final statistic = [
      Keno(text: 'Chẵn', count: 5),
      Keno(text: 'Lẻ', count: 2),
      Keno(text: 'Hoà CL', count: 3),
    ];
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keno'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          WidgetTextButton(
            element: const MobiPay(),
            text: 'Go to mobipay_login file',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    statistic[0].text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 15),
                  LinearPercentIndicator(
                    width: width * 0.6,
                    percent: 1,
                    lineHeight: 10,
                    barRadius: const Radius.circular(10),
                  ),
                  const Spacer(),
                  Text(
                    '${statistic[0].count} lần',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Text(
                    statistic[2].text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  LinearPercentIndicator(
                    width: width * 0.36,
                    percent: 1,
                    lineHeight: 10,
                    barRadius: const Radius.circular(10),
                  ),
                  const Spacer(),
                  Text(
                    '${statistic[2].count} lần',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Text(
                    statistic[1].text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 40),
                  LinearPercentIndicator(
                    width: width * 0.24,
                    percent: 1,
                    lineHeight: 10,
                    barRadius: const Radius.circular(10),
                  ),
                  const Spacer(),
                  Text(
                    '${statistic[1].count} lần',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Regex(),
                    ),
                  );
                  // Get.to(element);
                },
                child: const Text(
                  'Go to regex file',
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
