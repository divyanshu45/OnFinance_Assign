import 'package:finance_assign/widgets/analyst_ratings_holder.dart';
import 'package:finance_assign/widgets/app_bar.dart';
import 'package:finance_assign/widgets/details_holder.dart';
import 'package:finance_assign/widgets/head_col.dart';
import 'package:finance_assign/widgets/historical_yeild_holder.dart';
import 'package:finance_assign/widgets/image_holder.dart';
import 'package:finance_assign/widgets/portfolio_expense_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    statusBarColor: Colors.black,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness:Brightness.light ,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF111115),
            child: Column(
              children: [
                AppBarWidget(),
                HeadCol(),
                ImageHolder(),
                AnalystRating(),
                PortfolioExpense(),
                HistoricalYieldHolder(),
                DetailCol()
              ],
            ),
          ),
        ),
      ),
    );
  }
}