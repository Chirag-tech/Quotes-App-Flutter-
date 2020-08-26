import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quoteslist = [
    Quote(
        text: "Be Yourself,everyone else is already taken",
        author: "-Oscar Wilde"),
    Quote(
        text: "I have nothing to declare except my genius",
        author: "-Will Shakespeare"),
    Quote(
        text: "The truth is rarely pure and never simple",
        author: "-Hannah baker")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Quotes App'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: quoteslist
            .map((quote) => (QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quoteslist.remove(quote);
                  });
                })))
            .toList(),
      ),
    );
  }
}
