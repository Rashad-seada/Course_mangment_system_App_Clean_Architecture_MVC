import 'dart:async';

Future<List> getFAQ() async{
  List FAQs ;
  FAQs = await Future.delayed(Duration(seconds: 1)).then((value) =>
  [
    {
      "Q" : "How many countries Orange Digital center is in?",
      "A" : "We exist in 48 countries around the world",
    },
    {
      "Q" : "How many countries Orange Digital center is in?",
      "A" : "We exist in 48 countries around the world",
    }

  ]
  );
  return FAQs;
}