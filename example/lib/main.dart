import 'package:flutter/material.dart';
import 'package:hasnain_ui_badge/hasnain_ui_badge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hasnain UI Badge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hasnain UI Badge'),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              const Text(
                'Badge Example',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const BadgeHasnainUI(
                text: 'solid',
                variant: Variant.solid,
                isDisabled: true,
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                text: 'custom solid',
                variant: Variant.solid,
                width: 120,
                height: 40,
                elevation: 0.5,
                backgroundColor: Colors.orange,
                // textColor: Colors.black,
                borderRadius: BorderRadius.circular(12),
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 100,
                text: 'destructive',
                variant: Variant.destructive,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 120,
                height: 40,
                text: 'destructive2',
                variant: Variant.destructive,
                onPressed: () {},
                borderRadius: BorderRadius.circular(12),
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 100,
                text: 'secondary',
                variant: Variant.secondary,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 120,
                height: 40,
                text: 'secondary2',
                variant: Variant.secondary,
                onPressed: () {},
                borderRadius: BorderRadius.circular(10),
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 100,
                text: 'outline',
                variant: Variant.outline,
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              BadgeHasnainUI(
                width: 140,
                height: 40,
                text: 'custom outline',
                variant: Variant.outline,
                onPressed: () {},
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.red, width: 2),
                // textColor: Colors.red,
                textStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
