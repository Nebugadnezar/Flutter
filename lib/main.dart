import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: data(),
  ));
}

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  _dataState createState() => _dataState();
}

class _dataState extends State<data> {
  List<Quote> quotes = [
    Quote(author: 'Nizar', text: 'taratata taratata  '),
    Quote(author: 'Salah', text: 'marakana marakana marakana marakana '),
    Quote(author: 'nizar', text: 'najem najemnajemnajemnajem '),
    Quote(author: 'hello', text: 'najem najemnajemnajemnajem '),
  ];

  Widget quoteTemp(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: Column(
        children: quotes
            .map(
              (q) => QuoteCard(quote: q),
            )
            .toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote? quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote!.text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(quote!.author,
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              )),
          SizedBox(
            height: 10,
          ),
          FlatButton.icon(
              onPressed: () {}, icon: Icon(Icons.delete), label: Text('delete'))
        ],
      ),
    );
  }
}
