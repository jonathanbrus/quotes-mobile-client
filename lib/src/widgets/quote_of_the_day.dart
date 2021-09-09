import 'package:flutter/material.dart';

class QuoteOfTheDay extends StatelessWidget {
  const QuoteOfTheDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.94),
                Theme.of(context).primaryColor.withOpacity(0.5),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Quote",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              SelectableText(
                "data",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
