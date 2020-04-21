import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('803,752',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'MontSerrat',
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          'Total Cases',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'MontSerrat',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('592,247',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'MontSerrat',
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('Active Cases',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'MontSerrat',
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('172,435',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'MontSerrat',
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('Recovered',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'MontSerrat',
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
