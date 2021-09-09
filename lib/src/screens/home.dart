import 'package:flutter/material.dart';

import '../widgets/greeting.dart';
import '../widgets/quote_of_the_day.dart';
import '../widgets/top_quotes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Greeting(),
                QuoteOfTheDay(),
                SizedBox(height: 18),
                TopQuotes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
