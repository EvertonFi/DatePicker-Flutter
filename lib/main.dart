import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ],
    supportedLocales: [Locale("pt", "BR")],
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            icon: Icon(Icons.date_range),
            onPressed: () async {
              final data = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2021),
                locale: Localizations.localeOf(context),
              );

              if (data != null) {
                final datapt =
                    DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br').format(data);

                print(datapt);
              }
              
            }),
      ),
    );
  }
}
